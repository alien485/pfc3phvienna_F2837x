"""Round11 independent HOST regression against the pinned round10 kernel.

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
import re
import shutil
import subprocess

TESTS = Path(__file__).resolve().parent
TARGET = TESTS.parent
ROOT = TARGET.parents[3]
EVIDENCE = ROOT / "output/ti_pcmfpc_zcdc_port/rt_optimization"
OLD_SOURCE = EVIDENCE / "round11/validation_baseline/vienna_pcmfpc_fast.c"
OLD_C_SHA = "924aa19f11699214ee06d1581f1044e240dd99821e90cf7d48ca1b7546b0557d"
OLD_H_SHA = "28e0b215684ef7c65a53a1fc1c79391d1abf7609cebea0ab93fd6ce5fe245aad"
INPUTS = EVIDENCE / "round6/host/pass2/raw/inputs.csv"
CLANG = Path("D:/MATLAB2023b/install/toolbox/sldrt/clang/win64/clang.exe")
VCVARS = Path("D:/VisualStudio/Microsoft Visual_Studio2022BuildTools/VC/Auxiliary/Build/vcvars64.bat")
SOURCE_NAMES = ["vienna_pcmfpc_fast.c", "vienna_pcmfpc_fast.h", "vienna_pcmfpc_runtime.c", "vienna_pcmfpc_runtime.h",
                "vienna_pcmfpc_zcdc.c", "vienna_pcmfpc_zcdc.h", "vienna_pcmfpc_observer.c", "vienna_pcmfpc_observer.h",
                "vienna_grid_sync.c", "vienna_grid_sync.h", "tests/validate_round11.py", "tests/single_on_root_probe.c",
                "tests/validate_round6.py", "tests/round7_profile_test.c", "tests/round8_control_test.c", "tests/ti_fast_replay.c",
                "tests/core_fast_safety.c", "tests/core_runtime_test.c", "tests/observer_test.c"]


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def unchanged_model_functions():
    old = OLD_SOURCE.read_text(encoding="utf-8")
    current = (TARGET / "vienna_pcmfpc_fast.c").read_text(encoding="utf-8")
    def body(text, name):
        match = re.search(r"\b" + re.escape(name) + r"\s*\([^;{}]*\)\s*\{", text)
        assert match, name
        depth, end = 1, match.end()
        while depth:
            depth += (text[end] == "{") - (text[end] == "}")
            end += 1
        return text[match.start():end]
    names = ("pf_lambda_plan", "pf_lambda_single_plan", "pf_lambda_root", "pf_lambda_dense_root", "pf_root", "pf_interval",
             "pf_rotation", "pf_plan", "pf_dq_to_abc", "pf_abc_to_dq", "pf_seed", "pf_projection",
             "pf_rank", "pf_angle_cost", "pf_output_init", "pf_intersection")
    result = {name: body(old, name) == body(current, name) for name in names}
    assert all(result.values()), result
    return {"unchanged_functions": result, "text_comparison_ignores_only_line_endings": True}


def load_corpus_runner():
    spec = importlib.util.spec_from_file_location("frozen_corpus_test_helpers", TESTS / "validate_round6.py")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def comparison_harness():
    # Reuse the executed corpus/budget-boundary generation, not controller code.
    text = load_corpus_runner().HARNESS.replace("round6", "round11").replace("round5", "round10")
    text = text.replace("PC_fast_kernel_revision!=6U", "PC_fast_kernel_revision!=11U")
    text = text.replace("static PC_Output round11_now,round11_old;", """static PC_Output round11_now,round11_old;
