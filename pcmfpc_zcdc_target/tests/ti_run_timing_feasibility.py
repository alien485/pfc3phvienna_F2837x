"""Offline timing hypotheses in the one abc plant. Never modifies DSP config.

Host simulations assume computations finish before the next command load.
This cannot approve changed PWM/ADC/interrupt timing or hardware operation.
"""
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path
import csv
import hashlib
import json
import re
import subprocess
import time

TESTS = Path(__file__).resolve().parent
TARGET = TESTS.parent
ROOT = TARGET.parents[3]
OUT = ROOT / "output/ti_pcmfpc_zcdc_port/rt_optimization/timing_feasibility"
BUILD = TESTS / "observer_build"
CLANG = Path("D:/MATLAB2023b/install/toolbox/sldrt/clang/win64/clang.exe")
VCVARS = Path("D:/VisualStudio/Microsoft Visual_Studio2022BuildTools/VC/Auxiliary/Build/vcvars64.bat")
SHARED = ["vienna_pcmfpc_zcdc.c", "vienna_pcmfpc_fast.c", "vienna_pcmfpc_observer.c", "vienna_grid_sync.c"]
PROFILES = [("50k_center_default", 20e-6, 10e-6, 12e-6, []),
            ("20k_center", 50e-6, 25e-6, 27e-6, ["0.000050", "0.000025", "0.000027"]),
            ("20k_early", 50e-6, 2e-6, 4e-6, ["0.000050", "0.000002", "0.000004"]),
            ("10k_center", 100e-6, 50e-6, 52e-6, ["0.000100", "0.000050", "0.000052"])]


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def build(name, plant, defines):
    exe = BUILD / f"ti_timing_{name}.exe"
    sources = [TARGET / source for source in SHARED] + [plant]
    flags = "-std=c99 -O2 -Wall -Wextra -Werror -D_CRT_SECURE_NO_WARNINGS -DTI_CLOSED_LOOP_FAST=1"
    command = (f'call "{VCVARS}" >nul && set "TMP={BUILD}" && set "TEMP={BUILD}" && '
               f'"{CLANG}" {flags} ' + " ".join(defines) + " " +
               " ".join(f'"{source}"' for source in sources) + f' -o "{exe}"')
    cmd = BUILD / f"build_timing_{name}.cmd"
    cmd.write_text("@echo off\n" + command + "\n", encoding="ascii")
    result = subprocess.run(["cmd.exe", "/d", "/c", str(cmd)], cwd=TARGET, capture_output=True, text=True)
    (OUT / f"build_{name}.log").write_text(result.stdout + result.stderr, encoding="utf-8")
    if result.returncode:
        raise RuntimeError(result.stdout + result.stderr)
    return {"executable": str(exe), "command": command, "defines": defines,
            "source_sha256": {str(source): sha(source) for source in sources}}


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    BUILD.mkdir(exist_ok=True)
    baseline_plant = BUILD / "timing_baseline_plant.c"
    if not baseline_plant.is_file():
        raise RuntimeError("The recorded pre-parameterization plant snapshot is required for default arithmetic regression.")
    baseline_record = json.loads((OUT / "plant_before_parameterization.json").read_text())
    builds = {"previous_50k_plant": build("previous_50k_plant", baseline_plant, [])}
    for name, period, sample, isr, values in PROFILES:
        defines = [f"-D{key}={value}" for key, value in zip(
            ["SIM_CONTROL_STEP_SEC", "SIM_SAMPLE_OFFSET_SEC", "SIM_ISR_OFFSET_SEC"], values)]
        builds[name] = build(name, TARGET / "tests/ti_closed_loop.c", defines)
    started = time.perf_counter()

    def run(profile, mode, noise):
        label = f"{profile}_{['old_fcs','pc_off','pc_on'][mode]}" + ("_LRnoise" if noise else "")
        prefix = OUT / label
        result = subprocess.run([builds[profile]["executable"], str(mode), "50", str(noise), str(prefix), "0"],
                                cwd=TARGET, capture_output=True, text=True)
        prefix.with_suffix(".log").write_text(result.stdout + result.stderr, encoding="utf-8")
        if result.returncode:
            # These hypotheses may be numerically/electrically unusable.
            # Preserve the failure rather than aborting or dropping the case.
            failure = {"case": label, "timing_profile": profile, "mode": mode, "load_ohm": 50,
                       "sensitivity": noise, "numerically_completed_without_trip": False,
                       "simulation_completed": False, "return_code": result.returncode,
                       "failure": result.stderr.strip(), "steady_statistics_valid": False}
            match = re.search(r't=([^ ]+) up=([^ ]+) low=([^ ]+) peak_A=([^ ]+) core_errors=(\d+) observer_errors=(\d+) trip=(\d+)', result.stderr)
            if match:
                failure.update({"failure_time_s": float(match[1]), "failure_upper_bus_V": float(match[2]),
                                "failure_lower_bus_V": float(match[3]), "current_peak_all_A": float(match[4]),
                                "core_errors": int(match[5]), "observer_errors": int(match[6]), "hard_trip": int(match[7])})
            with prefix.with_suffix(".csv").open(newline="") as stream:
                trace = list(csv.DictReader(stream))
            failure["partial_trace_rows"] = len(trace)
            failure["last_ADC_trace_row"] = trace[-1] if trace else None
            prefix.with_suffix(".failure.json").write_text(json.dumps(failure, indent=2), encoding="utf-8")
            print(label + ": NUMERIC FAILURE retained: " + result.stderr.strip(), flush=True)
            return failure
        data = json.loads(prefix.with_suffix(".json").read_text())
        data.update({"case": label, "timing_profile": profile,
                     "simulation_completed": True,
                     "numerically_completed_without_trip": not (data["hard_trip"] or data["core_errors"] or data["observer_errors"]),
                     "np_peak_exceeds_existing_50V_difference_setting": data["np_peak_V"] >= 50})
        print(label + ": " + result.stdout.strip(), flush=True)
        return data

    cases = [(name, mode, noise) for name, _, _, _, _ in PROFILES for noise in (0, 1) for mode in (0, 1, 2)]
    results = []
    with ThreadPoolExecutor(max_workers=3) as pool:
        for future in as_completed([pool.submit(run, *case) for case in cases]):
            results.append(future.result())
    results.sort(key=lambda case: (next(j for j, p in enumerate(PROFILES) if p[0] == case["timing_profile"]), case["sensitivity"], case["mode"]))
    regressions = []
    for mode in (0, 1, 2):
        old = run("previous_50k_plant", mode, 0)
        new = next(value for value in results if value["timing_profile"] == "50k_center_default" and value["mode"] == mode and not value["sensitivity"])
        metric_diffs = {key: {"old": old[key], "new": new.get(key)} for key in old
                        if key not in ("case", "timing_profile") and old[key] != new.get(key)}
        a = OUT / f"previous_50k_plant_{['old_fcs','pc_off','pc_on'][mode]}.csv"
        b = OUT / f"50k_center_default_{['old_fcs','pc_off','pc_on'][mode]}.csv"
        with a.open(newline="") as fa, b.open(newline="") as fb:
            old_rows, new_rows = list(csv.DictReader(fa)), list(csv.DictReader(fb))
        changed = [j + 1 for j, (x, y) in enumerate(zip(old_rows, new_rows)) if x != y]
        regressions.append({"mode": mode, "old_rows": len(old_rows), "new_rows": len(new_rows),
                            "metric_differences": metric_diffs, "differing_rows": changed, "CSV_byte_identical": sha(a) == sha(b)})
    regression_ok = all(not item["metric_differences"] and not item["differing_rows"] and item["CSV_byte_identical"] and
                        item["old_rows"] == item["new_rows"] for item in regressions)
    profile_metadata = []
    for name, period, sample, isr, _ in PROFILES:
        profile_metadata.append({"name": name, "control_period_s": period, "control_Hz": 1 / period,
                                 "sample_offset_s": sample, "isr_offset_s": isr, "ADC_SOC_offset_s": sample - 1.86e-6,
                                 "ADC_acquisition_end_SOC0_s": sample - 1.76e-6,
                                 "first_prediction_s": period - sample, "candidate_prediction_s": period,
                                 "ESO_before_zero_s": period - sample, "ESO_after_zero_s": sample,
                                 "nominal_write_window_s": period - isr,
                                 "hypothetical_TBPRD_at100MHz_updown": round(period * 100e6 / 2),
                                 "instrument_period_s": 100e-6, "reference_slew_V_s": 150})
    report = {"date": "2026-10-25", "scope": "OFFLINE numeric timing hypotheses only; no DSP/PWM/ADC/CMPSS/TZ/clock/guard or instrument settings changed.",
              "host_computation_assumption": "All control/observer calls finish on time; no real CPU latency, jitter or interrupt overhead is simulated.",
              "builds": builds, "pre_parameterization_plant": baseline_record, "profiles": profile_metadata,
              "default_50k_arithmetic_regression": regressions, "default_regression_status": "PASS" if regression_ok else "FAIL",
              "elapsed_s": time.perf_counter() - started, "cases": results,
              "actual_firmware_unchanged": {"control_Hz": 50000, "TBPRD": 1000, "actual_ISR_offset_s": 11.86e-6,
                                            "nominal_write_window_s": 8.14e-6, "hardware_release": 0},
              "protection_simulation_scope": {"instant_current_threshold_A": 7, "filtered_total_bus_threshold_V": 204,
                                              "half_bus_415V_and_difference_50V_GUI_logic": "NOT simulated",
                                              "runtime_core_error_OST_and_loop_latch": "NOT fully simulated: the host mathematical harness counts core errors and submits OFF for that step; any nonzero core error invalidates the candidate scenario.",
                                              "meaning_of_hard_trip": "Only the two explicitly simulated7A/204V checks; no assertion about all original board protections."},
              "definitions": {"same_plant": "Independent double abc RL/complementarity plant,0.5us step; upper/lower440uF each,170V target,100V line RMS/50Hz,50ohm.",
                              "sensitivity": "PhysicalL2.1mH/R0.26ohm + bounded ADC noise vs nominal controllerL3mH/R0.2ohm; same half440uF.",
                              "steady_window_s": [0.6, 0.8], "THD": "Synchronous DFT2..40 on all2MHz physical midpoint samples, not CSV-decimated data.",
                              "source_limits": "7A instantaneous and204V slow-filter protection are planning thresholds, not measured component ratings.",
                              "filter": "GUI filter preserves original~189ms bandwidth; original50k literal alpha retained exactly; other periods use1-(1-alpha50)^(Ts/20us).",
                              "instrumentation": "Fixed10kHz physical-grid tick independent of controller rate,150V/s reference slew.",
                              "window": "T-ISRoffset only; excludes vector entry/exit,ADC read overhead,write guard,three-phase skew and real driver delays."},
              "not_covered": ["Actual DSP WCET/TMU arithmetic", "Timer/SOC register and JTAG validation", "Early-ISR upcount guard redesign", "Duty synchronization/ADC availability proof", "Voltage-reference/load dynamic qualification", "Thermal/saturation/real-device/hardware safety", "Zero-voltage cold start", "Independent fast overvoltage layer"],
              "screening_outcomes": {"completed": sum(case["simulation_completed"] for case in results),
                                     "incomplete": sum(not case["simulation_completed"] for case in results),
                                     "severe_midpoint_cases": [case["case"] for case in results if case.get("np_peak_exceeds_existing_50V_difference_setting", False)],
                                     "failure_cases": [case["case"] for case in results if not case["simulation_completed"]]},
              "conclusion": "Numeric outcomes are screening data only. A window larger than a prior work lower bound is not a deadline pass or hardware release."}
    (OUT / "REPORT.json").write_text(json.dumps(report, indent=2), encoding="utf-8")
    lines = ["# 离线采样与控制时标可行性筛查", "",
             "只修改唯一宿主plant的可选宏和本runner；当前DSP固件仍50kHz/TBPRD1000/原ADC与ISR相位/HardwareRelease0。没有操作硬件或仪器。", "",
             "令控制周期T、共同有效采样偏移S、ISR偏移I：首段=T-S，候选段=T；ESO跨上一采样到本采样，旧门极前段T-S、新实际门极后段S。全部原SOC保持顺序整体平移S-10us，SOCA=S-1.86us；PLL/ESO及外环积分按T。仪表任务固定100us与150V/s。", "",
             "| 假设 | T / S / I (us) | 名义写窗(us) | 假设TBPRD |",
             "|---|---|---:|---:|"]
    for profile in profile_metadata:
        lines.append(f'| {profile["name"]} | {profile["control_period_s"]*1e6:g}/{profile["sample_offset_s"]*1e6:g}/{profile["isr_offset_s"]*1e6:g} | {profile["nominal_write_window_s"]*1e6:g} | {profile["hypothetical_TBPRD_at100MHz_updown"]} |')
    lines += ["", "50k默认宿主模型保留原12us ISR网格近似，因此表中8us不同于真实目标11.86us事件对应8.14us。新假设也只是0.5us物理网格模型，没有实测ADC/ISR延迟。", "",
              "| 用例 | 跟踪RMS A | 三相RMS A | THD2..40 % | PF | 中点RMS/峰 V | 全程峰 A | 7A/204V触发 / Core / ESO |",
              "|---|---:|---|---|---:|---|---:|---|"]
    for case in results:
        if not case["simulation_completed"]:
            lines.append(f'| {case["case"]} | 未完成 | — | — | — | 半母线失效，见failure.json | '
                         f'{case.get("current_peak_all_A", float("nan")):.5f} | {case.get("hard_trip", "?")}/{case.get("core_errors", "?")}/{case.get("observer_errors", "?")} |')
            continue
        lines.append(f'| {case["case"]} | {case["tracking_RMS_A"]:.6f} | ' +
                     ", ".join(f'{v:.4f}' for v in case["phase_RMS_A"]) + " | " +
                     ", ".join(f'{v:.4f}' for v in case["THD_2_40_percent"]) +
                     f' | {case["true_PF"]:.6f} | {case["np_RMS_V"]:.5f}/{case["np_peak_V"]:.5f} | '
                     f'{case["current_peak_all_A"]:.5f} | {case["hard_trip"]}/{case["core_errors"]}/{case["observer_errors"]} |')
    lines += ["", f"默认20us回归：{'PASS' if regression_ok else 'FAIL'}，三模式与参数化前plant全部原指标和CSV字节一致；新的时标元数据单列保存。",
              "所有计算均假设及时完成；本表不能批准任何时限或上电。20k早采样/ISR会进入原PWM上数区，需要重新设计触发方向与原downcount写前守护，不能直接改实板宏尝试。20k中心名义23us窗口也不能支付已知32.04us核心下界；46/48us窗口并不证明加上PLL/ESO和完整ISR可通过。",
              "保护阈值仍用7A瞬时与204V慢滤波工程候选；无trip不等于器件/磁性/热安全。没有覆盖冷启动、参考/负载动态、真实器件或独立快速过压。原半母线/差压保护层级未由这些仿真验收。",
              f"本批完成{report['screening_outcomes']['completed']}组、提前数值失效{report['screening_outcomes']['incomplete']}组。失效用例未丢弃，日志、部分CSV及failure.json保留；未完成用例不提供虚假的稳态统计。",
              "20k中心末级ON在L/Rnoise压力下出现约160V中点RMS，虽然总母线接近170V且7A/204V未动作，已经严重失衡；10k中心新控制也可能出现半母线非正提前退出。本模型只实现7A/204V动作，没有仿真原慢滤波50V差压/415V半母线保护，不能把未trip解释为保护通过。",
              "数学宿主入口也未完整重放runtime在内核错误时的三相OST/关环/故障锁存，只计core_errors并提交本步OFF。因此core_errors非零已表示该场景不合格；后续半母线越界只是未放行模型的诊断，不能预测真实板卡会继续运行到负电压。",
              "完整各相误差/过零峰值、PF/RMS/功率、母线/中点、各次谐波、保护首次动作、源码SHA和命令见REPORT.json及原始CSV/JSON/log。"]
    (OUT / "REPORT.md").write_text("\n".join(lines) + "\n", encoding="utf-8")
    if not regression_ok:
        raise RuntimeError(f"Default20us regression changed; evidence retained at {OUT}")
    print(f"Offline timing screening saved{len(results)} cases; default arithmetic regression PASS; no hardware release.", flush=True)


if __name__ == "__main__":
    main()
