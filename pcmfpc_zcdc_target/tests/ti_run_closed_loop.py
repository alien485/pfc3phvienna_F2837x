"""Compile and run the one TI-parameter abc plant; no clean or hardware action."""
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path
import hashlib
import json
import os
import subprocess
import time

TESTS = Path(__file__).resolve().parent
TARGET = TESTS.parent
ROOT = Path(__file__).resolve().parents[5]
OUT = ROOT / "output/ti_pcmfpc_zcdc_port/hardware_sim"
BUILD = TESTS / "observer_build"
CLANG = Path(r"D:/MATLAB2023b/install/toolbox/sldrt/clang/win64/clang.exe")
VCVARS = Path(r"D:/VisualStudio/Microsoft Visual_Studio2022BuildTools/VC/Auxiliary/Build/vcvars64.bat")
SOURCES = ["vienna_pcmfpc_zcdc.c", "vienna_pcmfpc_fast.c", "vienna_pcmfpc_observer.c", "vienna_grid_sync.c", "tests/ti_closed_loop.c"]


def run():
    OUT.mkdir(parents=True, exist_ok=True)
    BUILD.mkdir(parents=True, exist_ok=True)
    exe = BUILD / "ti_closed_loop.exe"
    flags = "-std=c99 -O2 -Wall -Wextra -D_CRT_SECURE_NO_WARNINGS"
    command = (f'call "{VCVARS}" >nul && set "TMP={BUILD}" && set "TEMP={BUILD}" && '
               f'"{CLANG}" {flags} ' + " ".join(f'"{TARGET / s}"' for s in SOURCES) + f' -o "{exe}"')
    command_file = BUILD / "build_ti_closed_loop.cmd"
    command_file.write_text("@echo off\n" + command + "\n", encoding="ascii")
    built = subprocess.run(["cmd.exe", "/d", "/c", str(command_file)], cwd=TARGET, capture_output=True, text=True)
    (OUT / "build.log").write_text(built.stdout + built.stderr, encoding="utf-8")
    if built.returncode:
        raise RuntimeError(built.stdout + built.stderr)
    cases = []
    for resistance, sensitivity in [(100, 0), (50, 0), (50, 1)]:
        for mode, name in enumerate(["old_fcs", "pc_off", "pc_on"]):
            label = f"{name}_{resistance}ohm" + ("_sensitivity" if sensitivity else "")
            cases.append((label, mode, resistance, sensitivity))
    started = time.time()

    def one(case):
        label, mode, resistance, sensitivity = case
        result = subprocess.run([str(exe), str(mode), str(resistance), str(sensitivity), str(OUT / label)],
                                cwd=TARGET, capture_output=True, text=True)
        (OUT / f"{label}.log").write_text(result.stdout + result.stderr, encoding="utf-8")
        if result.returncode:
            raise RuntimeError(f"{label}: " + result.stdout + result.stderr)
        data = json.loads((OUT / f"{label}.json").read_text())
        data["case"] = label
        print(result.stdout.strip(), flush=True)
        return data

    results = []
    with ThreadPoolExecutor(max_workers=3) as pool:
        for future in as_completed([pool.submit(one, c) for c in cases]):
            results.append(future.result())
    results.sort(key=lambda x: (x["sensitivity"], -x["load_ohm"], x["mode"]))
    manifest = {
        "date": "2026-10-25", "compiler": str(CLANG), "compile_flags": flags,
        "build_command": command, "elapsed_wall_s": time.time() - started,
        "source_sha256": {s: hashlib.sha256((TARGET / s).read_bytes()).hexdigest() for s in SOURCES +
                          ["vienna_grid_sync.h", "vienna_pcmfpc_observer.h", "vienna_pcmfpc_zcdc.h", "vienna_fcs_mpc.h"]},
        "cases": results,
        "interpretation": "Host closed-loop engineering model only. No target timing or hardware effectiveness claim.",
        "plant": {"frame": "independent double abc RL/complementarity KCL plant", "step_s": 0.5e-6,
                  "current_root": "36-iteration double bisection, not the control predictor",
                  "capacitors": "separate upper/lower 440uF; dc resistor across P-N",
                  "device": "ideal diodes and gates, no drops or real sensor dynamics beyond a hypothetical 6.8us RC"},
        "sampling": {"control_s": 20e-6, "common_effective_adc_timestamp_s": 10e-6,
                     "computation_instant_s": 12e-6, "pending_load_at_next_zero_s": 20e-6,
                     "ADC": "four quantized held samples using original SOC order and channel skew",
                     "ESO": "model reconstructed pole integral using two executed 10us gate segments, analytical rotating integral"},
        "THD": {"method": "direct synchronous Fourier quadrature on every 2MHz physical-plant midpoint sample",
                "harmonics": "50Hz fundamental and 2..40 (100..2000Hz), exact last ten 50Hz periods",
                "decimation": "none in harmonic integration; CSV has explicit 50kHz steady timestamps and earlier 5kHz trace",
                "bandwidth": "2MHz numerical sample grid; does not describe an actual instrument bandwidth"},
        "protection": {"reference_peak_A": 5.5, "proposed_instant_trip_A": 7.0, "proposed_filtered_OV_V": 204.0,
                       "status": "proposal only; original4A exceedance reported separately; no hardware release"},
    }
    (OUT / "results.json").write_text(json.dumps(manifest, indent=2), encoding="utf-8")
    rows = ["# TI-parameter closed-loop host simulation", "",
            "One plant and one controller implementation, three modes. No hardware was operated.", "",
            "| Case | Bus mean V | Tracking RMS A | Zero-window RMS A (a,b,c) | THD 2..40 % (a,b,c) | NP RMS V | Peak A | Trip |",
            "|---|---:|---:|---|---|---:|---:|---:|"]
    for r in results:
        rows.append(f'| {r["case"]} | {r["bus_mean_V"]:.5f} | {r["tracking_RMS_A"]:.6f} | ' +
                    ", ".join(f"{x:.6f}" for x in r["zero_window_RMS_A"]) + " | " +
                    ", ".join(f"{x:.4f}" for x in r["THD_2_40_percent"]) +
                    f' | {r["np_RMS_V"]:.6f} | {r["current_peak_all_A"]:.5f} | {r["hard_trip"]} |')
    rows += ["", "Read results.json for precise sampling, outer-loop, protection and integration definitions.",
             "Sensitivity = physical L=2.1mH, R=0.26ohm against controller3mH/0.2ohm; added bounded current/voltage ADC noise.",
             "All cases retain nominal per-half440uF, 50Hz, 100V line RMS, 170V bus,20us control and0.02A PC budget.",
             "PLL, ESO, SI peak reference and PI20Hz/zeta1 with prefilter and back-calculation are shared by all modes.",
             "This includes a 141.42V precharged startup, not a zero-voltage cold-start validation.",
             "Reference limit5.5A, instantaneous trip7A and filtered softwareOV204V are proposed values, not verified board ratings.",
             "The raw physical current peak and first exceedance of the original4A threshold are both recorded.",
             "Switch frequencies use whole-run gate edge counts/2/duration, including startup; they are not fixed50kHz PWM frequencies.",
             "CSV is diagnostic control-rate data. THD uses every 0.5us plant midpoint sample and does not use CSV decimation."]
    (OUT / "REPORT.md").write_text("\n".join(rows) + "\n", encoding="utf-8")
    print(f"Saved {len(results)} cases to {OUT}", flush=True)


if __name__ == "__main__":
    run()
