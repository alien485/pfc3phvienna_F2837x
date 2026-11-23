"""HOST-only 2x2 ablation: frozen/dynamic DC and frozen/incremental Fhat.

Creates an isolated derived predictor in output, never edits the MCU core.
The physical plant, observer/reconstruction, two substeps, limits and selector
remain fixed. Model0 must reproduce the previous sampled-limit trajectories.
No cleanup, target connection, CCS build or protection retuning occurs.
"""
from pathlib import Path
import argparse, hashlib, json, re, shutil, subprocess, sys
import validate_offline_current_limit as previous

TESTS = Path(__file__).resolve().parent
TARGET = TESTS.parent
ROOT = TARGET.parents[3]
EVIDENCE = ROOT / "output/ti_pcmfpc_zcdc_port/prediction_dynamics"
BASELINE = ROOT / "output/ti_pcmfpc_zcdc_port/offline_current_limit/pass1"
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
PUBLIC = ["PC_run_fast", "PC_fast_predict_interval", "PC_fast_profile_configure",
          "PC_fast_profile_arm", "PC_fast_profile", "PC_fast_kernel_revision",
          "PC_fast_output_substeps_available", "PC_fast_output_summaries_available",
          "PC_fast_output_integrals_available"]
API = r'''
/* HOST derived predictor API. Original PC_* remains linked for the observer. */
uint16_t OD_run_fast(const PC_Config*,const PC_Input*,PC_Output*);
uint16_t OD_fast_predict_interval(const PC_Config*,const PC_Real[2],PC_Real,
 PC_Real,uint16_t,PC_Real,PC_Real,const PC_Real[2],PC_Real,PC_Interval*,uint16_t);
extern PC_Real OD_first_dc,OD_last_dc,OD_candidate_dc[8];
extern uint16_t OD_first_valid,OD_candidate_valid_mask;
/* Standalone OD prediction is private: only after a successful OD_run_fast
 * with the SAME cfg/input. It preserves that call's original dq/F anchor.
 * Original public PC_fast_predict_interval has no such added dependency. */
'''
SUPPORT = r'''
/* Output-only model experiment. OD_MODEL bit0: DC, bit1: incremental Fhat.
 * No true/future physical state is supplied to this predictor.
 * Rload=50 ohm is an explicit NEW model dependency, not a measured estimate. */
#ifndef OD_MODEL
#define OD_MODEL 0
#endif
#if OD_MODEL < 0 || OD_MODEL > 3
#error Invalid_offline_model
#endif
PC_Real OD_first_dc,OD_last_dc,OD_candidate_dc[8];
uint16_t OD_first_valid,OD_candidate_valid_mask;
static const PC_Config *od_config;
static PC_Real od_anchor[2],od_omega;
static PC_Real od_f(const PC_Real dq[2],const PC_Real f[2],uint16_t axis)
{
    PC_Real dd,dqv;
    if(!(OD_MODEL&2))return f[axis];
    dd=dq[0]-od_anchor[0];dqv=dq[1]-od_anchor[1];
    return axis==0U?f[0]-od_config->R_ohm/od_config->L_H*dd+od_omega*dqv:
        f[1]-od_config->R_ohm/od_config->L_H*dqv-od_omega*dd;
}
static uint16_t od_dc_step(PC_Real *dc,PC_Real np,PC_Real h,uint16_t hw,
    const PC_Real old[3],const PC_Real next[3])
{
    uint16_t j;PC_Real off=(PC_Real)0,mid;
    if(!(OD_MODEL&1))return PC_OK;
    for(j=0U;j<3U;j++)if(!(hw&(uint16_t)(1U<<j))){
        mid=(old[j]+next[j])/(PC_Real)2;off+=PC_ABS(mid);
    }
    *dc+=h/od_config->C_half_F*(off-(PC_Real)2*(*dc)/(PC_Real)50);
    if(!pf_finite(*dc) || !pf_finite(np))return PC_ERR_NUMERIC;
    if(PC_ABS(np)>=*dc)return PC_ERR_MIDPOINT;
    return PC_OK;
}
'''


