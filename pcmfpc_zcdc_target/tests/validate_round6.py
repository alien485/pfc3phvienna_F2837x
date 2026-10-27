"""Round6 HOST regression against the frozen round5 lambda kernel.

The original float-piecewise equivalence test remains a separate FAIL.  This
runner never changes those criteria or any control source.  It additionally
links the actual frozen round5 and current fast translation units, with only
public-symbol renaming for the old one, and compares initialized result bytes.
No hardware access, IDE build, cleaning, or file deletion is performed.
"""
from pathlib import Path
import argparse
import csv
import hashlib
import json
import shutil
import subprocess
import sys

TESTS = Path(__file__).resolve().parent
TARGET = TESTS.parent
ROOT = TARGET.parents[3]
EVIDENCE = ROOT / "output/ti_pcmfpc_zcdc_port/rt_optimization"
BASELINE = EVIDENCE / "round5/host/pass2/raw"
OLD_SOURCE = EVIDENCE / "build_pass5_final/vienna_pcmfpc_fast.c"
OLD_SHA = "25d29682837e9c2379c7b3c9d3523f5f25f5db980499987423e3dab1915e9872"
CLANG = Path(r"D:/MATLAB2023b/install/toolbox/sldrt/clang/win64/clang.exe")
VCVARS = Path(r"D:/VisualStudio/Microsoft Visual_Studio2022BuildTools/VC/Auxiliary/Build/vcvars64.bat")


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def file_comparison(old, new):
    result = {"baseline": str(old), "current": str(new), "baseline_sha256": sha(old),
              "current_sha256": sha(new), "byte_identical": old.read_bytes() == new.read_bytes()}
    if old.suffix == ".csv":
        with old.open(newline="") as a, new.open(newline="") as b:
            previous, current = list(csv.DictReader(a)), list(csv.DictReader(b))
        result.update(baseline_rows=len(previous), current_rows=len(current),
                      differing_rows=[k + 1 for k, (a, b) in enumerate(zip(previous, current)) if a != b])
        result["all_fields_identical"] = len(previous) == len(current) and not result["differing_rows"]
    return result


def closed_loop_report(current):
    baseline = EVIDENCE / "round5/closed_loop_final"
    rows = []
    for old in sorted(baseline.glob("optimized_fast_*.csv")):
        new = current / old.name
        if not new.is_file():
            raise FileNotFoundError(new)
        comparison = file_comparison(old, new)
        a, b = old.with_suffix(".json"), new.with_suffix(".json")
        comparison["metrics"] = file_comparison(a, b)
        comparison["metric_values_identical"] = json.loads(a.read_text()) == json.loads(b.read_text())
        rows.append(comparison)
    assert len(rows) == 10, len(rows)
    passed = all(x["byte_identical"] and x["all_fields_identical"] and
                 x["metrics"]["byte_identical"] and x["metric_values_identical"] for x in rows)
    return {"status": "PASS_ROUND5_TRAJECTORY_EQUIVALENCE" if passed else "FAIL_ROUND5_TRAJECTORY_EQUIVALENCE",
            "pairs": rows,
            "scope": "Only round5 lambda versus round6 lambda HOST trajectories. This does not reverse the original committed44 exact-regression FAIL or establish target timing."}


