"""Actual fast-controller closed-loop regression against committed44f0ec5.

The one independent abc plant is retained. Only its explicit compile-time
controller dispatch differs. No IDE, target, cleaning or hardware operation.
"""
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path
import csv
import hashlib
import json
import subprocess
import time

TESTS = Path(__file__).resolve().parent
TARGET = TESTS.parent
ROOT = TARGET.parents[3]
OUT = ROOT / "output/ti_pcmfpc_zcdc_port/rt_optimization/round2/closed_loop"
BUILD = TESTS / "observer_build"
CLANG = Path("D:/MATLAB2023b/install/toolbox/sldrt/clang/win64/clang.exe")
VCVARS = Path("D:/VisualStudio/Microsoft Visual_Studio2022BuildTools/VC/Auxiliary/Build/vcvars64.bat")
SHARED = ["vienna_pcmfpc_zcdc.c", "vienna_pcmfpc_observer.c", "vienna_grid_sync.c", "tests/ti_closed_loop.c"]


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    BUILD.mkdir(exist_ok=True)
    old_bytes = subprocess.check_output(["git", "show", "44f0ec5:pcmfpc_zcdc_target/vienna_pcmfpc_fast.c"], cwd=TARGET.parent)
    old_source = BUILD / "fast_baseline_44f0ec5.c"
    old_source.write_bytes(old_bytes.replace(b'#include "vienna_pcmfpc_fast.h"', b'#include "../../vienna_pcmfpc_fast.h"'))
    flags = "-std=c99 -O2 -Wall -Wextra -Werror -D_CRT_SECURE_NO_WARNINGS"
    builds = {}
    for implementation, fast_source, macro in (
        ("committed_fast", old_source, 1),
        ("optimized_fast", TARGET / "vienna_pcmfpc_fast.c", 1),
        ("default_readable", TARGET / "vienna_pcmfpc_fast.c", 0),
    ):
        exe = BUILD / f"ti_closed_loop_{implementation}.exe"
        sources = [TARGET / name for name in SHARED] + [fast_source]
        command = (f'call "{VCVARS}" >nul && set "TMP={BUILD}" && set "TEMP={BUILD}" && '
                   f'"{CLANG}" {flags} -DTI_CLOSED_LOOP_FAST={macro} ' +
                   " ".join(f'"{name}"' for name in sources) + f' -o "{exe}"')
        command_file = BUILD / f"build_closed_loop_{implementation}.cmd"
        command_file.write_text("@echo off\n" + command + "\n", encoding="ascii")
        result = subprocess.run(["cmd.exe", "/d", "/c", str(command_file)], cwd=TARGET, capture_output=True, text=True)
        (OUT / f"build_{implementation}.log").write_text(result.stdout + result.stderr, encoding="utf-8")
        if result.returncode:
            raise RuntimeError(result.stdout + result.stderr)
        builds[implementation] = {"executable": str(exe), "command": command,
                                  "source_sha256": {str(path): sha(path) for path in sources},
                                  "controller_macro": macro}

    # Physical plant, observer and all shared conditions are identical in each
    # old/new pair. Keep separated scenarios rather than merging stresses.
    conditions = [("nominal_50ohm", 50, 0, 0), ("L_R_noise_50ohm", 50, 1, 0),
                  ("adc_early_1us", 50, 0, 1), ("device_drops", 50, 0, 2),
                  ("load_100_50_100ohm", 100, 0, 3)]
    cases = [(f"pc_{'off' if mode == 1 else 'on'}_{label}", mode, load, noise, scenario)
             for label, load, noise, scenario in conditions for mode in (1, 2)]
    started = time.perf_counter()

    def run(implementation, case):
        label, mode, load, noise, scenario = case
        prefix = OUT / f"{implementation}_{label}"
        result = subprocess.run([builds[implementation]["executable"], str(mode), str(load), str(noise), str(prefix), str(scenario)],
                                cwd=TARGET, capture_output=True, text=True)
        prefix.with_suffix(".log").write_text(result.stdout + result.stderr, encoding="utf-8")
        if result.returncode:
            raise RuntimeError(str(prefix) + ": " + result.stdout + result.stderr)
        print(implementation + " " + label + ": " + result.stdout.strip(), flush=True)
        return implementation, label, json.loads(prefix.with_suffix(".json").read_text())

    results = {}
    with ThreadPoolExecutor(max_workers=3) as pool:
        for future in as_completed([pool.submit(run, implementation, case) for case in cases
                                    for implementation in ("committed_fast", "optimized_fast")]):
            implementation, label, values = future.result()
            results[(implementation, label)] = values

    comparisons = []
    for label, mode, load, noise, scenario in cases:
        old, new = results[("committed_fast", label)], results[("optimized_fast", label)]
        metrics = {key: {"committed": old.get(key), "optimized": new.get(key)} for key in old.keys() | new.keys()
                   if old.get(key) != new.get(key)}
        a, b = OUT / f"committed_fast_{label}.csv", OUT / f"optimized_fast_{label}.csv"
        with a.open(newline="") as fa, b.open(newline="") as fb:
            old_rows, new_rows = list(csv.DictReader(fa)), list(csv.DictReader(fb))
        changed = [k + 1 for k, (x, y) in enumerate(zip(old_rows, new_rows)) if x != y]
        comparison = {"case": label, "mode": mode, "load_ohm": load, "sensitivity": noise, "scenario": scenario,
                      "metric_differences": metrics, "committed_trace_rows": len(old_rows), "optimized_trace_rows": len(new_rows),
                      "differing_trace_rows": changed, "CSV_sha256_identical": sha(a) == sha(b),
                      "optimized_metrics": new}
        comparisons.append(comparison)

    # Default macro0 remains the prior readable bisection32 model. Recheck one
    # existing case so adding a fast test option does not rewrite old behavior.
    _, _, default = run("default_readable", ("pc_on_50ohm_regression", 2, 50, 0, 0))
    original = json.loads((ROOT / "output/ti_pcmfpc_zcdc_port/hardware_sim/pc_on_50ohm.json").read_text())
    default_diffs = {key: {"original": original[key], "new": default.get(key)} for key in original
                     if original[key] != default.get(key)}
    original_csv = ROOT / "output/ti_pcmfpc_zcdc_port/hardware_sim/pc_on_50ohm.csv"
    default_csv = OUT / "default_readable_pc_on_50ohm_regression.csv"
    with original_csv.open(newline="") as a, default_csv.open(newline="") as b:
        original_rows, default_rows = list(csv.DictReader(a)), list(csv.DictReader(b))
    default_trace_diff = [k + 1 for k, (a, b) in enumerate(zip(original_rows, default_rows))
                          if any(a[key] != b.get(key) for key in a)]
    default_check = {"metric_differences": default_diffs, "CSV_sha256_identical": sha(original_csv) == sha(default_csv),
                     "original_trace_rows": len(original_rows), "new_trace_rows": len(default_rows),
                     "common_field_differing_rows": default_trace_diff,
                     "additional_columns": sorted(default_rows[0].keys() - original_rows[0].keys()),
                     "column_scope": "The prior extended-plant version already added actual_load_ohm and actual_ADC_shift_us; compare every original field exactly, retain new diagnostic columns explicitly."}
    passed = not default_diffs and not default_trace_diff and len(original_rows) == len(default_rows) and all(
        not case["metric_differences"] and not case["differing_trace_rows"] and case["CSV_sha256_identical"] and
        case["committed_trace_rows"] == case["optimized_trace_rows"] for case in comparisons)
    report = {"date": "2026-10-25", "baseline_commit": "44f0ec5", "compiler": str(CLANG), "flags": flags,
              "builds": builds, "committed_fast_original_sha256": hashlib.sha256(old_bytes).hexdigest(),
              "compiled_snapshot_adjustment": "Only old source include path rewritten for ignored host build location; controller math unchanged.",
              "elapsed_s": time.perf_counter() - started, "closed_loop_pairs": comparisons,
              "default_readable_regression": default_check, "status": "PASS" if passed else "FAIL",
              "scope": "Same independent double abc physical plant, full actual fast controller and model-integral ESO. Host assumes computation finishes on time; no target WCET/TMU/hardware proof.",
              "shared_conditions": {"L_H": 0.003, "R_ohm": 0.2, "half_C_F": 440e-6, "control_s": 20e-6,
                                    "first_prediction_s": 10e-6, "physical_step_s": 0.5e-6, "duration_s": 0.8,
                                    "steady_window_s": [0.6, 0.8], "line_RMS_V": 100, "grid_Hz": 50, "bus_reference_V": 170}}
    (OUT / "REPORT.json").write_text(json.dumps(report, indent=2), encoding="utf-8")
    lines = ["# Actual fast closed-loop optimization regression", "",
             "Two actual fast controller builds, one independent small-step abc physical plant; no hardware actions.",
             "Compile macro TI_CLOSED_LOOP_FAST=1 selects PC_ROOT_PIECEWISE + PC_run_fast. The default0 readable bisection32 path is unchanged.",
             "Committed44f0ec5 fast source is read by git show and compiled separately. No copied controller is used as a plant.", "",
             "| Case | Old/new trace rows | Changed rows | Metric differences | Byte-identical CSV | Tracking RMS A | NP RMS V |",
             "|---|---:|---:|---:|---|---:|---:|"]
    for case in comparisons:
        values = case["optimized_metrics"]
        lines.append(f'| {case["case"]} | {case["committed_trace_rows"]}/{case["optimized_trace_rows"]} | '
                     f'{len(case["differing_trace_rows"])} | {len(case["metric_differences"])} | {case["CSV_sha256_identical"]} | '
                     f'{values["tracking_RMS_A"]:.9f} | {values["np_RMS_V"]:.9f} |')
    lines += ["", f"Default readable regression: {default_check}.", f"Overall: {report['status']}.",
              "Every case keeps common PLL/ESO, outer loop, reference limit, hardware assumptions and sampling. Nonideal devices and timing stresses are model approximations.",
              "Dynamic-load steady THD is measured after returning to100ohm, not directly comparable with50ohm nominal steady THD.",
              "Fast pole-integral diagnostics are intentionally unavailable; executed-gate ESO still uses FULL_SUBSTEPS intervals.",
              "All host cases assume computation finishes on time. Identical trajectories do not demonstrate target8.14us/20us timing or real-board electrical capability.",
              "Full metrics/hashes/commands/raw traces in REPORT.json and adjacent explicitly named CSV/JSON/logs."]
    (OUT / "REPORT.md").write_text("\n".join(lines) + "\n", encoding="utf-8")
    if not passed:
        raise RuntimeError(f"Closed-loop optimization regression failed; all evidence retained at {OUT}")
    print(f"PASS: {len(comparisons)} closed-loop old/new pairs and default readable regression; {OUT}", flush=True)


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, help="Separate evidence directory for this optimization pass")
    arguments = parser.parse_args()
    if arguments.output is not None:
        OUT = arguments.output.resolve()
    main()