def generate_core(original, snapshot):
    text = original
    changes = []

    def replace(old, new, label, count=1):
        nonlocal text
        found = text.count(old)
        if found != count:
            raise ValueError(f"{label}: expected {count} anchors, found {found}")
        text = text.replace(old, new)
        changes.append({"label": label, "count": found})

    replace('#include "vienna_pcmfpc_fast.h"',
            '#include "' + (snapshot / "vienna_pcmfpc_fast.h").as_posix() + '"', "snapshot header")
    # Put support after finite checker and before any interval body. The
    # original functions remain a separate translation unit for VO_reconstruct.
    replace("static uint16_t pf_config_valid(const PC_Config *c)",
            SUPPORT + "\nstatic uint16_t pf_config_valid(const PC_Config *c)", "experimental support")
    replace("free_dq[0]=dq[0]+h*f[0];free_dq[1]=dq[1]+h*f[1];",
            "free_dq[0]=dq[0]+h*od_f(dq,f,0U);free_dq[1]=dq[1]+h*od_f(dq,f,1U);",
            "same two substeps, anchored incremental F", 2)
    replace("np+=plan->h_over_C*neutral; \\\n",
            "np+=plan->h_over_C*neutral; \\\n        status=od_dc_step(&dc,np,h,hw,w->old_abc,w->next); \\\n        if(status!=PC_OK)RETURN_STATUS(status); \\\n", "CONTROL DC update")
    replace("np+=h/cfg->C_half_F*neutral;\n",
            "np+=h/cfg->C_half_F*neutral;\n        status=od_dc_step(&dc,np,h,hw,old,next);\n        if(status!=PC_OK)return status;\n", "FULL DC update")
    replace("np=initial_np; \\\n", "np=initial_np;dc=initial_up+initial_low; \\\n", "reset candidate DC independently")
    replace("out->idq_A[0]=dq[0];out->idq_A[1]=dq[1];out->np_V=np; \\\n",
            "out->idq_A[0]=dq[0];out->idq_A[1]=dq[1];out->np_V=np;OD_last_dc=dc; \\\n", "CONTROL DC endpoint")
    replace("out->idq_A[0]=dq[0];out->idq_A[1]=dq[1];out->np_V=np;\n",
            "out->idq_A[0]=dq[0];out->idq_A[1]=dq[1];out->np_V=np;OD_last_dc=dc;\n", "FULL DC endpoint")
    replace("result->np2_V[j]=np;result->blocked_candidate[j]=out->blocked; \\\n",
            "result->np2_V[j]=np;result->blocked_candidate[j]=out->blocked;OD_candidate_dc[j]=dc;OD_candidate_valid_mask|=(uint16_t)(1U<<j); \\\n", "candidate DC trace")
    replace("PC_Real dc,up1,low1,theta1,theta2,amp;", "PC_Real dc,up1,low1,theta1,theta2,amp,od_seed_f[2];", "seed F storage")
    replace("    PC_fast_kernel_revision=10U;", "    OD_first_valid=0U;OD_candidate_valid_mask=0U;OD_first_dc=OD_last_dc=(PC_Real)0;\n    for(j=0U;j<8U;j++)OD_candidate_dc[j]=(PC_Real)0;\n    PC_fast_kernel_revision=10U;", "clear experimental trace validity at each run")
    replace("pf_abc_to_dq(in->iabc_A,&pf_input_rotation,s->dq);",
            "pf_abc_to_dq(in->iabc_A,&pf_input_rotation,s->dq);\n    od_config=cfg;od_anchor[0]=s->dq[0];od_anchor[1]=s->dq[1];od_omega=in->omega_rad_s;", "common original input anchor")
    replace("out->np1_V=out->first_interval.np_V;",
            "out->np1_V=out->first_interval.np_V;dc=OD_last_dc;OD_first_dc=dc;OD_first_valid=1U;", "carry first DC into all candidates and voltage margin")
    replace("pf_seed(out->idq1_A,in->fhat_A_s,up1,low1,&pf_candidate_plan,&pf_candidate_seed);",
            "od_seed_f[0]=od_f(out->idq1_A,in->fhat_A_s,0U);od_seed_f[1]=od_f(out->idq1_A,in->fhat_A_s,1U);\n    pf_seed(out->idq1_A,od_seed_f,up1,low1,&pf_candidate_plan,&pf_candidate_seed);", "consistent first candidate seed")
    # Standalone is called only after OD_run_fast set its common input anchor.
    # FULL auxiliaries use the same anchor; they do not initialize it anew.
    for old in sorted(PUBLIC, key=len, reverse=True):
        text = re.sub(r"\b" + old + r"\b", old.replace("PC_", "OD_", 1), text)
    return text, changes


