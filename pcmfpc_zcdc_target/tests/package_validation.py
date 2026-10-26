"""Copy explicitly named small evidence files for Git review; never deletes.

Run after verify_delivery.py and the final resource audit. Raw CSV/MAT/NPZ,
executables, the IDE workspace and full disassembly stay in root output.
"""
from pathlib import Path
import hashlib
import json
import shutil

TARGET = Path(__file__).resolve().parents[1]
ROOT = TARGET.parents[3]
EVIDENCE = ROOT / "output/ti_pcmfpc_zcdc_port"
DEST = TARGET / "validation"
FILES = {
    "recovery_20261026/REPORT.md": "RECOVERY_20261026.md",
    "recovery_20261026/REPORT.json": "recovery_20261026.json",
    "PROGRESS.md": "PROGRESS.md",
    "AUDIT.md": "AUDIT.md",
    "baseline_manifest.json": "baseline_manifest.json",
    "c_matlab_comparison.json": "c_matlab_comparison.json",
    "SUBSTEP_VALIDATION.md": "SUBSTEP_VALIDATION.md",
    "substep_comparison.json": "substep_comparison.json",
    "RUNTIME_HOST_VALIDATION.md": "RUNTIME_HOST_VALIDATION.md",
    "runtime_host_results.txt": "runtime_host_results.txt",
    "FAST_SAFETY_VALIDATION.md": "FAST_SAFETY_VALIDATION.md",
    "fast_safety_results.txt": "fast_safety_results.txt",
    "fast_replay/REPORT.md": "FAST_REPLAY.md",
    "fast_replay/manifest.json": "fast_replay_manifest.json",
    "fast_replay/replay_summary.json": "fast_replay_summary.json",
    "hardware_sim/REPORT.md": "HARDWARE_PARAMETER_SIM.md",
    "hardware_sim/results.json": "hardware_sim_results.json",
    "hardware_sim/METHOD_AND_RUNTIME_AUDIT.md": "SIM_METHOD_AND_RUNTIME_AUDIT.md",
    "hardware_sim_extended/REPORT.md": "EXTENDED_SIM.md",
    "hardware_sim_extended/results.json": "extended_sim_results.json",
    "hardware_sim_extended/default_regression.json": "default_regression.json",
    "delivery_checks.json": "delivery_checks.json",
    "RESULT_TEMPLATE.md": "RESULT_TEMPLATE.md",
    "resource_timing_audit_pre_fast.md": "RESOURCE_REFERENCE_SNAPSHOT.md",
    "resource_timing_audit_pre_fast.json": "resource_reference_snapshot.json",
    "build_validation/REPORT.md": "RESOURCE_FINAL.md",
    "build_validation/REPORT.json": "resource_final.json",
    "fast_final_ccs_incremental.stdout.log": "ccs_build_stdout.txt",
    "fast_final_ccs_incremental.command.txt": "ccs_build_command.txt",
    "rt_optimization/build_pass3/REPORT.md": "RT_BUILD_REPORT.md",
    "rt_optimization/build_pass3/REPORT.json": "rt_build_report.json",
    "rt_optimization/build_pass3/combined_lower_bound.json": "rt_lower_bound.json",
    "rt_optimization/build_pass3/control_substep_bound.json": "rt_control_substep_bound.json",
    "rt_optimization/build_pass3/root_success_bound.json": "rt_root_success_bound.json",
    "rt_optimization/round3/HOST_VALIDATION.md": "RT_HOST_VALIDATION.md",
    "rt_optimization/round3/HOST_VALIDATION.json": "rt_host_validation.json",
    "rt_optimization/round3/fast_replay/REPORT.md": "RT_FAST_REPLAY.md",
    "rt_optimization/round3/fast_replay/manifest.json": "rt_fast_replay_manifest.json",
    "rt_optimization/round3/closed_loop/REPORT.md": "RT_CLOSED_LOOP.md",
    "rt_optimization/round3/closed_loop/REPORT.json": "rt_closed_loop.json",
    "rt_optimization/timing_feasibility/REPORT.md": "TIMING_FEASIBILITY.md",
    "rt_optimization/timing_feasibility/REPORT.json": "timing_feasibility.json",
    "rt_optimization/reference_compatibility/REPORT.md": "REFERENCE_COMPATIBILITY.md",
    "rt_optimization/reference_compatibility/REPORT.json": "reference_compatibility.json",
    "bench_20261026/REPORT.md": "BENCH_20261026.md",
    "bench_20261026/REPORT.json": "bench_20261026.json",
    "bench_20261026_round4/REPORT.md": "BENCH_RT4_20261026.md",
    "bench_20261026_round4/REPORT.json": "bench_rt4_20261026.json",
    "rt_optimization/round4/REPORT.md": "RT4_REPORT.md",
    "rt_optimization/round4/REPORT.json": "rt4_report.json",
    "rt_optimization/build_pass4/AUDIT.md": "RT4_BUILD_AUDIT.md",
    "rt_optimization/build_pass4/AUDIT.json": "rt4_build_audit.json",
    "rt_optimization/build_pass4/combined_lower_bound.json": "rt4_lower_bound.json",
    "rt_optimization/round4/host/pass3/REPORT.md": "RT4_HOST.md",
    "rt_optimization/round4/host/pass3/REPORT.json": "rt4_host.json",
    "rt_optimization/round4/host/pass3/TRIAGE.md": "RT4_DIFFERENCES.md",
    "rt_optimization/round4/closed_loop/SUMMARY.md": "RT4_CLOSED_LOOP.md",
    "rt_optimization/round4/closed_loop/SUMMARY.json": "rt4_closed_loop.json",
}

if __name__ == "__main__":
    DEST.mkdir(exist_ok=True)
    manifest = []
    for source_name, target_name in FILES.items():
        source, dest = EVIDENCE / source_name, DEST / target_name
        assert source.is_file(), source
        shutil.copyfile(source, dest)
        manifest.append({"source": str(source.relative_to(ROOT)), "copy": target_name,
                         "sha256": hashlib.sha256(dest.read_bytes()).hexdigest(), "bytes": dest.stat().st_size})
    for name in ("observer_validation.md", "observer_results.txt", "core_VALIDATION.md"):
        source, dest = TARGET / "tests" / name, DEST / name
        shutil.copyfile(source, dest)
        manifest.append({"source": str(source.relative_to(ROOT)), "copy": name,
                         "sha256": hashlib.sha256(dest.read_bytes()).hexdigest(), "bytes": dest.stat().st_size})
    (DEST / "evidence_copies.json").write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"Copied {len(manifest)} explicitly named evidence files, {sum(x['bytes'] for x in manifest)} bytes; no deletion.")
