"""Independent reproducible float32 fast/reference differential replay; no hardware I/O."""
from pathlib import Path
import csv
import hashlib
import json
import math
import random
import subprocess
import time
from collections import Counter

TESTS = Path(__file__).resolve().parent
TARGET = TESTS.parent
ROOT = Path(__file__).resolve().parents[5]
OUT = ROOT / "output/ti_pcmfpc_zcdc_port/fast_replay"
SOURCE_OUT = ROOT / "output/ti_pcmfpc_zcdc_port"
BUILD = TESTS / "observer_build"
CLANG = Path(r"D:/MATLAB2023b/install/toolbox/sldrt/clang/win64/clang.exe")
VCVARS = Path(r"D:/VisualStudio/Microsoft Visual_Studio2022BuildTools/VC/Auxiliary/Build/vcvars64.bat")
SOURCES = ["vienna_pcmfpc_zcdc.c", "vienna_pcmfpc_fast.c", "tests/ti_fast_replay.c"]
OMEGA = 2 * math.pi * 50
PHASES = (0, -2 * math.pi / 3, 2 * math.pi / 3)


def abc(d, q, theta):
    return [d * math.cos(theta + p) - q * math.sin(theta + p) for p in PHASES]


def make_row(theta, i_d, i_q, reference, gate, *, up=85, low=85, ed=100 * math.sqrt(2 / 3),
             eq=0, fhat=None, zcdc=1, terminal=1, omega=OMEGA, delta=0.02):
    theta %= 2 * math.pi
    if fhat is None:
        fhat = ((ed - 0.2 * i_d) / 0.003 + omega * i_q,
                (eq - 0.2 * i_q) / 0.003 - omega * i_d)
    return abc(i_d, i_q, theta) + abc(ed, eq, theta) + [up, low, reference, 0, theta, omega] + list(fhat) + [
        gate, zcdc, terminal, 10e-6, 20e-6, 0.003, 0.2, 440e-6, delta, math.pi / 18]