def generate_limit(original, snapshot, api):
    text = original.replace('#include "offline_current_limit.h"',
        '#include "' + (snapshot / "tests/offline_current_limit.h").as_posix() + '"\n#include "' + api.as_posix() + '"')
    if text.count("dc=input->up_V+input->low_V;") != 1:
        raise ValueError("Constraint candidate DC anchor changed")
    text = text.replace("dc=input->up_V+input->low_V;", "dc=OD_first_dc;")
    text = re.sub(r"\bPC_run_fast\b", "OD_run_fast", text)
    text = re.sub(r"\bPC_fast_predict_interval\b", "OD_fast_predict_interval", text)
    return text


def compile_program(a, work, sources, model, name, snapshot, extra=""):
    work.mkdir(parents=True, exist_ok=True)
    exe = work / (name + ".exe")
    command = (f'call "{a.vcvars.resolve()}" >nul && set "TMP={work}" && set "TEMP={work}" && '
        f'"{a.clang.resolve()}" -std=c11 -O2 -Wall -Wextra -Werror -D_CRT_SECURE_NO_WARNINGS '
        f'-DOD_MODEL={model} {extra} ' + " ".join(f'"{p}"' for p in sources) + f' -o "{exe}"')
    batch = work / (name + ".cmd")
    batch.write_text("@echo off\n" + command + "\n", encoding="ascii")
    run = subprocess.run(["cmd.exe", "/d", "/c", str(batch)], cwd=snapshot, capture_output=True, text=True)
    (work / (name + "_build.log")).write_text(run.stdout + run.stderr, encoding="utf-8")
    if run.returncode:
        raise RuntimeError("HOST build failed: " + str(batch))
    return exe


