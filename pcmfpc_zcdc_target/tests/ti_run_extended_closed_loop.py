"""Run separated ADC timing, device-drop and reversible-load host scenarios.

Uses the existing independent plant entry point. Existing nine scenario CSVs
and results are read only. No target control file or hardware is touched.
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
ROOT = Path(__file__).resolve().parents[5]
OUT = ROOT / "output/ti_pcmfpc_zcdc_port/hardware_sim_extended"
BASE = ROOT / "output/ti_pcmfpc_zcdc_port/hardware_sim"
BUILD = TESTS / "observer_build"
CLANG = Path(r"D:/MATLAB2023b/install/toolbox/sldrt/clang/win64/clang.exe")
VCVARS = Path(r"D:/VisualStudio/Microsoft Visual_Studio2022BuildTools/VC/Auxiliary/Build/vcvars64.bat")
SOURCES = ["vienna_pcmfpc_zcdc.c", "vienna_pcmfpc_fast.c", "vienna_pcmfpc_observer.c",
           "vienna_grid_sync.c", "tests/ti_closed_loop.c"]


def trace(prefix):
    with prefix.with_suffix(".csv").open(newline="") as stream:
        return [{key: float(value) for key, value in row.items()} for row in csv.DictReader(stream)]


def recovery(rows, event, stop):
    window = [row for row in rows if event <= row["t_s"] < stop]
    bus = [row["up_V"] + row["low_V"] for row in window]
    last_outside = -1
    for k, voltage in enumerate(bus):
        if abs(voltage - 170) > 3.4:
            last_outside = k
    candidate = last_outside + 1
    settle = None
    if candidate < len(window) and stop - window[candidate]["t_s"] >= 0.020:
        settle = window[candidate]["t_s"] - event
    return {"event_s": event, "measurement_stop_s": stop, "bus_min_V": min(bus), "bus_max_V": max(bus),
            "settling_2percent_s": settle, "settling_definition": "last excursion beyond170V±3.4V, followed by at least20ms and no later excursion in this window; 5kHz diagnostic CSV before0.6s",
            "reference_peak_A": max(row["idref_A"] for row in window),
            "sampled_peak_current_A": max(abs(row[f"i{phase}_A"]) for row in window for phase in "abc"),
            "reference_saturated_fraction_in_CSV": sum(row["ref_saturated"] for row in window) / len(window),
            "trip_seen": any(row["trip"] for row in window)}


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    BUILD.mkdir(parents=True, exist_ok=True)
    exe = BUILD / "ti_closed_loop_extended.exe"
    flags = "-std=c99 -O2 -Wall -Wextra -Werror -D_CRT_SECURE_NO_WARNINGS"
    command = (f'call "{VCVARS}" >nul && set "TMP={BUILD}" && set "TEMP={BUILD}" && '
               f'"{CLANG}" {flags} ' + " ".join(f'"{TARGET / source}"' for source in SOURCES) + f' -o "{exe}"')
    cmd = BUILD / "build_ti_closed_loop_extended.cmd"
    cmd.write_text("@echo off\n" + command + "\n", encoding="ascii")
    build = subprocess.run(["cmd.exe", "/d", "/c", str(cmd)], cwd=TARGET, capture_output=True, text=True)
    (OUT / "build.log").write_text(build.stdout + build.stderr, encoding="utf-8")
    if build.returncode:
        raise RuntimeError(build.stdout + build.stderr)

    def run(label, mode, load, scenario):
        prefix = OUT / label
        result = subprocess.run([str(exe), str(mode), str(load), "0", str(prefix), str(scenario)],
                                cwd=TARGET, capture_output=True, text=True)
        (OUT / f"{label}.log").write_text(result.stdout + result.stderr, encoding="utf-8")
        if result.returncode:
            raise RuntimeError(label + ": " + result.stdout + result.stderr)
        data = json.loads(prefix.with_suffix(".json").read_text())
        data["case"] = label
        if scenario == 3:
            rows = trace(prefix)
            data["dynamic_recovery"] = [recovery(rows, 0.30, 0.45), recovery(rows, 0.45, 0.60)]
        print(result.stdout.strip(), flush=True)
        return data

    # One nominal PC-ON run verifies the observer fast-link change and the
    # default-scenario arithmetic before the stress scenarios are interpreted.
    started = time.perf_counter()
    regression = run("pc_on_50ohm_default_regression", 2, 50, 0)
    old = json.loads((BASE / "pc_on_50ohm.json").read_text())
    differing_metrics = {key: {"original": old[key], "regression": regression.get(key)}
                         for key in old if old[key] != regression.get(key)}
    old_rows = trace(BASE / "pc_on_50ohm")
    new_rows = trace(OUT / "pc_on_50ohm_default_regression")
    differing_trace_rows = sum(any(a[key] != b.get(key) for key in a) for a, b in zip(old_rows, new_rows))
    default_check = {"metric_differences": differing_metrics, "original_trace_rows": len(old_rows),
                     "regression_trace_rows": len(new_rows), "differing_common_trace_rows": differing_trace_rows}
    (OUT / "default_regression.json").write_text(json.dumps(default_check, indent=2), encoding="utf-8")
    if differing_metrics or differing_trace_rows or len(old_rows) != len(new_rows):
        raise RuntimeError("Default plant regression differs. Evidence retained; stress scenarios not run.")

    cases = []
    for scenario, label, load in [(1, "adc_early_1us", 50), (2, "device_drops", 50), (3, "load_100_50_100ohm", 100)]:
        for mode, name in enumerate(["old_fcs", "pc_off", "pc_on"]):
            cases.append((f"{name}_{label}", mode, load, scenario))
    results = []
    with ThreadPoolExecutor(max_workers=3) as pool:
        for future in as_completed([pool.submit(run, *case) for case in cases]):
            results.append(future.result())
    results.sort(key=lambda result: (result["scenario"], result["mode"]))
    manifest = {"date": "2026-10-25", "compiler": str(CLANG), "compile_flags": flags,
                "build_command": command, "elapsed_wall_s": time.perf_counter() - started,
                "source_sha256": {source: hashlib.sha256((TARGET / source).read_bytes()).hexdigest()
                                  for source in SOURCES + ["vienna_pcmfpc_zcdc.h", "vienna_pcmfpc_fast.h",
                                  "vienna_pcmfpc_observer.h", "vienna_grid_sync.h", "tests/ti_run_extended_closed_loop.py"]},
                "default_regression": default_check,
                "shared_conditions": {"line_RMS_V": 100, "grid_Hz": 50, "bus_reference_V": 170,
                                      "physical_L_H": 0.003, "physical_R_ohm": 0.2, "half_cap_F": 440e-6,
                                      "plant_step_s": 0.5e-6, "controller_Ts_s": 20e-6,
                                      "root_method": "unchanged reference bisection32", "delta_i_A": 0.02,
                                      "reference_peak_limit_A": 5.5, "proposed_trip_A": 7, "proposed_filtered_OV_V": 204,
                                      "ESO": "MODEL reconstructed integral; no pole ADC, no measured-di inverse"},
                "scenarios": {"1": "All actual ADC held sample acquisition times shifted1us earlier; controller/PLL nominal timestamp remains10us, two executed-gate observer intervals remain10us+10us. ISR invocation12us and ZERO gate load20us are unchanged. This deliberately tests a timestamp mismatch, not a validated calibration.",
                              "2": "Independent physical plant only: OFF branch thresholds Up+0.8V/-Low-0.8V, ON branch +/-0.2V drop opposing current. Set-valued zero-current dead zone included in KCL projection. No device parasitic capacitance, deadtime, reverse recovery, temperature or vendor transistor model.",
                              "3": "Resistive load100ohm until0.30s,50ohm until0.45s, then100ohm. Software simulation event only; user's actual physical load remains50ohm. No simultaneous ADC/noise/device mismatch in this scenario."},
                "THD": "Exact final ten50Hz periods0.6..0.8s, direct harmonic quadrature2..40 on every2MHz plant midpoint; dynamic case's final load is100ohm. Event-window THD is not reported as stationary THD.",
                "scope": "Independent host engineering model. No real board, CCS timing, measured converter nonidealities, or hardware-rated protection verification.",
                "cases": results}
    (OUT / "results.json").write_text(json.dumps(manifest, indent=2), encoding="utf-8")
    report = ["# Extended independent host closed-loop scenarios", "",
              "Three separated stress scenarios, three modes each. Original nine result files are unchanged.",
              "The nominal PC-ON regression has identical metrics and every common CSV field to the previous run.", "",
              "| Case | Bus mean V | Tracking RMS A | THD2..40 % (a,b,c) | NP RMS V | All-run peak A | Trip |",
              "|---|---:|---:|---|---:|---:|---:|"]
    for result in results:
        report.append(f'| {result["case"]} | {result["bus_mean_V"]:.5f} | {result["tracking_RMS_A"]:.6f} | ' +
                      ", ".join(f"{value:.4f}" for value in result["THD_2_40_percent"]) +
                      f' | {result["np_RMS_V"]:.6f} | {result["current_peak_all_A"]:.5f} | {result["hard_trip"]} |')
    report += ["", "ADC case shifts actual acquisition earlier while retaining the assumed timestamps; device case adds constant opposing voltage drops only; dynamic case changes load100→50→100ohm at0.30/0.45s.",
               "All steady metrics/THD use0.6..0.8s; the dynamic case has returned to100ohm then. Do not compare that THD directly with a50ohm nominal load.", "",
               "| Dynamic case | Event s | Bus min/max V before next window | 2% settling ms | Sampled current peak A |",
               "|---|---:|---|---:|---:|"]
    for result in results:
        for event in result.get("dynamic_recovery", []):
            settling = "not settled" if event["settling_2percent_s"] is None else f'{1000 * event["settling_2percent_s"]:.3f}'
            report.append(f'| {result["case"]} | {event["event_s"]:.2f} | {event["bus_min_V"]:.4f}/{event["bus_max_V"]:.4f} | {settling} | {event["sampled_peak_current_A"]:.5f} |')
    report += ["", "Settling uses the5kHz diagnostic CSV,170V±3.4V, and requires20ms without a later excursion in the event window. Peak-all current in the first table is evaluated at the0.5us plant step; sampled event peaks are distinct.",
               "Proposed current/OV thresholds are planning values. This is not hardware verification and does not prove real switching-device or inductor capability.",
               "Full definitions, hashes, raw traces, event limits and results remain in results.json and the individual CSV/JSON/log files."]
    (OUT / "REPORT.md").write_text("\n".join(report) + "\n", encoding="utf-8")
    print(f"Saved9 extended cases and one unchanged default regression to {OUT}", flush=True)


if __name__ == "__main__":
    main()