def dataset():
    """Retain every original oracle row, then add distinctly labeled stress inputs."""
    rows, labels = [], []
    provenance = {}

    def add(row, label):
        assert len(row) == 24
        rows.append(row)
        labels.append(label)

    original_labels = (SOURCE_OUT / "oracle_labels.csv").read_text().splitlines()
    with (SOURCE_OUT / "oracle_inputs.csv").open(newline="") as source:
        for row, label in zip(csv.reader(source), original_labels, strict=True):
            values = [float(v) for v in row]
            values[10] %= 2 * math.pi  # DOUBLE wrapping precedes float32 conversion, as in the PLL.
            add(values, "oracle_bounded_" + label)
    provenance["oracle"] = "All 1017 original numeric input rows; theta alone wrapped in double before float32 casting. Original data untouched."
    for source in sorted((SOURCE_OUT / "hardware_sim").glob("*.csv")):
        if source.stem.endswith("_differences"):
            continue
        with source.open(newline="") as stream:
            for k, row in enumerate(csv.DictReader(stream)):
                if k % 12 or not int(row["enabled"]) or int(row["trip"]):
                    continue
                t = float(row["t_s"])
                theta = float(row["theta_rad"]) % (2 * math.pi)
                grid_theta = OMEGA * t - math.atan(OMEGA * 6.8e-6)
                iabc = [float(row[f"i{p}_A"]) for p in "abc"]
                eabc = abc(100 * math.sqrt(2 / 3), 0, grid_theta)
                values = iabc + eabc + [float(row["up_V"]), float(row["low_V"]), float(row["idref_used_A"]),
                    0, theta, float(row["omega_rad_s"]), float(row["Fd_A_s"]), float(row["Fq_A_s"]),
                    int(row["gate"]), 1, 1, 10e-6, 20e-6, 0.003, 0.2, 440e-6, 0.02, math.pi / 18]
                add(values, "ti_derived_" + source.stem)
    provenance["TI_derived"] = "Every 12th enabled record from all nine independent closed-loop CSVs; currents/caps/PLL/Fhat/gate/ref reused. Grid voltage reconstructed from ideal 100V line RMS grid and assumed RC phase, because the CSV does not contain eabc. These are same-input replay stimuli, not exact captured ISR input records."
    random_source = random.Random(20261025)
    for k in range(12000):
        theta = random_source.uniform(0, 2 * math.pi)
        i_d, i_q = random_source.uniform(-6, 6), random_source.uniform(-2, 2)
        ed, eq = random_source.uniform(60, 110), random_source.uniform(-5, 5)
        omega = random_source.uniform(2 * math.pi * 40, 2 * math.pi * 70)
        fhat = ((ed - 0.2 * i_d) / 0.003 + omega * i_q + random_source.uniform(-2000, 2000),
                (eq - 0.2 * i_q) / 0.003 - omega * i_d + random_source.uniform(-2000, 2000))
        add(make_row(theta, i_d, i_q, random_source.uniform(-0.2, 5.5), k % 8,
                     up=random_source.uniform(50, 125), low=random_source.uniform(50, 125), ed=ed, eq=eq,
                     omega=omega, fhat=fhat, zcdc=int(k % 19 != 0), terminal=int(k % 23 != 0)), "random_bounded_physical")
    for gate in range(8):
        for sector in range(12):
            theta = sector * math.pi / 6
            for i_d in (0, 1e-12, -1e-12, 0.05999999, 0.06000001, 0.09999999, 0.10000001, 2, 5.5):
                for enabled in (0, 1):
                    add(make_row(theta, i_d, 0, max(0.1, i_d), gate, fhat=(0, 0), zcdc=enabled,
                                 ed=0, up=85, low=85), "structured_flat_and_blocking")
    for gate in range(8):
        for sector in range(6):
            for epsilon in (-1e-6, -1e-8, 0, 1e-8, 1e-6):
                theta = math.pi / 2 + sector * math.pi / 3 + epsilon
                for up, low in ((70, 100), (85, 85), (100, 70)):
                    add(make_row(theta, 5, 0.001, 5, gate, up=up, low=low), "structured_phase_zero_and_np")
    for k in range(32):
        add(make_row(k * math.pi / 16, 0, 0, 0, k % 8, ed=0, fhat=(0, 0), omega=0,
                     delta=0), "structured_exact_ties")
    counts = dict(Counter(labels))
    return rows, labels, {"source_families": provenance, "base_cases": len(rows), "labels": counts,
                          "random_seed": 20261025, "production_delta_i_A": 0.02,
                          "directed_budget_boundaries": "C harness adds one float ULP below/exact/above second-ranked current norm gap for every 11th valid base row. These altered delta budgets are test cases only; target parameter is not changed."}


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    BUILD.mkdir(parents=True, exist_ok=True)
    rows, labels, description = dataset()
    with (OUT / "inputs.csv").open("w", newline="") as stream:
        csv.writer(stream).writerows(rows)
    (OUT / "labels.csv").write_text("\n".join(labels) + "\n", encoding="ascii")
    exe = BUILD / "ti_fast_replay.exe"
    flags = "-std=c11 -O2 -Wall -Wextra -Werror -D_CRT_SECURE_NO_WARNINGS"
    command = (f'call "{VCVARS}" >nul && set "TMP={BUILD}" && set "TEMP={BUILD}" && '
               f'"{CLANG}" {flags} ' + " ".join(f'"{TARGET / s}"' for s in SOURCES) + f' -o "{exe}"')
    cmd = BUILD / "build_ti_fast_replay.cmd"
    cmd.write_text("@echo off\n" + command + "\n", encoding="ascii")
    built = subprocess.run(["cmd.exe", "/d", "/c", str(cmd)], cwd=TARGET, capture_output=True, text=True)
    (OUT / "build.log").write_text(built.stdout + built.stderr, encoding="utf-8")
    if built.returncode:
        raise RuntimeError(built.stdout + built.stderr)
    started = time.perf_counter()
    result = subprocess.run([str(exe), str(OUT / "inputs.csv"), str(OUT / "labels.csv"), str(OUT / "replay")],
                            cwd=TARGET, capture_output=True, text=True)
    (OUT / "run.log").write_text(result.stdout + result.stderr, encoding="utf-8")
    print(result.stdout, flush=True)
    manifest = {"date": "2026-10-25", "compiler": str(CLANG), "flags": flags, "build_command": command,
                "run_exit_code": result.returncode, "elapsed_s": time.perf_counter() - started,
                "dataset": description,
                "source_sha256": {s: hashlib.sha256((TARGET / s).read_bytes()).hexdigest()
                                  for s in SOURCES + ["vienna_pcmfpc_zcdc.h", "vienna_pcmfpc_fast.h", "tests/ti_run_fast_replay.py"]},
                "input_sha256": hashlib.sha256((OUT / "inputs.csv").read_bytes()).hexdigest(),
                "reference": "Original readable PC_run, float32, PC_ROOT_PIECEWISE, diagnostic_all_angles=1",
                "comparison": "Fast path receives identical cfg/input. Baseline bisection32 differences are reported separately.",
                "scope": "Host arithmetic/compiler regression only; not DSP TMU numeric equivalence, runtime proof, hardware loop validation or exhaustive mathematical equivalence."}
    summary = json.loads((OUT / "replay_summary.json").read_text())
    manifest["results"] = summary
    by_label = {}
    terminal_rows = []
    with (OUT / "replay_outputs.csv").open(newline="") as stream:
        for row in csv.DictReader(stream):
            label = row["label"]
            counts = by_label.setdefault(label, {"rows": 0, "fast_selected_diff": 0, "fast_pcoff_diff": 0,
                                                "bisection_selected_diff": 0, "bisection_pcoff_diff": 0,
                                                "bisection_active_diff": 0})
            counts["rows"] += 1
            for field in ("selected", "pcoff"):
                counts[f"fast_{field}_diff"] += row[f"reference_{field}"] != row[f"fast_{field}"]
                counts[f"bisection_{field}_diff"] += row[f"reference_{field}"] != row[f"bisection_{field}"]
            counts["bisection_active_diff"] += row["reference_active"] != row["bisection_active"]
            if "published_terminal_change" in label:
                terminal_rows.append(row)
    manifest["results_by_label"] = by_label
    manifest["published_terminal_change_rows"] = terminal_rows
    with (OUT / "replay_differences.csv").open(newline="") as stream:
        diffs = list(csv.DictReader(stream))
    near_tie, budget_boundary, other = 0, 0, 0
    for d in diffs:
        if d["label"].startswith("budget_boundary"):
            budget_boundary += 1
        elif abs(float(d["fast_minus_ref_gi_in_ref_cost"])) <= 2 * float(d["max_gi_error_A2"]) and float(d["max_gi_error_A2"]) > 0:
            near_tie += 1
        else:
            other += 1
    manifest["difference_triage"] = {"directed_budget_boundary_rows": budget_boundary,
                                    "reference_cost_gap_within_numeric_gi_error_rows": near_tie,
                                    "other_rows_require_review": other,
                                    "meaning": "Triage only. No difference row is silently removed or declared semantically safe."}
    (OUT / "manifest.json").write_text(json.dumps(manifest, indent=2), encoding="utf-8")
    report = ["# Independent fast-path differential replay", "",
              f"{summary['cases']} cases, including {description['base_cases']} base cases plus directed ULP budget boundaries and invalid-input/config checks.",
              "", "Readable reference and optimized implementation both use float32 piecewise roots and identical inputs. Bisection32 is an additional comparator.", "",
              f"Fast/reference: selected differences {summary['selected_difference']}; PC-OFF differences {summary['pcoff_difference']}; active differences {summary['active_difference']}; current/midpoint ordering differences {summary['rank_i_difference']}/{summary['rank_u_difference']}; set differences {summary['set_difference']}; status differences {summary['status_difference']}.",
              f"Maximum numeric differences: gi {summary['max_gi_error_A2']:.12g} A²; gu {summary['max_gu_error_V2']:.12g} V²; gz {summary['max_gz_error_rad2']:.12g} rad²; dq {summary['max_dq_error_A']:.12g} A; midpoint {summary['max_np_error_V']:.12g} V; interval integral {summary['max_interval_integral_error_V_s']:.12g} V·s.",
              f"FULL_SUBSTEPS direct interval calls: {summary['full_interval']['calls']}; status/numeric/discrete differences {summary['full_interval']['status_difference']}/{summary['full_interval']['numeric_difference_rows']}/{summary['full_interval']['discrete_difference_rows']}.",
              f"Availability flag errors: {summary['availability_flag_errors']}; unavailable-substep marker errors: {summary['unavailable_marker_errors']}; unsafe invalid-input outputs: {summary['fast_unsafe_error_outputs']}.",
              f"Deliberate safety extension: finite but impossible R=L=FLT_MAX produces readable-reference status{summary['extreme_derived_numeric_guard']['readable_reference_status']} with a nonfinite voltage margin; optimized status{summary['extreme_derived_numeric_guard']['fast_status']} safely rejects derived overflow. This case is listed separately from normal-domain equivalence.",
              "", "Detailed substeps from PC_run_fast are intentionally unavailable. Direct PC_fast_predict_interval(FULL_SUBSTEPS) is independently compared against the original interval predictor, including projected poles/rotation and every named substep field.",
              "Original oracle angles are wrapped in double before float32 conversion. Original oracle CSVs are not modified.",
              "TI-derived rows reuse controller-state traces but reconstruct ideal grid eabc; they do not claim exact captured ISR input replay.",
              f"Separate bisection32 vs piecewise comparison: selected differences{summary['bisection32_vs_piecewise_reference']['selected_difference']}, PC-OFF differences{summary['bisection32_vs_piecewise_reference']['pcoff_difference']}, active differences{summary['bisection32_vs_piecewise_reference']['active_difference']}. Strong exact-tie and one-ULP budget stress cases are deliberately included. These are pre-existing root-method differences, not optimized-versus-readable-piecewise differences; all per-label counts and per-row IDs are retained.",
              "All changed rows are retained in replay_differences.csv. ULP budget changes are stress tests only, never target parameter changes.",
              "This test does not prove target deadline, TMU arithmetic, exhaustive equivalence, or real-board stability.", "",
              "See manifest.json for source/input hashes, dataset labels, triage, compiler and complete summary."]
    (OUT / "REPORT.md").write_text("\n".join(report) + "\n", encoding="utf-8")
    if result.returncode:
        raise RuntimeError(f"Replay returned {result.returncode}; evidence retained in {OUT}")


if __name__ == "__main__":
    main()
