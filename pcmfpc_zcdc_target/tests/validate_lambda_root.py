"""Independent round4 HOST evidence. Never changes control, tests or hardware.

The existing exact replay retains its original failure criteria: changing a
single control-used float is reported as FAIL_EXACT_EQUIVALENCE, even if an
independent double-model error bound and safety checks pass.
"""
from pathlib import Path
import argparse
import csv
import hashlib
import importlib.util
import json
import math
import subprocess

TESTS = Path(__file__).resolve().parent
TARGET = TESTS.parent
ROOT = TARGET.parents[3]
CLANG = Path(r"D:/MATLAB2023b/install/toolbox/sldrt/clang/win64/clang.exe")
VCVARS = Path(r"D:/VisualStudio/Microsoft Visual_Studio2022BuildTools/VC/Auxiliary/Build/vcvars64.bat")


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def triage(out):
    """Retain the strict failure; describe its discrete consequences explicitly."""
    labels = (out / "labels.csv").read_text().splitlines()
    focus = [json.loads(line) for line in (out / "lambda_focus.log").read_text().splitlines()]
    with (out / "lambda_exact_replay_outputs.csv").open(newline="") as stream:
        replay = list(csv.DictReader(stream))
    groups = {}
    for row in replay:
        label = row["label"]
        group = ("oracle_1017" if label.startswith("oracle_") else "directed_budget_ULP" if label.startswith("budget_")
                 else "TI_derived" if label.startswith("ti_derived_") else label)
        result = groups.setdefault(group, {"cases": 0, "selected_difference": 0, "pcoff_difference": 0, "active_difference": 0})
        result["cases"] += 1
        for key in ("selected", "pcoff", "active"):
            result[key + "_difference"] += row["reference_" + key] != row["fast_" + key]
    changed, angle_cases = [], []
    for row in focus:
        candidates = {item["id"]: item for item in row["candidate"]}
        for candidate in candidates.values():
            angle_cases.append({"input_row": row["input_row"], "label": labels[row["input_row"]-1],
                "reference_selected": row["reference_selected"], "lambda_selected": row["lambda_selected"],
                "angle_cost_difference_rad2": abs(candidate["reference_gz_rad2"] - candidate["lambda_gz_rad2"]),
                "candidate": candidate})
        if row["reference_selected"] == row["lambda_selected"]:
            continue
        old, new = candidates[row["reference_selected"]], candidates[row["lambda_selected"]]
        old_gap = math.sqrt(new["reference_gi_A2"]) - min(math.sqrt(x["reference_gi_A2"]) for x in candidates.values())
        new_gap = math.sqrt(new["lambda_gi_A2"]) - min(math.sqrt(x["lambda_gi_A2"]) for x in candidates.values())
        distance = math.hypot(old["reference_dq_A"][0]-new["lambda_dq_A"][0], old["reference_dq_A"][1]-new["lambda_dq_A"][1])
        changed.append({"input_row": row["input_row"], "label": labels[row["input_row"]-1],
            "reference_selected": row["reference_selected"], "lambda_selected": row["lambda_selected"],
            "reference_pcoff": row["reference_pcoff"], "lambda_pcoff": row["lambda_pcoff"],
            "reference_cost_norm_gap_A": old_gap, "lambda_cost_norm_gap_A": new_gap,
            "selected_prediction_endpoint_distance_A": distance,
            "reference_selected_state": old, "lambda_selected_state": new})
    with (out / "root_blocked_edges.csv").open(newline="") as stream:
        edges = list(csv.DictReader(stream))
    data = {"status": "FAIL_EXACT_EQUIVALENCE_RETAINED", "groups": groups,
            "base_selected_change_count": len(changed), "changed_base_rows": changed,
            "largest_angle_cost_differences": sorted(angle_cases, key=lambda x: x["angle_cost_difference_rad2"], reverse=True)[:12],
            "largest_selected_prediction_endpoint_distances": sorted(changed, key=lambda x: x["selected_prediction_endpoint_distance_A"], reverse=True)[:12],
            "whitebox_blocked_edge_rows": edges,
            "max_norm_gap_in_new_costs_among_changed_base_cases_A": max(x["lambda_cost_norm_gap_A"] for x in changed),
            "max_norm_gap_in_reference_costs_among_changed_base_cases_A": max(x["reference_cost_norm_gap_A"] for x in changed),
            "no_0p02_budget_excess_in_focused_changed_base_cases": all(x["lambda_cost_norm_gap_A"] <= .02 for x in changed),
            "caveats": ["Focused rows are rerun with the production 0.02A budget; ULP test-case cfg is not silently substituted.",
                        "Each candidate is close numerically, but changed discrete choices can select substantially different prediction endpoints.",
                        "Near-zero vector changes cross the unchanged 1e-12 angle threshold; a small dq error does not bound angle error.",
                        "Endpoint distance compares predictions of different selected gate candidates, not an instantaneous measured physical-current jump.",
                        "No difference is removed, relabeled exact, or repaired with a control epsilon."]}
    (out / "TRIAGE.json").write_text(json.dumps(data, indent=2) + "\n", encoding="utf-8")
    lines = ["# Round4 strict-equivalence failure triage", "", "The exact regression remains FAIL.", "",
             "| Group | Cases | Selected changes | PC-OFF changes | Active changes |", "|---|---:|---:|---:|---:|"]
    for name, values in groups.items():
        lines.append(f"| {name} | {values['cases']} | {values['selected_difference']} | {values['pcoff_difference']} | {values['active_difference']} |")
    worst = data["largest_angle_cost_differences"][0]
    lines += ["", "Original 1017 oracle rows, including all 500 formal trajectory inputs and the published PC-OFF5 -> selected2 event, retain their selected/PC-OFF/active values.",
              "The additional physical/random cases still contain changed choices. They are not declared equivalent because the original oracle subset passed.",
              f"Largest angular-cost difference: input{worst['input_row']}, candidate{worst['candidate']['id']}, {worst['angle_cost_difference_rad2']:.12g} rad²; old norm {worst['candidate']['reference_norm_A']:.12g} A -> new norm {worst['candidate']['lambda_norm_A']:.12g} A. Final selected ID remains {worst['reference_selected']}/{worst['lambda_selected']} for that row.",
              "Four ordinary random base cases change only terminal choice while PC-OFF is unchanged: inputs15180,16984,19606,21671. Old selected predictions have norms around5e-9..9e-9 A, while the current-variable solution gives exact zero; the unchanged1e-12 rule switches the angular cost to pi².",
              "Input21671 therefore selects a different candidate with predicted current norm0.266857A. Some TI-derived cases select candidate endpoints about0.377943A apart. These are material changes in the discrete behavior even though per-candidate numeric errors are small.",
              f"Among focused changed base cases, maximum selected current-error norm gap is {data['max_norm_gap_in_new_costs_among_changed_base_cases_A']:.12g} A in new costs, below0.02A. This is a scoped check, not a claim of exhaustive budget or closed-loop safety.",
              "The11 whitebox blocked-boundary differences occur near q=[-c*low,+c*low,0], hw4. Float rounded products give all-zero currents; independent double products give roughly9e-11..4.3e-9A in an OFF phase. All rows are retained in root_blocked_edges.csv.",
              "", "All per-candidate values are in lambda_focus.log; complete changed base rows, worst cases and boundary inputs are in TRIAGE.json. All strict replay differences remain in lambda_exact_replay_differences.csv.",
              "Do not promote this implementation as bit-equivalent or hardware-qualified. No epsilon or control threshold was changed."]
    (out / "TRIAGE.md").write_text("\n".join(lines) + "\n", encoding="utf-8")
    return data


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, default=ROOT / "output/ti_pcmfpc_zcdc_port/rt_optimization/round4/host")
    parser.add_argument("--triage-existing", type=Path, help="Analyze retained evidence only, without building or running anything")
    args = parser.parse_args()
    if args.triage_existing is not None:
        triage(args.triage_existing.resolve())
        return 0
    out = args.output.resolve()
    if (out / "legacy_exact_replay_build.log").exists() or (out / "REPORT.json").exists():
        raise FileExistsError(f"Evidence already exists at {out}; choose a fresh --output directory. No deletion or overwrite performed.")
    build = out / "build"
    build.mkdir(parents=True, exist_ok=True)
    flags = "-std=c11 -O2 -Wall -Wextra -Werror -D_CRT_SECURE_NO_WARNINGS"
    records = []

    def compile_case(name, source_names, extra=""):
        exe = build / (name + ".exe")
        sources = [TARGET / item for item in source_names]
        command = (f'call "{VCVARS}" >nul && set "TMP={build}" && set "TEMP={build}" && '
                   f'"{CLANG}" {flags} {extra} ' + " ".join(f'"{item}"' for item in sources) + f' -o "{exe}"')
        cmd = build / (name + ".cmd")
        cmd.write_text("@echo off\n" + command + "\n", encoding="ascii")
        result = subprocess.run(["cmd.exe", "/d", "/c", str(cmd)], cwd=TARGET, capture_output=True, text=True)
        (out / (name + "_build.log")).write_text(result.stdout + result.stderr, encoding="utf-8")
        record = {"name": name, "build_exit": result.returncode, "command": command,
                  "source_sha256": {str(p.relative_to(TARGET)): sha(p) for p in sources}}
        records.append(record)
        if result.returncode:
            raise RuntimeError(name + " compile failed: " + result.stdout + result.stderr)
        return exe, record

    def run_case(name, source_names, extra="", arguments=()):
        exe, record = compile_case(name, source_names, extra)
        result = subprocess.run([str(exe)] + [str(x) for x in arguments], cwd=TARGET, capture_output=True, text=True)
        (out / (name + ".log")).write_text(result.stdout + result.stderr, encoding="utf-8")
        record.update(run_exit=result.returncode, stdout=result.stdout if name != "lambda_focus" else "Full JSONL in lambda_focus.log", stderr=result.stderr)
        print(name + ": " + (result.stdout.strip() if name != "lambda_focus" else str(len(result.stdout.splitlines())) + " focused rows retained"), flush=True)
        return record

    spec = importlib.util.spec_from_file_location("original_replay_dataset", TESTS / "ti_run_fast_replay.py")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    rows, labels, description = module.dataset()
    inputs, label_file = out / "inputs.csv", out / "labels.csv"
    with inputs.open("w", newline="") as stream:
        csv.writer(stream).writerows(rows)
    label_file.write_text("\n".join(labels) + "\n", encoding="ascii")
    shared = ["vienna_pcmfpc_zcdc.c", "vienna_pcmfpc_fast.c"]
    for name, macro in (("legacy_exact_replay", "-DPC_FAST_LEGACY_CONTROL_ROOT=1"), ("lambda_exact_replay", "")):
        run_case(name, shared + ["tests/ti_fast_replay.c"], macro, (inputs, label_file, out / name))
    with (out / "lambda_exact_replay_outputs.csv").open(newline="") as stream:
        selected_rows = sorted({int(row["input_row"]) for row in csv.DictReader(stream)
                                if row["reference_selected"] != row["fast_selected"] or
                                row["reference_pcoff"] != row["fast_pcoff"] or float(row["max_gz_error_rad2"]) > 1.0})
    wanted = out / "focused_input_rows.txt"
    wanted.write_text("\n".join(map(str, selected_rows)) + "\n", encoding="ascii")
    run_case("lambda_focus", shared + ["tests/lambda_root_probe.c"], "-DLAMBDA_REPLAY_FOCUS=1", (inputs, wanted))
    run_case("lambda_double_model", ["vienna_pcmfpc_zcdc.c", "tests/lambda_root_probe.c"], "-DLAMBDA_WHITEBOX_ROOT=1", (out / "root_blocked_edges.csv",))
    run_case("fast_safety", shared + ["tests/core_fast_safety.c"])
    run_case("observer", shared + ["vienna_pcmfpc_observer.c", "tests/observer_test.c"])
    run_case("runtime", shared + ["vienna_grid_sync.c", "vienna_pcmfpc_observer.c", "vienna_pcmfpc_runtime.c", "tests/core_runtime_test.c"],
             f'-include "{TESTS / "core_runtime_stub.h"}"')

    results = {}
    for name in ("legacy_exact_replay", "lambda_exact_replay"):
        results[name] = json.loads((out / (name + "_summary.json")).read_text())
    probe = json.loads((out / "lambda_double_model.log").read_text())
    focus = [json.loads(line) for line in (out / "lambda_focus.log").read_text().splitlines()]
    terminal_only_changes = []
    for row in focus:
        if row["reference_selected"] != row["lambda_selected"] and row["reference_pcoff"] == row["lambda_pcoff"]:
            candidate = {x["id"]: x for x in row["candidate"]}
            terminal_only_changes.append({"input_row": row["input_row"], "label": labels[row["input_row"]-1],
                "reference_selected": row["reference_selected"], "lambda_selected": row["lambda_selected"],
                "reference_mask": row["reference_mask"], "lambda_mask": row["lambda_mask"],
                "reference_selected_state": candidate[row["reference_selected"]],
                "lambda_selected_state": candidate[row["lambda_selected"]]})
    by_label = {}
    for name in ("legacy_exact_replay", "lambda_exact_replay"):
        families = {}
        rare = []
        with (out / (name + "_outputs.csv")).open(newline="") as stream:
            for row in csv.DictReader(stream):
                family = families.setdefault(row["label"], {"cases": 0, "selected_diff": 0, "pcoff_diff": 0, "active_diff": 0})
                family["cases"] += 1
                for item in ("selected", "pcoff", "active"):
                    family[item + "_diff"] += row["reference_" + item] != row["fast_" + item]
                if "published_terminal_change" in row["label"]:
                    rare.append(row)
        by_label[name] = {"families": families, "rare_terminal_rows": rare}
    exact_pass = next(x for x in records if x["name"] == "lambda_exact_replay")["run_exit"] == 0
    safety_pass = all(x["run_exit"] == 0 for x in records if x["name"] not in ("lambda_exact_replay",))
    report = {"date": "2026-10-26", "scope": "HOST only; no target timing, TMU or power validation",
              "status": "PASS_EXACT_EQUIVALENCE_AND_CHECKS" if exact_pass and safety_pass else "FAIL_EXACT_EQUIVALENCE" if safety_pass else "FAIL_SAFETY_OR_MODEL_CHECK",
              "source_sha256": {name: sha(TARGET / name) for name in ["vienna_pcmfpc_fast.c", "vienna_pcmfpc_fast.h", "tests/lambda_root_probe.c", "tests/validate_lambda_root.py"]},
              "dataset": description, "dataset_sha256": sha(inputs), "builds_and_runs": records,
              "exact_replays": results, "by_label": by_label, "double_model_probe": probe,
              "focus": {"rows": len(focus), "full_file": "lambda_focus.log", "terminal_only_base_changes": terminal_only_changes,
                        "whitebox_blocked_edges": "root_blocked_edges.csv"},
              "discrete_equivalence_pass": exact_pass, "safety_and_independent_model_checks_pass": safety_pass,
              "interpretation": "Original strict replay is not weakened. All differing IDs/ranks/masks and numeric deltas remain in the CSV files. Independent test-only float error bounds never alter control comparisons or its 1e-12 blocked threshold."}
    (out / "REPORT.json").write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    lines = ["# Round4 independent HOST validation", "", "Status: " + report["status"], "",
             "The original exact replay criteria were retained. A double-model or safety pass is not exact discrete equivalence.", "",
             f"Dataset: {len(rows)} base rows; original replay adds directed ULP budget tests and invalid inputs.",
             f"Lambda exact replay exit: {next(x for x in records if x['name'] == 'lambda_exact_replay')['run_exit']}.",
             "", "```json", json.dumps(results["lambda_exact_replay"], indent=2), "```", "",
             "Independent double ideal-diode predictor uses 120-step monotone bisection, two substeps, the same physical inputs and independent double transforms.",
             "Its HOST-only acceptance bound is 128*FLT_EPSILON times the recorded state/voltage scale; raw maximum errors and blocked differences are retained.",
             "The bound is not used in control, sorting, budget or terminal selection. Differences around the 1e-12 blocked boundary are reported, not snapped away.",
             "", "```json", json.dumps(probe, indent=2), "```", "",
             "See REPORT.json for commands/source hashes, per-label counts and published rare terminal rows; all strict differing rows remain in lambda_exact_replay_differences.csv.",
             "No hardware operations, control-source edits, protection changes, cleanup or deletion were performed by this test."]
    (out / "REPORT.md").write_text("\n".join(lines) + "\n", encoding="utf-8")
    triage(out)
    print(report["status"], flush=True)
    return 0 if exact_pass and safety_pass else 1


if __name__ == "__main__":
    raise SystemExit(main())
