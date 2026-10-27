"""Round7 independent HOST regression against the pinned round6 kernel.

Compares identical full/local diagnostic policies separately, then allows only
the explicitly unavailable angle diagnostics to differ across policies. Uses
the existing frozen input corpus; no target, cleanup or Git operations.
"""
from pathlib import Path
import argparse
import csv
import hashlib
import importlib.util
import json
import shutil
import subprocess

TESTS = Path(__file__).resolve().parent
TARGET = TESTS.parent
ROOT = TARGET.parents[3]
EVIDENCE = ROOT / "output/ti_pcmfpc_zcdc_port/rt_optimization"
OLD_SOURCE = EVIDENCE / "round7/validation_baseline/vienna_pcmfpc_fast.c"
OLD_C_SHA = "574549145827de39fcb70cc9c545154de0da66b6f009cd45f188f39b16e36620"
OLD_H_SHA = "412bd5cddb5d522ccb54e5968571768b719b85b74fef446ae0a1c1c3d9c7e65e"
INPUTS = EVIDENCE / "round6/host/pass2/raw/inputs.csv"
CLANG = Path("D:/MATLAB2023b/install/toolbox/sldrt/clang/win64/clang.exe")
VCVARS = Path("D:/VisualStudio/Microsoft Visual_Studio2022BuildTools/VC/Auxiliary/Build/vcvars64.bat")


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def load_round6_runner():
    spec = importlib.util.spec_from_file_location("frozen_round6_test_helpers", TESTS / "validate_round6.py")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def comparison_harness():
    # Reuse the executed corpus/budget-boundary generation, not controller code.
    text = load_round6_runner().HARNESS.replace("round6", "round7").replace("round5", "round6")
    text = text.replace("PC_fast_kernel_revision!=6U", "PC_fast_kernel_revision!=7U")
    text = text.replace("static PC_Output round7_now,round7_old;", """static PC_Output round7_now,round7_old;
static uint16_t round7_diag;
static unsigned policy_cases,policy_status_diff,policy_undocumented_diff;
static void compare_policy(const PC_Config *c,const PC_Input *in,const PC_Output *all)
{
    PC_Config local=*c;PC_Output actual,expected;uint16_t status,j;
    local.diagnostic_all_angles=0U;memset(&actual,0xa5,sizeof(actual));
    status=PC_run_fast(&local,in,&actual);policy_cases++;
    policy_status_diff+=status!=all->status;
    expected=*all;
    if(status==PC_OK && all->status==PC_OK){
        for(j=0U;j<8U;j++)if(!(all->intersection_mask & (uint16_t)(1U<<j)))expected.gz[j]=(PC_Real)0;
        expected.zcdc_diag[4]=(PC_Real)-1;
    }
    if(memcmp(&expected,&actual,sizeof(expected)))policy_undocumented_diff++;
}""")
    text = text.replace("    uint16_t sa,sb,flag[3];PC_Real dq[2];unsigned j;\n    round7_cases++;", """    uint16_t sa,sb,flag[3];PC_Real dq[2];unsigned j;
    PC_Config policy=*c;policy.diagnostic_all_angles=round7_diag;c=&policy;
    round7_cases++;""")
    text = text.replace("    if(sa==PC_OK && sb==PC_OK){", "    if(round7_diag)compare_policy(c,in,&round7_now);\n    if(sa==PC_OK && sb==PC_OK){", 1)
    text = text.replace("    if(argc!=2)return 2;", "    if(argc!=3)return 2;round7_diag=(uint16_t)atoi(argv[2]);if(round7_diag>1U)return 2;")
    text = text.replace("    return round7_status_diff", """    printf("{\\\"policy_cases\\\":%u,\\\"policy_status_differences\\\":%u,\\\"policy_undocumented_byte_differences\\\":%u}\\n",
        policy_cases,policy_status_diff,policy_undocumented_diff);
    return policy_status_diff || policy_undocumented_diff || round7_status_diff""")
    return text.replace("@REPLAY@", (TESTS / "ti_fast_replay.c").as_posix())


def build(batch, body, cwd, log):
    batch.write_text("@echo off\n" + body + "\n", encoding="ascii")
    run = subprocess.run(["cmd.exe", "/d", "/c", str(batch)], cwd=cwd, capture_output=True, text=True)
    log.write_text(run.stdout + run.stderr, encoding="utf-8")
    if run.returncode:
        raise RuntimeError(f"HOST build failed; retained {log}")


def command(build_dir, contents):
    return (f'call "{VCVARS}" >nul && set "TMP={build_dir}" && set "TEMP={build_dir}" && '
            f'"{CLANG}" -std=c11 -O2 -Wall -Wextra -Werror -D_CRT_SECURE_NO_WARNINGS -I"{TARGET}" ' + contents)