HARNESS = r'''
/* The unmodified original harness supplies only parsing/config/test-data
 * helpers here. Both controller implementations are separately compiled. */
#define main original_replay_main_not_executed
#include "@REPLAY@"
#undef main

extern uint16_t PC_run_fast_round5(const PC_Config *,const PC_Input *,PC_Output *);
extern uint16_t PC_fast_predict_interval_round5(const PC_Config *,const PC_Real *,
    PC_Real,PC_Real,uint16_t,PC_Real,PC_Real,const PC_Real *,PC_Real,PC_Interval *,uint16_t);
extern volatile uint16_t PC_fast_output_substeps_available_round5;
extern volatile uint16_t PC_fast_output_summaries_available_round5;
extern volatile uint16_t PC_fast_output_integrals_available_round5;

static PC_Output round6_now,round6_old;
static unsigned round6_cases,round6_output_bytes_diff,round6_status_diff,round6_flags_diff;
static unsigned round6_revision_diff;
static unsigned round6_interval_calls,round6_interval_diff,round6_interval_status_diff;

static void round6_interval(const PC_Config *c,const PC_Input *in,const PC_Real dq[2],
    PC_Real up,PC_Real low,uint16_t hw,PC_Real theta,PC_Real duration)
{
    PC_Interval a,b;uint16_t sa,sb,detail;
    for(detail=0;detail<=PC_FAST_CONTROL_ONLY;detail++){
        memset(&a,0xa5,sizeof(a));memset(&b,0xa5,sizeof(b));round6_interval_calls++;
        sa=PC_fast_predict_interval_round5(c,dq,up,low,hw,theta,in->omega_rad_s,
            in->fhat_A_s,duration,&a,detail);
        sb=PC_fast_predict_interval(c,dq,up,low,hw,theta,in->omega_rad_s,
            in->fhat_A_s,duration,&b,detail);
        round6_interval_status_diff+=sa!=sb;
        if(sa==PC_OK && sb==PC_OK && memcmp(&a,&b,sizeof(a)))round6_interval_diff++;
    }
}
static void round6_case(const PC_Config *c,const PC_Input *in)
{
    uint16_t sa,sb,flag[3];PC_Real dq[2];unsigned j;
    round6_cases++;
    memset(&round6_now,0xa5,sizeof(round6_now));memset(&round6_old,0xa5,sizeof(round6_old));
    sa=PC_run_fast_round5(c,in,&round6_old);
    flag[0]=PC_fast_output_substeps_available_round5;
    flag[1]=PC_fast_output_summaries_available_round5;
    flag[2]=PC_fast_output_integrals_available_round5;
    PC_fast_kernel_revision=0U; /* HOST only: verify the live entry reasserts its version. */
    sb=PC_run_fast(c,in,&round6_now);
    round6_revision_diff+=PC_fast_kernel_revision!=6U;
    round6_status_diff+=sa!=sb;
    round6_flags_diff+=(flag[0]!=PC_fast_output_substeps_available ||
        flag[1]!=PC_fast_output_summaries_available || flag[2]!=PC_fast_output_integrals_available);
    /* Identical fill values make unchanged/unavailable members and structure
       padding deterministic. No stale diagnostic RAM is treated as valid. */
    if(memcmp(&round6_now,&round6_old,sizeof(round6_now)))round6_output_bytes_diff++;
    if(sa==PC_OK && sb==PC_OK){
        PC_abc_to_dq(in->iabc_A,in->theta_rad,dq);
        round6_interval(c,in,dq,in->up_V,in->low_V,in->applied_hw_state,
            in->theta_rad,c->first_duration_s);
        if(round6_cases%17U==0U){
            PC_Real dc=in->up_V+in->low_V;
            PC_Real up=(dc-round6_old.np1_V)*0.5f,low=(dc+round6_old.np1_V)*0.5f;
            PC_Real theta=in->theta_rad+in->omega_rad_s*c->first_duration_s;
            for(j=0;j<8;j++)round6_interval(c,in,round6_old.idq1_A,up,low,
                PC_id_to_hw((uint16_t)(j+1)),theta,c->candidate_duration_s);
        }
    }
}
int main(int argc,char **argv)
{
    FILE *input;char line[4096];double values[24];PC_Config c,threshold;PC_Input in;unsigned row=0;
    if(argc!=2)return 2;
    input=fopen(argv[1],"r");if(!input)return 3;
    while(fgets(line,sizeof(line),input)){
        row++;if(!parse_row(line,values))return 4;
        map_input(values,&c,&in);round6_case(&c,&in);
        if(row%11U==0U && PC_run(&c,&in,&reference)==PC_OK){
            float gap=sqrtf(reference.gi[reference.order_i[1]-1U])-sqrtf(reference.gi[reference.order_i[0]-1U]);
            if(isfinite(gap) && gap>=0.0f){
                threshold=c;threshold.delta_i_A=nextafterf(gap,INFINITY);round6_case(&threshold,&in);
                threshold.delta_i_A=gap;round6_case(&threshold,&in);
                threshold.delta_i_A=nextafterf(gap,-INFINITY);
                if(threshold.delta_i_A>=0.0f)round6_case(&threshold,&in);
            }
        }
    }
    fclose(input);
    PC_default_config(&c);c.root_method=PC_ROOT_PIECEWISE;memset(&in,0,sizeof(in));
    in.up_V=in.low_V=85.0f;in.omega_rad_s=314.159265f;in.id_ref_A=2.0f;
    for(row=0;row<8;row++){
        PC_Input bad=in;
        if(row==0)bad.id_ref_A=NAN;if(row==1)bad.omega_rad_s=INFINITY;
        if(row==2)bad.up_V=0;if(row==3)bad.low_V=-1;
        if(row==4)bad.applied_hw_state=8;if(row==5)bad.fhat_A_s[0]=NAN;
        if(row==6)bad.iabc_A[1]=INFINITY;if(row==7)bad.eabc_V[2]=NAN;
        round6_case(&c,&bad);
    }
    threshold=c;threshold.L_H=0.0f;round6_case(&threshold,&in);
    threshold=c;threshold.C_half_F=-1.0f;round6_case(&threshold,&in);
    threshold=c;threshold.delta_i_A=-0.01f;round6_case(&threshold,&in);
    printf("{\"cases\":%u,\"status_differences\":%u,\"public_flag_differences\":%u,"
        "\"PC_Output_byte_difference_rows\":%u,\"interval_calls_all_detail_modes\":%u,"
        "\"interval_status_differences\":%u,\"PC_Interval_byte_difference_calls\":%u,\"revision_errors\":%u}\n",
        round6_cases,round6_status_diff,round6_flags_diff,round6_output_bytes_diff,
        round6_interval_calls,round6_interval_status_diff,round6_interval_diff,round6_revision_diff);
    return round6_status_diff || round6_flags_diff || round6_output_bytes_diff ||
        round6_interval_status_diff || round6_interval_diff || round6_revision_diff;
}
'''


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, default=EVIDENCE / "round6/host")
    parser.add_argument("--compare-closed-loop", type=Path,
                        help="Only compare completed round6 trajectories to frozen round5; no compilation")
    args = parser.parse_args()
    out = args.output.resolve()
    if out.exists() and any(out.iterdir()):
        raise FileExistsError(f"Evidence exists at {out}; select a fresh output. No deletion performed.")
    out.mkdir(parents=True, exist_ok=True)
    if args.compare_closed_loop is not None:
        result = closed_loop_report(args.compare_closed_loop.resolve())
        (out / "REPORT.json").write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
        (out / "REPORT.md").write_text("# Round6 versus round5 closed-loop regression\n\n" + result["status"] +
            "\n\nAll ten optimized HOST CSVs and metric JSONs must remain byte-identical.\n" + result["scope"] + "\n", encoding="utf-8")
        print(result["status"], flush=True)
        return 0 if result["status"].startswith("PASS_") else 1

    assert sha(OLD_SOURCE) == OLD_SHA, "Frozen round5 baseline drifted"
    old_header = OLD_SOURCE.with_suffix(".h")
    assert sha(old_header) == "fb1edfd454046ca0cef110d120ae88c92c7fd207320bc159beee748d8eebf945"
    raw = out / "raw"
    command = [sys.executable, str(TESTS / "validate_lambda_root.py"), "--output", str(raw)]
    run = subprocess.run(command, cwd=TARGET, capture_output=True, text=True)
    (out / "original_harness.log").write_text(run.stdout + run.stderr, encoding="utf-8")
    if not (raw / "REPORT.json").is_file():
        raise RuntimeError("Original harness failed before writing evidence; see original_harness.log")
    current = json.loads((raw / "REPORT.json").read_text())
    previous = json.loads((BASELINE / "REPORT.json").read_text())
    comparisons = [file_comparison(BASELINE / name, raw / name) for name in
                   ("lambda_exact_replay_outputs.csv", "lambda_exact_replay_differences.csv",
                    "legacy_exact_replay_outputs.csv", "root_blocked_edges.csv", "lambda_focus.log")]
    build = out / "build"
    build.mkdir(exist_ok=True)
    harness = build / "round6_exact_probe.c"
    harness.write_text(HARNESS.replace("@REPLAY@", (TESTS / "ti_fast_replay.c").as_posix()), encoding="utf-8")
    old_object, exe = build / "round5_fast.obj", build / "round6_exact_probe.exe"
    flags = "-std=c11 -O2 -Wall -Wextra -Werror -D_CRT_SECURE_NO_WARNINGS"
    renames = " ".join("-D" + name + "=" + name + "_round5" for name in
                       ("PC_run_fast", "PC_fast_predict_interval", "PC_fast_output_substeps_available",
                        "PC_fast_output_summaries_available", "PC_fast_output_integrals_available",
                        "PC_fast_kernel_revision"))
    body = (f'call "{VCVARS}" >nul && set "TMP={build}" && set "TEMP={build}" && '
            f'"{CLANG}" {flags} {renames} -c "{OLD_SOURCE}" -o "{old_object}" && '
            f'"{CLANG}" {flags} "{TARGET / "vienna_pcmfpc_zcdc.c"}" "{TARGET / "vienna_pcmfpc_fast.c"}" '
            f'"{harness}" "{old_object}" -o "{exe}"')
    batch = build / "build_exact_probe.cmd"
    batch.write_text("@echo off\n" + body + "\n", encoding="ascii")
    compiled = subprocess.run(["cmd.exe", "/d", "/c", str(batch)], cwd=TARGET, capture_output=True, text=True)
    (out / "exact_probe_build.log").write_text(compiled.stdout + compiled.stderr, encoding="utf-8")
    if compiled.returncode:
        raise RuntimeError("Bytewise comparison harness compile failed; exact_probe_build.log retained")
    checked = subprocess.run([str(exe), str(raw / "inputs.csv")], cwd=TARGET, capture_output=True, text=True)
    (out / "exact_probe.log").write_text(checked.stdout + checked.stderr, encoding="utf-8")
    bytewise = json.loads(checked.stdout)
    dense_exe = build / "dense_root_probe.exe"
    dense_command = (f'call "{VCVARS}" >nul && set "TMP={build}" && set "TEMP={build}" && '
                     f'"{CLANG}" {flags} "{TARGET / "vienna_pcmfpc_zcdc.c"}" '
                     f'"{TESTS / "dense_root_probe.c"}" -o "{dense_exe}"')
    dense_batch = build / "build_dense_probe.cmd"
    dense_batch.write_text("@echo off\n" + dense_command + "\n", encoding="ascii")
    dense_built = subprocess.run(["cmd.exe", "/d", "/c", str(dense_batch)], cwd=TARGET, capture_output=True, text=True)
    (out / "dense_probe_build.log").write_text(dense_built.stdout + dense_built.stderr, encoding="utf-8")
    if dense_built.returncode:
        raise RuntimeError("Dense root probe compilation failed; evidence retained")
    dense_run = subprocess.run([str(dense_exe), str(out / "dense_root_differences.csv")],
                               cwd=TARGET, capture_output=True, text=True)
    (out / "dense_probe.log").write_text(dense_run.stdout + dense_run.stderr, encoding="utf-8")
    dense = json.loads(dense_run.stdout)
    assert bytewise["cases"] == 31750, bytewise
    same_summary = current["exact_replays"] == previous["exact_replays"]
    same_model = current["double_model_probe"] == previous["double_model_probe"]
    same_inputs = current["dataset_sha256"] == previous["dataset_sha256"]
    passed = (checked.returncode == 0 and dense_run.returncode == 0 and all(x["byte_identical"] for x in comparisons) and same_summary and
              same_model and same_inputs and current["safety_and_independent_model_checks_pass"] and
              run.returncode == 1 and current["status"] == "FAIL_EXACT_EQUIVALENCE")
    sources = ["vienna_pcmfpc_fast.c", "vienna_pcmfpc_fast.h", "vienna_pcmfpc_zcdc.c", "vienna_pcmfpc_zcdc.h",
               "vienna_pcmfpc_runtime.c", "vienna_pcmfpc_runtime.h", "vienna_pcmfpc_observer.c",
               "vienna_pcmfpc_observer.h", "vienna_grid_sync.c", "vienna_grid_sync.h",
               "tests/validate_round6.py", "tests/validate_lambda_root.py", "tests/lambda_root_probe.c",
               "tests/ti_fast_replay.c", "tests/core_fast_safety.c", "tests/core_runtime_test.c", "tests/observer_test.c", "tests/dense_root_probe.c"]
    snapshot = out / "source_snapshot"
    snapshot.mkdir(exist_ok=True)
    source_sha = {}
    for name in sources:
        source = TARGET / name
        dest = snapshot / name
        dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(source, dest)
        source_sha[name] = sha(source)
    result = {"date": "2026-10-26", "status": "PASS_ROUND5_EQUIVALENCE" if passed else "FAIL_ROUND5_EQUIVALENCE",
              "scope": "HOST bit regression against round5 lambda, not mathematical identity on all inputs, target TMU/WCET or hardware qualification",
              "baseline_fast_c_sha256": OLD_SHA, "baseline_fast_h_sha256": sha(old_header), "source_sha256": source_sha,
              "original_piecewise_equivalence_status": current["status"],
              "original_harness_return_code": run.returncode,
              "original_strict_replay": current["exact_replays"]["lambda_exact_replay"],
              "original_harness_summary_unchanged_vs_round5": same_summary,
              "input_dataset_sha256_identical_vs_round5": same_inputs,
              "independent_model_summary_unchanged_vs_round5": same_model,
              "safety_and_independent_model_checks_pass": current["safety_and_independent_model_checks_pass"],
              "bytewise_public_struct_comparison": bytewise, "bytewise_probe_run_exit": checked.returncode,
              "bytewise_probe_build_command": body, "comparison_harness_sha256": sha(harness),
              "dense_root_differential": dense, "dense_root_probe_run_exit": dense_run.returncode,
              "dense_root_build_command": dense_command,
              "frozen_csv_and_focus_comparisons": comparisons,
              "closed_loop_comparison": "Parent runs the original closed-loop driver; use --compare-closed-loop afterward.",
              "no_control_source_changes_by_validation": True, "no_hardware_actions_or_cleanup": True}
    (out / "REPORT.json").write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
    (snapshot / "manifest.json").write_text(json.dumps(source_sha, indent=2) + "\n", encoding="utf-8")
    text = ["# Round6 against frozen round5 lambda HOST regression", "", result["status"], "",
            "The original float-piecewise strict-equivalence FAIL remains FAIL, including 1887 changed selected IDs. This report only tests whether dense-state specialization preserves the frozen round5 lambda variant.", "",
            f"Actual frozen/current linked implementations: {bytewise['cases']} PC_Output comparisons; "
            f"{bytewise['interval_calls_all_detail_modes']} PC_Interval calls across FULL/SUMMARY/CONTROL detail modes.",
            f"Status/flags/PC_Output bytes/PC_Interval bytes differences: {bytewise['status_differences']}/"
            f"{bytewise['public_flag_differences']}/{bytewise['PC_Output_byte_difference_rows']}/{bytewise['PC_Interval_byte_difference_calls']}.",
            "Outputs receive identical initial byte patterns; unavailable fields/padding are not interpreted as physical diagnostics.",
            "", f"Original replay summary unchanged: {same_summary}; independent-double/root-probe summary unchanged: {same_model}.",
            f"Dense/generic whitebox root comparison: {dense}. Every differing row is retained in dense_root_differences.csv.",
            f"Safety, runtime and observer checks: {current['safety_and_independent_model_checks_pass']}.",
            "All raw CSV/focus/edge files are retained and compared by SHA/bytes. The 80000 root and 48000 independent interval checks retain their original numerical criteria.",
            "", "Closed-loop trajectory equivalence is a separate comparison after the parent finishes its original driver.",
            "No target timing, TMU bit identity, protection qualification, or power run is inferred from these host results."]
    (out / "REPORT.md").write_text("\n".join(text) + "\n", encoding="utf-8")
    print(result["status"], flush=True)
    print(json.dumps(bytewise), flush=True)
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