def main():
    sys.stdout.reconfigure(encoding="utf-8")
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--output", type=Path, default=EVIDENCE / "pass1")
    ap.add_argument("--clang", type=Path, default=previous.CLANG)
    ap.add_argument("--vcvars", type=Path, default=previous.VCVARS)
    a = ap.parse_args()
    out = a.output.resolve()
    if EVIDENCE.resolve() not in out.parents:
        raise ValueError("Output path escape")
    if out.exists() and (not out.is_dir() or any(out.iterdir())):
        raise FileExistsError("Nonempty output; no overwrite or cleanup")
    old = json.loads((BASELINE / "MANIFEST.json").read_text(encoding="utf-8"))
    pins = {**old["fixed_source_sha256"], **old["new_selector_source_sha256"]}
    pins["tests/validate_offline_current_limit.py"] = sha(TESTS / "validate_offline_current_limit.py")
    pins["tests/prediction_dynamics_test.c"] = sha(TESTS / "prediction_dynamics_test.c")
    for name, digest in pins.items():
        if sha(TARGET / name) != digest:
            raise ValueError("Previous experiment source changed: " + name)
    out.mkdir(parents=True)
    snapshot = out / "source_snapshot"
    build = out / "build"
    build.mkdir()
    for name in pins:
        dest = snapshot / name
        dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(TARGET / name, dest)
    shutil.copyfile(Path(__file__), snapshot / "tests/validate_prediction_dynamics.py")
    api = build / "offline_prediction_api.h"
    api.write_text(API, encoding="utf-8")
    text, changes = generate_core((snapshot / "vienna_pcmfpc_fast.c").read_text(encoding="utf-8"), snapshot)
    core = build / "offline_prediction_core.c"
    core.write_text(text, encoding="utf-8")
    limit = build / "offline_prediction_limit.c"
    limit.write_text(generate_limit((snapshot / "tests/offline_current_limit.c").read_text(encoding="utf-8"), snapshot, api), encoding="utf-8")
    plant_text, plant_changes = previous.generate_plant((snapshot / "tests/ti_closed_loop.c").read_text(encoding="utf-8"), snapshot)
    # Preserve the original trajectory and observer, add complete input data to
    # decision sidecars only. These measured inputs support fixed-state replay.
    anchor = ' ol_write_diag(ol_decisions);fputs("}\\n",ol_decisions);'
    replacement = r''' ol_write_diag(ol_decisions);
 fprintf(ol_decisions,",\"input_iabc_A\":[%.17g,%.17g,%.17g],\"input_eabc_V\":[%.17g,%.17g,%.17g],\"theta_rad\":%.17g,\"omega_rad_s\":%.17g,\"fhat_A_s\":[%.17g,%.17g],\"predicted_dc1_V\":%.17g,\"predicted_dc2_V\":[",(double)in->iabc_A[0],(double)in->iabc_A[1],(double)in->iabc_A[2],(double)in->eabc_V[0],(double)in->eabc_V[1],(double)in->eabc_V[2],(double)in->theta_rad,(double)in->omega_rad_s,(double)in->fhat_A_s[0],(double)in->fhat_A_s[1],(double)OD_first_dc);
 for(j=0;j<8;j++)fprintf(ol_decisions,"%s%.17g",j?",":"",(double)OD_candidate_dc[j]);
 fprintf(ol_decisions,"],\"first_dc_valid\":%u,\"candidate_dc_valid_mask\":%u}\n",(unsigned)OD_first_valid,(unsigned)OD_candidate_valid_mask);'''
    if plant_text.count(anchor) != 1:
        raise ValueError("Decision log anchor changed")
    plant_text = plant_text.replace(anchor, replacement)
    plant_text = plant_text.replace("/* Output-only experiment state:", '#include "' + api.as_posix() + '"\n/* Output-only experiment state:', 1)
    plant = build / "offline_prediction_plant.c"
    plant.write_text(plant_text, encoding="utf-8")
    unit = build / "prediction_dynamics_test.c"
    unit.write_text((snapshot / "tests/prediction_dynamics_test.c").read_text(encoding="utf-8").replace(
        '#include "offline_current_limit.h"', '#include "' + (snapshot / "tests/offline_current_limit.h").as_posix() + '"\n#include "' + api.as_posix() + '"'), encoding="utf-8")
    sources = [snapshot / n for n in ["vienna_pcmfpc_zcdc.c", "vienna_pcmfpc_fast.c", "vienna_pcmfpc_observer.c", "vienna_grid_sync.c"]]
    sources += [core, limit]
    manifest = {"date": "2026-10-28", "scope": __doc__, "source_sha256": pins,
        "driver_sha256": sha(Path(__file__)), "derived_core_sha256": sha(core), "derived_limit_sha256": sha(limit),
        "derived_plant_sha256": sha(plant), "core_anchor_changes": changes, "plant_anchor_changes": plant_changes,
        "models": {"0": "fixed DC, frozen F", "1": "dynamic DC, frozen F", "2": "fixed DC, anchored incremental F", "3": "dynamic DC, anchored incremental F"},
        "fixed": {"control_Hz": 2000, "first_us": 250, "candidate_us": 500, "substeps_per_interval": 2,
                  "load_model_ohm": 50, "trip_A": 7, "OV_V": 204, "reference_limit_A": 5.5, "delta_A": 0.02,
                  "constraint_policy": 2, "model_margin_A": 0},
        "observer": "Original VO_reconstruct and original PC_fast_predict_interval. Derived symbols OD_* are isolated.",
        "hardware_qualification": False}
    (out / "MANIFEST.json").write_text(json.dumps(manifest, indent=2) + "\n", encoding="utf-8")
    units = []
    executables = {}
    for model in range(4):
        work = build / ("model" + str(model))
        exe = compile_program(a, work, sources + [unit], model, "unit", snapshot)
        run = subprocess.run([str(exe)], cwd=snapshot, capture_output=True, text=True)
        (work / "unit.log").write_text(run.stdout + run.stderr, encoding="utf-8")
        if run.returncode:
            raise RuntimeError("Derived model contract test failed: " + str(work))
        units.append(json.loads(run.stdout))
        executables[model] = compile_program(a, work, sources + [plant], model, "plant", snapshot,
            "-DTI_CLOSED_LOOP_FAST=1 -DOFFLINE_LIMIT_POLICY=2 -DSIM_CONTROL_STEP_SEC=0.000500 -DSIM_SAMPLE_OFFSET_SEC=0.000250 -DSIM_ISR_OFFSET_SEC=0.000252")
    results = []
    for model in range(4):
        for mode, name in [(1, "pc_off_nominal"), (2, "pc_on_nominal")]:
            label = f"model{model}_{name}"
            prefix = out / label
            run = subprocess.run([str(executables[model]), str(mode), "50", "0", str(prefix), "0"], cwd=snapshot, capture_output=True, text=True)
            prefix.with_suffix(".log").write_text(run.stdout + run.stderr, encoding="utf-8")
            summary = json.loads(prefix.with_suffix(".limit_summary.json").read_text(encoding="utf-8"))
            metrics = json.loads(prefix.with_suffix(".json").read_text(encoding="utf-8")) if prefix.with_suffix(".json").exists() else None
            comparison = {}
            if model == 0:
                for ext in ["csv", "json", "limit_events.jsonl", "limit_summary.json"]:
                    old_path = BASELINE / ("policy2_" + name + "." + ext)
                    new_path = prefix.with_suffix("." + ext)
                    comparison[ext] = old_path.read_bytes() == new_path.read_bytes()
                if not all(comparison.values()):
                    raise RuntimeError("Model0 changed the frozen baseline: " + str(comparison))
            eligible = bool(run.returncode == 0 and not summary["experimental_fault_latched"] and not summary["modeled_hard_trip"] and not summary["core_errors"] and not summary["observer_errors"])
            item = {"case": label, "model": model, "terminal_mode": mode, "return_code": run.returncode,
                "baseline_byte_identical": comparison, "completed_without_modeled_stop": eligible,
                "summary": summary, "raw_metrics": metrics,
                "target_bus_reached_in_steady_mean_5V_diagnostic_band": bool(eligible and metrics and abs(metrics["bus_mean_V"] - 170) <= 5),
                "classification": "COMPLETED_WITHOUT_MODELED_STOP_NOT_HARDWARE_QUALIFIED" if eligible else "STOPPED_OR_FAILED_NOT_STEADY_QUALIFIED"}
            results.append(item)
            print(label + ": " + item["classification"], flush=True)
    # Replay EXACTLY the same measured input from model0's first no-feasible
    # stop across all four models. No future/true plant value enters prediction.
    records = [json.loads(line) for line in (out / "model0_pc_on_nominal.limit_decisions.jsonl").read_text().splitlines()]
    record = next(x for x in records if x["diagnostics"]["status"] == 257)
    args = record["input_iabc_A"] + record["input_eabc_V"] + [record["input_up_V"], record["input_low_V"], record["idref_used_A"], record["iqref_used_A"], record["theta_rad"], record["omega_rad_s"]] + record["fhat_A_s"] + [record["applied_hw"], 1, 1]
    fixed_input_results = []
    for model in range(4):
        exe = build / ("model" + str(model)) / "unit.exe"
        run = subprocess.run([str(exe)] + [format(x, ".17g") for x in args], capture_output=True, text=True, cwd=snapshot)
        (build / ("model" + str(model)) / "fixed_input.log").write_text(run.stdout + run.stderr, encoding="utf-8")
        if run.returncode:
            raise RuntimeError("Fixed-input replay failed")
        fixed_input_results.append(json.loads(run.stdout))
    (out / "FIXED_INPUT.json").write_text(json.dumps({"source_record": record, "models": fixed_input_results}, indent=2) + "\n", encoding="utf-8")
    if any(sha(snapshot / name) != digest or sha(TARGET / name) != digest for name, digest in pins.items()):
        raise RuntimeError("Pinned source changed")
    report = {"date": "2026-10-28", "status": "HOST_ABLATION_COMPLETE_NOT_HARDWARE_QUALIFIED", "unit_results": units, "results": results, "fixed_input_results": fixed_input_results,
        "all_model0_bytes_identical": True, "MCU_build_or_hardware_operations": False,
        "scope": "Eight bounded nominal cases; stop/Trip disqualifies post-stop steady metrics. No claim of continuous peak bound, target timing or hardware permission."}
    (out / "REPORT.json").write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