def capture(exe, arguments, log):
    run = subprocess.run([str(exe), *map(str, arguments)], cwd=TARGET, capture_output=True, text=True)
    log.write_text(run.stdout + run.stderr, encoding="utf-8")
    return run


def compare_closed_loop(current):
    previous = EVIDENCE / "round6/closed_loop"
    helper = load_round6_runner()
    pairs = []
    for old in sorted(previous.glob("optimized_fast_*.csv")):
        new = current / old.name
        item = helper.file_comparison(old, new)
        item["metrics"] = helper.file_comparison(old.with_suffix(".json"), new.with_suffix(".json"))
        pairs.append(item)
    assert len(pairs) == 10
    passed = all(x["byte_identical"] and x["all_fields_identical"] and x["metrics"]["byte_identical"] for x in pairs)
    return {"status": "PASS_ROUND6_TRAJECTORY_EQUIVALENCE" if passed else "FAIL_ROUND6_TRAJECTORY_EQUIVALENCE", "pairs": pairs,
            "scope": "HOST trajectories against round6, not target timing or hardware validation"}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, default=EVIDENCE / "round7/host/pass1")
    parser.add_argument("--compare-closed-loop", type=Path)
    args = parser.parse_args()
    out = args.output.resolve()
    if out.exists() and any(out.iterdir()):
        raise FileExistsError(f"Evidence already exists at {out}; choose fresh destination. No deletion.")
    out.mkdir(parents=True, exist_ok=True)
    if args.compare_closed_loop:
        result = compare_closed_loop(args.compare_closed_loop.resolve())
        (out / "REPORT.json").write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
        (out / "REPORT.md").write_text("# Round7 versus round6 HOST closed-loop\n\n" + result["status"] + "\n", encoding="utf-8")
        print(result["status"])
        return 0 if result["status"].startswith("PASS") else 1

    assert sha(OLD_SOURCE) == OLD_C_SHA and sha(OLD_SOURCE.with_suffix(".h")) == OLD_H_SHA
    build_dir = out / "build"
    build_dir.mkdir()
    harness = build_dir / "round7_exact_probe.c"
    harness.write_text(comparison_harness(), encoding="utf-8")
    old_object, exe = build_dir / "round6_fast.obj", build_dir / "round7_exact_probe.exe"
    renames = " ".join("-D" + n + "=" + n + "_round6" for n in
                       ("PC_run_fast", "PC_fast_predict_interval", "PC_fast_output_substeps_available",
                        "PC_fast_output_summaries_available", "PC_fast_output_integrals_available", "PC_fast_kernel_revision"))
    first = command(build_dir, f'{renames} -c "{OLD_SOURCE}" -o "{old_object}"')
    second = command(build_dir, f'"{TARGET / "vienna_pcmfpc_zcdc.c"}" "{TARGET / "vienna_pcmfpc_fast.c"}" "{harness}" "{old_object}" -o "{exe}"')
    build(build_dir / "compile_comparison.cmd", first + " && " + second, TARGET, out / "comparison_build.log")
    bytewise = []
    for diag in (1, 0):
        run = capture(exe, [INPUTS, diag], out / f"comparison_diag{diag}.log")
        lines = [json.loads(x) for x in run.stdout.splitlines() if x.startswith("{")]
        assert len(lines) == 2, run.stdout
        assert lines[0]["cases"] == 31750 and lines[0]["interval_calls_all_detail_modes"] == 140025
        bytewise.append({"diagnostic_all_angles": diag, "exit": run.returncode, "public_struct": lines[0], "cross_policy": lines[1]})

    whitebox_exe = build_dir / "round7_profile_test.exe"
    whitebox_command = command(build_dir, f'"{TARGET / "vienna_pcmfpc_zcdc.c"}" "{TESTS / "round7_profile_test.c"}" -o "{whitebox_exe}"')
    build(build_dir / "compile_whitebox.cmd", whitebox_command, TARGET, out / "whitebox_build.log")
    whitebox_run = capture(whitebox_exe, [], out / "whitebox.log")
    whitebox = json.loads(whitebox_run.stdout)

    # Rebuild only affected executable tests, using the existing meaningful
    # safety/runtime/observer checks rather than rerunning unchanged root math.
    safety = []
    for name, contents in (
        ("fast_safety", ["vienna_pcmfpc_zcdc.c", "vienna_pcmfpc_fast.c", "tests/core_fast_safety.c"]),
        ("observer", ["vienna_pcmfpc_zcdc.c", "vienna_pcmfpc_fast.c", "vienna_pcmfpc_observer.c", "tests/observer_test.c"]),
        ("runtime", ["vienna_pcmfpc_zcdc.c", "vienna_pcmfpc_fast.c", "vienna_grid_sync.c", "vienna_pcmfpc_observer.c", "tests/core_runtime_test.c"]),
    ):
        executable = build_dir / (name + ".exe")
        object_options = " ".join(f'"{TARGET / p}"' for p in contents)
        if name == "runtime":
            # Compile adapter separately with the existing hardware-only stub.
            runtime_object = build_dir / "runtime_adapter.obj"
            adapter = command(build_dir, f'-include "{TESTS / "core_runtime_stub.h"}" -c "{TARGET / "vienna_pcmfpc_runtime.c"}" -o "{runtime_object}"')
            build(build_dir / "compile_runtime_adapter.cmd", adapter, TARGET, out / "runtime_adapter_build.log")
            object_options += f' "{runtime_object}"'
        line = command(build_dir, object_options + f' -o "{executable}"')
        build(build_dir / ("compile_" + name + ".cmd"), line, TARGET, out / (name + "_build.log"))
        checked = capture(executable, [], out / (name + ".log"))
        safety.append({"name": name, "exit": checked.returncode, "stdout": checked.stdout.strip(), "command": line})

    names = ["vienna_pcmfpc_fast.c", "vienna_pcmfpc_fast.h", "vienna_pcmfpc_runtime.c", "vienna_pcmfpc_runtime.h",
             "vienna_pcmfpc_zcdc.c", "vienna_pcmfpc_zcdc.h", "vienna_pcmfpc_observer.c", "vienna_pcmfpc_observer.h",
             "vienna_grid_sync.c", "vienna_grid_sync.h", "tests/validate_round7.py", "tests/round7_profile_test.c",
             "tests/validate_round6.py", "tests/ti_fast_replay.c", "tests/core_fast_safety.c", "tests/core_runtime_test.c", "tests/observer_test.c"]
    source_sha = {}
    for name in names:
        dest = out / "source_snapshot" / name
        dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(TARGET / name, dest)
        source_sha[name] = sha(TARGET / name)
    passed = all(x["exit"] == 0 for x in bytewise + safety) and whitebox_run.returncode == 0
    result = {"date": "2026-10-26", "status": "PASS_ROUND6_EQUIVALENCE_AND_PROFILE" if passed else "FAIL_ROUND6_EQUIVALENCE_OR_PROFILE",
              "scope": "HOST sample/struct regression and fake-clock logic only; no TMU runtime, WCET or power qualification",
              "baseline_fast_c_sha256": OLD_C_SHA, "baseline_fast_h_sha256": OLD_H_SHA, "source_sha256": source_sha,
              "input_dataset_sha256": sha(INPUTS), "public_struct_comparisons": bytewise, "whitebox": whitebox,
              "whitebox_exit": whitebox_run.returncode, "safety_runtime_observer": safety,
              "original_piecewise_strict_equivalence": "Inherited FAIL not retested or weakened; 1887 historical selected differences remain",
              "root_and_model_criteria": "Root/model function bodies reviewed unchanged; independent round6 tests remain baseline evidence",
              "comparison_build_commands": [first, second], "whitebox_build_command": whitebox_command,
              "no_control_source_edits_or_hardware_actions_or_deletions": True}
    (out / "REPORT.json").write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
    (out / "source_snapshot/manifest.json").write_text(json.dumps(source_sha, indent=2) + "\n", encoding="utf-8")
    text = ["# Round7 versus frozen round6 HOST validation", "", result["status"], "",
            "Full and local diagnostic policies are compared separately against the same-policy frozen round6 implementation.",
            "Cross-policy comparison permits only non-intersection angle cost slots to become zero and zcdc_diag[4] to become -1.",
            "All predictions, current/midpoint costs, ranks, intersection fields, selected states and selected costs must otherwise match byte-for-byte.", "",
            "```json", json.dumps(bytewise, indent=2), "```", "", "```json", json.dumps(whitebox, indent=2), "```", "",
            "Runtime, safety and observer executable results are in REPORT.json and retained logs.",
            "Fake-clock stages include instrumentation overhead and nested root time; host counts are not hardware cycle measurements.",
            "Earlier piecewise strict-equivalence FAIL remains unchanged. No target timing, universal floating-point identity or hardware permission is inferred."]
    (out / "REPORT.md").write_text("\n".join(text) + "\n", encoding="utf-8")
    print(result["status"])
    print(json.dumps({"bytewise": bytewise, "whitebox": whitebox, "safety": safety}))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