static uint16_t round11_diag;
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
    text = text.replace("    uint16_t sa,sb,flag[3];PC_Real dq[2];unsigned j;\n    round11_cases++;", """    uint16_t sa,sb,flag[3];PC_Real dq[2];unsigned j;
    PC_Config policy=*c;policy.diagnostic_all_angles=round11_diag;c=&policy;
    round11_cases++;""")
    text = text.replace("    if(sa==PC_OK && sb==PC_OK){", "    if(round11_diag)compare_policy(c,in,&round11_now);\n    if(sa==PC_OK && sb==PC_OK){", 1)
    text = text.replace("    if(argc!=2)return 2;", "    if(argc!=3)return 2;round11_diag=(uint16_t)atoi(argv[2]);if(round11_diag>1U)return 2;")
    text = text.replace("    return round11_status_diff", """    printf("{\\\"policy_cases\\\":%u,\\\"policy_status_differences\\\":%u,\\\"policy_undocumented_byte_differences\\\":%u}\\n",
        policy_cases,policy_status_diff,policy_undocumented_diff);
    return policy_status_diff || policy_undocumented_diff || round11_status_diff""")
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
    previous = EVIDENCE / "round10/closed_loop"
    helper = load_corpus_runner()
    pairs = []
    for old in sorted(previous.glob("optimized_fast_*.csv")):
        new = current / old.name
        item = helper.file_comparison(old, new)
        item["metrics"] = helper.file_comparison(old.with_suffix(".json"), new.with_suffix(".json"))
        pairs.append(item)
    assert len(pairs) == 10
    passed = all(x["byte_identical"] and x["all_fields_identical"] and x["metrics"]["byte_identical"] for x in pairs)
    return {"status": "PASS_ROUND10_TRAJECTORY_EQUIVALENCE" if passed else "FAIL_ROUND10_TRAJECTORY_EQUIVALENCE", "pairs": pairs,
            "scope": "HOST trajectories against round10, not target timing or hardware validation"}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, default=EVIDENCE / "round11/host/pass1")
    parser.add_argument("--compare-closed-loop", type=Path)
    args = parser.parse_args()
    out = args.output.resolve()
    if out.exists() and any(out.iterdir()):
        raise FileExistsError(f"Evidence already exists at {out}; choose fresh destination. No deletion.")
    if args.compare_closed_loop is None:
        candidate = (TARGET / "vienna_pcmfpc_fast.c").read_text(encoding="utf-8")
        assert re.search(r"PC_fast_kernel_revision\s*=\s*11U", candidate), "Live kernel is not frozen round11; do not test round10 as a new candidate"
    out.mkdir(parents=True, exist_ok=True)
    if args.compare_closed_loop:
        result = compare_closed_loop(args.compare_closed_loop.resolve())
        (out / "REPORT.json").write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
        (out / "REPORT.md").write_text("# Round11 versus round10 HOST closed-loop\n\n" + result["status"] + "\n", encoding="utf-8")
        print(result["status"])
        return 0 if result["status"].startswith("PASS") else 1

    assert sha(OLD_SOURCE) == OLD_C_SHA and sha(OLD_SOURCE.with_suffix(".h")) == OLD_H_SHA
    unchanged_functions = unchanged_model_functions()
    source_before = {name: sha(TARGET / name) for name in SOURCE_NAMES}
    build_dir = out / "build"
    build_dir.mkdir()
    harness = build_dir / "round11_exact_probe.c"
    harness.write_text(comparison_harness(), encoding="utf-8")
    old_object, exe = build_dir / "round10_fast.obj", build_dir / "round11_exact_probe.exe"
    renames = " ".join("-D" + n + "=" + n + "_round10" for n in
                       ("PC_run_fast", "PC_fast_predict_interval", "PC_fast_output_substeps_available",
                        "PC_fast_output_summaries_available", "PC_fast_output_integrals_available", "PC_fast_kernel_revision",
                        "PC_fast_profile", "PC_fast_profile_configure", "PC_fast_profile_arm"))
    old_wrapper = build_dir / "round10_control_export.c"
    old_wrapper.write_text('#include <string.h>\n#include "' + OLD_SOURCE.as_posix() + '"\n' + r'''
/* Exposes the actual frozen private interval for direct same-input testing. */
uint16_t round10_control_export(const PC_Config *cfg,const PC_Real dq[2],
    PC_Real up,PC_Real low,uint16_t hw,const PC_Real f[2],PC_Real theta,
    PC_Real omega,PC_Real duration,uint16_t use_seed,uint16_t override_c,
    PC_Real c,PC_Interval *out)
{
    PF_Plan plan;PF_Seed seed;
    pf_plan(cfg,theta,omega,duration,&plan);
    if(override_c)plan.c=c;
    if(use_seed)pf_seed(dq,f,up,low,&plan,&seed);
    return pf_control_interval(cfg,dq,up,low,hw,f,&plan,out,use_seed?&seed:0);
}
uint16_t round10_single_root_export(const PC_Real q[3],uint16_t hw,PC_Real c,
    PC_Real up,PC_Real low,PC_Real next[3],uint16_t shared,const PC_Real seed_q[3],
    PC_Real seed_c,PC_Real seed_up,PC_Real seed_low,uint16_t forced_status)
{
    PF_LambdaPlan plan;memset(&plan,0xa5,sizeof(plan));
    if(shared){
        pf_lambda_plan(seed_q,seed_c,seed_up,seed_low,&plan);
        if(forced_status!=0xffffU)plan.status=forced_status;
    }
    return pf_lambda_root(q,hw,c,up,low,next,shared?&plan:0);
}
''', encoding="utf-8")
    first = command(build_dir, f'{renames} -c "{old_wrapper}" -o "{old_object}"')
    second = command(build_dir, f'"{TARGET / "vienna_pcmfpc_zcdc.c"}" "{TARGET / "vienna_pcmfpc_fast.c"}" "{harness}" "{old_object}" -o "{exe}"')
    build(build_dir / "compile_comparison.cmd", first + " && " + second, TARGET, out / "comparison_build.log")
    bytewise = []
    for diag in (1, 0):
        run = capture(exe, [INPUTS, diag], out / f"comparison_diag{diag}.log")
        lines = [json.loads(x) for x in run.stdout.splitlines() if x.startswith("{")]
        assert len(lines) == 2, run.stdout
        assert lines[0]["cases"] == 31750 and lines[0]["interval_calls_all_detail_modes"] == 140025
        bytewise.append({"diagnostic_all_angles": diag, "exit": run.returncode, "public_struct": lines[0], "cross_policy": lines[1]})

    control_harness = build_dir / "round11_control_profile_test.c"
    control_text = (TESTS / "round8_control_test.c").read_text(encoding="utf-8")
    control_text = control_text.replace('#include "round7_profile_test.c"', '#include "' + (TESTS / "round7_profile_test.c").as_posix() + '"')
    control_text = control_text.replace("round7_control_export", "round10_control_export").replace("frozen v7", "frozen v10")
    control_harness.write_text(control_text, encoding="utf-8")
    whitebox_exe = build_dir / "round11_control_profile_test.exe"
    whitebox_command = command(build_dir, f'"{TARGET / "vienna_pcmfpc_zcdc.c"}" "{control_harness}" "{old_object}" -o "{whitebox_exe}"')
    build(build_dir / "compile_whitebox.cmd", whitebox_command, TARGET, out / "whitebox_build.log")
    whitebox_run = capture(whitebox_exe, [], out / "whitebox.log")
    whitebox = json.loads(whitebox_run.stdout)

    single_exe = build_dir / "single_on_root_probe.exe"
    single_command = command(build_dir, f'-Dround8_single_root_export=round10_single_root_export "{TARGET / "vienna_pcmfpc_zcdc.c"}" "{TESTS / "single_on_root_probe.c"}" "{old_object}" -o "{single_exe}"')
    build(build_dir / "compile_single_root.cmd", single_command, TARGET, out / "single_root_build.log")
    single_run = capture(single_exe, [out / "single_root_differences.csv"], out / "single_root.log")
    single = json.loads(single_run.stdout)

    edge_template = EVIDENCE / "round11/host_templates/public_batch_edges.c"
    edge_template_sha = sha(edge_template)
    edge_source = build_dir / "public_batch_edges.c"
    shutil.copyfile(edge_template, edge_source)
    edge_exe = build_dir / "public_batch_edges.exe"
    edge_command = command(build_dir, f'"{TARGET / "vienna_pcmfpc_zcdc.c"}" "{TARGET / "vienna_pcmfpc_fast.c"}" "{edge_source}" "{old_object}" -o "{edge_exe}"')
    build(build_dir / "compile_public_edges.cmd", edge_command, TARGET, out / "public_edges_build.log")
    edge_run = capture(edge_exe, [], out / "public_edges.log")
    public_edges = json.loads(edge_run.stdout)
    assert sha(edge_template) == edge_template_sha, "Public edge test template changed during run"

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

    source_sha = {}
    for name in SOURCE_NAMES:
        assert sha(TARGET / name) == source_before[name], "Executed source changed during HOST run: " + name
        dest = out / "source_snapshot" / name
        dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(TARGET / name, dest)
        source_sha[name] = sha(TARGET / name)
    passed = (all(x["exit"] == 0 for x in bytewise + safety) and whitebox_run.returncode == 0
              and single_run.returncode == 0 and edge_run.returncode == 0)
    result = {"date": "2026-10-27", "status": "PASS_ROUND10_EQUIVALENCE_AND_PROFILE" if passed else "FAIL_ROUND10_EQUIVALENCE_OR_PROFILE",
              "scope": "HOST sample/struct regression and fake-clock logic only; no TMU runtime, WCET or power qualification",
              "baseline_fast_c_sha256": OLD_C_SHA, "baseline_fast_h_sha256": OLD_H_SHA, "source_sha256": source_sha,
              "unchanged_model_and_intersection_function_bodies": unchanged_functions,
              "input_dataset_sha256": sha(INPUTS), "public_struct_comparisons": bytewise, "whitebox": whitebox,
              "whitebox_exit": whitebox_run.returncode, "safety_runtime_observer": safety,
              "single_on_root_differential": single, "single_on_root_run_exit": single_run.returncode,
              "single_on_root_build_command": single_command,
              "public_parameter_and_alias_edges": public_edges, "public_edge_exit": edge_run.returncode,
              "public_edge_template_sha256": edge_template_sha, "public_edge_build_command": edge_command,
              "original_piecewise_strict_equivalence": "Inherited FAIL not retested or weakened; 1887 historical selected differences remain",
              "root_and_model_criteria": "16 model/root/transform/intersection helper bodies unchanged; independent round10 mathematics tests remain baseline evidence",
              "comparison_build_commands": [first, second], "whitebox_build_command": whitebox_command,
              "no_control_source_edits_or_hardware_actions_or_deletions": True}
    (out / "REPORT.json").write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
    (out / "source_snapshot/manifest.json").write_text(json.dumps(source_sha, indent=2) + "\n", encoding="utf-8")
    text = ["# Round11 versus frozen round10 HOST validation", "", result["status"], "",
            "Full and local diagnostic policies are compared separately against the same-policy frozen round10 implementation; the rejected A/B floating-point coordinate-reuse trials are not installed.",
            "Cross-policy comparison permits only non-intersection angle cost slots to become zero and zcdc_diag[4] to become -1.",
            "All predictions, current/midpoint costs, ranks, intersection fields, selected states and selected costs must otherwise match byte-for-byte. Rejected A/B coordinate-reuse failures remain in separate immutable reports; no epsilon is introduced.", "",
            "```json", json.dumps(bytewise, indent=2), "```", "", "```json", json.dumps(whitebox, indent=2), "```", "",
            "```json", json.dumps(single, indent=2), "```", "",
            "```json", json.dumps(public_edges, indent=2), "```", "",
            "Public derived-overflow/candidate-failure cases compare the full output including all touched and untouched sentinel fields. Legal dq/f aliases into the output's Real arrays compare all details, including the old clear-integral-before-reading-f ordering.",
            "The unchanged root helper is still compared against the separately compiled actual v10 solver, including successful and failed next-current bytes and read-only shared plans. The production candidate only eliminates unobserved OFF old-current components in candidate substep1; it preserves the original arithmetic for every consumed component.",
            "The probe also includes inconsistent/shared-status and invalid private inputs, explicitly outside normal target operating conditions.",
            "Extreme absolute residuals scale with deliberately huge test values; normalized residuals use the original tolerance. Bounded-domain summary filters: |q|<=50,0<c<0.1,0<Uup/Ulow<=200,consistent shared plan.",
            "Runtime, safety and observer executable results are in REPORT.json and retained logs.",
            "Fake-clock stages include instrumentation overhead and nested root time; host counts are not hardware cycle measurements.",
            "Actual old/new CONTROL intervals are directly compared on targeted boundary/malformed-derived-state and deterministic random inputs.",
            "The unchanged integer intersection helper retains the prior round10 exhaustive evidence and is not rerun here.",
            "Earlier piecewise strict-equivalence FAIL remains unchanged. No target timing, universal floating-point identity or hardware permission is inferred."]
    (out / "REPORT.md").write_text("\n".join(text) + "\n", encoding="utf-8")
    print(result["status"])
    print(json.dumps({"bytewise": bytewise, "whitebox": whitebox, "safety": safety}))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
