"""Two bounded HOST cases: causal model3 + projection/NP feasibility guards.

No MCU, existing test, protection, observer or physical-model file is edited.
The projection guard is a declared mode7 terminal engineering modification.
NP <50 V uses the existing software bus-imbalance setting as model screening,
not a change to that actual filtered protection or a continuous safety bound.
"""
from pathlib import Path
import argparse, hashlib, json, shutil, subprocess, collections, sys
import validate_prediction_dynamics as dynamics
import validate_offline_current_limit as previous

TARGET = Path(__file__).resolve().parent.parent
ROOT = TARGET.parents[3]
EVIDENCE = ROOT / "output/ti_pcmfpc_zcdc_port/terminal_projection"
BASELINE = ROOT / "output/ti_pcmfpc_zcdc_port/prediction_dynamics/pass2"
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()


def one(text, old, new, label):
    if text.count(old) != 1:
        raise ValueError(label + ": expected exactly one source anchor")
    return text.replace(old, new, 1)


NP_SUPPORT = r'''
/* Experimental diagnostics. Zero peaks are unavailable after base failure. */
PC_Real OP_first_np_peak,OP_candidate_np_peak[8];
uint16_t OP_np_mask,OP_first_np_stop,OP_np_evaluated_mask;
static PC_Real op_np_peak(const PC_Interval *full,PC_Real start,PC_Real end)
{
    PC_Real peak=OCL_MAX(OCL_ABS(start),OCL_ABS(end));uint16_t k;
    for(k=0U;k<2U;k++)peak=OCL_MAX(peak,OCL_ABS(full->substep[k].np_V));
    return peak;
}
'''
NP_API = r'''
extern PC_Real OP_first_np_peak,OP_candidate_np_peak[8];
extern uint16_t OP_np_mask,OP_first_np_stop,OP_np_evaluated_mask;
'''
UNIT = r'''
#include <stdio.h>
#include <string.h>
#include <math.h>
int main(void)
{
 PC_Config c;PC_Input in;PC_Output out;unsigned j;
 PC_default_config(&c);memset(&in,0,sizeof(in));memset(&out,0,sizeof(out));
 c.first_duration_s=.00025f;c.candidate_duration_s=.0005f;c.delta_i_A=.02f;
 in.id_ref_A=5.135938f;in.theta_rad=.2334575355f;in.omega_rad_s=314.245575f;
 out.valid=out.requested=1U;out.status=PC_OK;out.voltage_margin_V=-1.0f;
 out.first_interval.blocked=1U;
 for(j=0;j<8;j++){out.gi[j]=1000;out.gu[j]=1000;}
 out.idq2_A[0][0]=1.8933025f;out.idq2_A[0][1]=.10320573f;
 out.idq2_A[2][0]=1.9125012f;out.idq2_A[2][1]=-.25841607f;
 out.gi[0]=powf(out.idq2_A[0][0]-in.id_ref_A,2)+out.idq2_A[0][1]*out.idq2_A[0][1];
 out.gi[2]=powf(out.idq2_A[2][0]-in.id_ref_A,2)+out.idq2_A[2][1]*out.idq2_A[2][1];
 out.gu[0]=4;out.gu[2]=5;out.switch_count[2]=1;
 if(OCL_select_feasible(&c,&in,&out,5U)!=PC_OK || out.pc_off_id!=3U || out.selected_id!=3U || !out.active){
  fprintf(stderr,"projection counterexample failed: PCoff=%u selected=%u active=%u\n",out.pc_off_id,out.selected_id,out.active);return 1;
 }
 if(!(out.gz[0]<out.gz[2]))return 2;
 printf("{\"checks\":5,\"status\":\"PASS\",\"counterexample\":\"OFF has lower gz but lower reference projection; keep common PCoff ID3\"}\n");
 return 0;
}
'''


def main():
    sys.stdout.reconfigure(encoding="utf-8")
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--output", type=Path, default=EVIDENCE / "pass1")
    ap.add_argument("--clang", type=Path, default=previous.CLANG)
    ap.add_argument("--vcvars", type=Path, default=previous.VCVARS)
    a = ap.parse_args();out = a.output.resolve()
    if EVIDENCE.resolve() not in out.parents:
        raise ValueError("Output path escape")
    if out.exists() and (not out.is_dir() or any(out.iterdir())):
        raise FileExistsError("Nonempty output; no overwrite or cleanup")
    old = json.loads((BASELINE / "MANIFEST.json").read_text(encoding="utf-8"))
    pins = old["source_sha256"]
    for name, digest in pins.items():
        if sha(TARGET / name) != digest:
            raise ValueError("Baseline source changed before snapshot: " + name)
    out.mkdir(parents=True);snap = out / "source_snapshot";build = out / "build";build.mkdir()
    for name in pins:
        dest=snap/name;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(TARGET/name,dest)
    shutil.copyfile(Path(__file__),snap/"tests/validate_terminal_projection.py")
    shutil.copyfile(TARGET/"tests/validate_prediction_dynamics.py",snap/"tests/validate_prediction_dynamics.py")
    api=build/"offline_prediction_api.h";api.write_text(dynamics.API+NP_API,encoding="utf-8")
    core_text,changes=dynamics.generate_core((snap/"vienna_pcmfpc_fast.c").read_text(encoding="utf-8"),snap)
    old_select="if((mask & (uint16_t)(1U<<j)) && out->gz[j]<out->gz[chosen]) chosen=j;"
    new_select="if((mask & (uint16_t)(1U<<j)) && in->id_ref_A*out->idq2_A[j][0]+in->iq_ref_A*out->idq2_A[j][1]>=in->id_ref_A*out->idq2_A[pcOff][0]+in->iq_ref_A*out->idq2_A[pcOff][1] && out->gz[j]<out->gz[chosen]) chosen=j;"
    core_text=one(core_text,old_select,new_select,"derived fast common projection guard")
    core=build/"projection_core.c";core.write_text(core_text,encoding="utf-8")
    limit_text=dynamics.generate_limit((snap/"tests/offline_current_limit.c").read_text(encoding="utf-8"),snap,api)
    limit_text=one(limit_text,"static uint16_t ocl_finite(PC_Real value)",NP_SUPPORT+"\nstatic uint16_t ocl_finite(PC_Real value)","NP support")
    limit_text=one(limit_text,"if((mask & (uint16_t)(1U<<j)) && out->gz[j]<out->gz[chosen])chosen=j;",
        "if((mask & (uint16_t)(1U<<j)) && input->id_ref_A*out->idq2_A[j][0]+input->iq_ref_A*out->idq2_A[j][1]>=input->id_ref_A*out->idq2_A[pc_off][0]+input->iq_ref_A*out->idq2_A[pc_off][1] && out->gz[j]<out->gz[chosen])chosen=j;","filtered common projection guard")
    limit_text=one(limit_text,"    status=OD_run_fast(config,input,out);",
        "    OP_first_np_peak=(PC_Real)0;OP_np_mask=OP_np_evaluated_mask=OP_first_np_stop=0U;\n    for(j=0U;j<8U;j++)OP_candidate_np_peak[j]=(PC_Real)0;\n    status=OD_run_fast(config,input,out);","clear extra NP diagnostics")
    limit_text=one(limit_text,"    d->first_endpoint_peak_A=peak;d->first_peak_used_A=peak;",
        "    d->first_endpoint_peak_A=peak;d->first_peak_used_A=peak;\n    OP_first_np_peak=OCL_MAX(OCL_ABS(input->low_V-input->up_V),OCL_ABS(out->np1_V));\n    if(OP_first_np_peak>=(PC_Real)50)OP_first_np_stop=1U;","first NP endpoints")
    limit_text=one(limit_text,"    if(peak>=d->effective_limit_A){","    if(peak>=d->effective_limit_A || OP_first_np_stop){","first endpoints reject NP")
    limit_text=one(limit_text,"        d->delay_full_evaluated=1U;d->first_peak_used_A=d->first_substep_peak_A;",
        "        d->delay_full_evaluated=1U;d->first_peak_used_A=d->first_substep_peak_A;\n        OP_first_np_peak=op_np_peak(&full,input->low_V-input->up_V,out->np1_V);\n        if(OP_first_np_peak>=(PC_Real)50)OP_first_np_stop=1U;","first FULL NP nodes")
    limit_text=one(limit_text,"        if(d->first_peak_used_A>=d->effective_limit_A){","        if(d->first_peak_used_A>=d->effective_limit_A || OP_first_np_stop){","first FULL NP rejection")
    limit_text=one(limit_text,"            d->substep_evaluated_mask|=bit;d->peak_used_A[j]=d->substep_peak_A[j];",
        "            d->substep_evaluated_mask|=bit;d->peak_used_A[j]=d->substep_peak_A[j];\n            OP_candidate_np_peak[j]=op_np_peak(&full,out->np1_V,out->np2_V[j]);\n            OP_np_evaluated_mask|=bit;if(OP_candidate_np_peak[j]<(PC_Real)50)OP_np_mask|=bit;","candidate NP nodes")
    limit_text=one(limit_text,"        if(d->peak_used_A[j]<d->effective_limit_A){","        if(d->peak_used_A[j]<d->effective_limit_A && (OP_np_mask&bit)){","joint current and NP feasibility")
    limit=build/"projection_limit.c";limit.write_text(limit_text,encoding="utf-8")
    plant_text,plant_changes=previous.generate_plant((snap/"tests/ti_closed_loop.c").read_text(encoding="utf-8"),snap)
    plant_text=one(plant_text,"/* Output-only experiment state:",'#include "'+api.as_posix()+'"\n/* Output-only experiment state:',"extra trace API")
    plant_text=one(plant_text,' ol_write_diag(ol_decisions);fputs("}\\n",ol_decisions);',r''' ol_write_diag(ol_decisions);
 fprintf(ol_decisions,",\"np_first_peak_V\":%.17g,\"np_first_stop\":%u,\"np_evaluated_mask\":%u,\"np_feasible_mask\":%u,\"np_candidate_peak_V\":[",(double)OP_first_np_peak,(unsigned)OP_first_np_stop,(unsigned)OP_np_evaluated_mask,(unsigned)OP_np_mask);
 for(j=0;j<8;j++)fprintf(ol_decisions,"%s%.17g",j?",":"",(double)OP_candidate_np_peak[j]);
 fprintf(ol_decisions,"],\"output_active\":%u,\"gi\":[",(unsigned)out->active);
 for(j=0;j<8;j++)fprintf(ol_decisions,"%s%.17g",j?",":"",(double)out->gi[j]);
 fputs("]}\n",ol_decisions);''',"NP node diagnostics")
    plant=build/"projection_plant.c";plant.write_text(plant_text,encoding="utf-8")
    sources=[snap/n for n in ["vienna_pcmfpc_zcdc.c","vienna_pcmfpc_fast.c","vienna_pcmfpc_observer.c","vienna_grid_sync.c"]]+[core,limit]
    unit=build/"projection_test.c";unit.write_text('#include "'+(snap/"tests/offline_current_limit.h").as_posix()+'"\n'+UNIT,encoding="utf-8")
    exe=dynamics.compile_program(a,build/"unit",sources+[unit],3,"projection_unit",snap)
    u=subprocess.run([str(exe)],cwd=snap,capture_output=True,text=True);(out/"unit.log").write_text(u.stdout+u.stderr,encoding="utf-8")
    if u.returncode:raise RuntimeError("Projection counterexample failed")
    unit_result=json.loads(u.stdout)
    manifest={"date":"2026-10-28","driver_sha256":sha(Path(__file__)),"source_sha256":pins,"derived_core_sha256":sha(core),"derived_limit_sha256":sha(limit),"derived_plant_sha256":sha(plant),"base_core_transform":changes,"base_plant_transform":plant_changes,"models":"Only dynamicDC+incrementalF, two substeps, original VO/plant","cases":[2000,2500],"terminal":"Common pcOff reference projection must not decrease, no epsilon, strict gz improvement","screening":"Original7A node guard AND abs(np)<50V at first/candidate nodes; no physical protection edit","guards":{"delta_A":.02,"physical_trip_A":7,"software_OV_V":204,"reference_limit_A":5.5,"load_model_ohm":50},"hardware_qualified":False}
    (out/"MANIFEST.json").write_text(json.dumps(manifest,indent=2)+"\n",encoding="utf-8")
    results=[]
    for hz in [2000,2500]:
        period=1/hz;sample=period/2;isr=sample+.000002
        defs=f"-DTI_CLOSED_LOOP_FAST=1 -DOFFLINE_LIMIT_POLICY=2 -DSIM_CONTROL_STEP_SEC={period:.12g} -DSIM_SAMPLE_OFFSET_SEC={sample:.12g} -DSIM_ISR_OFFSET_SEC={isr:.12g}"
        exe=dynamics.compile_program(a,build/str(hz),sources+[plant],3,"projection_plant",snap,defs)
        prefix=out/f"projection_np_{hz}Hz_pc_on"
        run=subprocess.run([str(exe),"2","50","0",str(prefix),"0"],cwd=snap,capture_output=True,text=True)
        prefix.with_suffix(".log").write_text(run.stdout+run.stderr,encoding="utf-8")
        summary=json.loads(prefix.with_suffix(".limit_summary.json").read_text(encoding="utf-8"))
        metrics=json.loads(prefix.with_suffix(".json").read_text(encoding="utf-8")) if prefix.with_suffix(".json").exists() else None
        ds=[json.loads(l) for l in prefix.with_suffix(".limit_decisions.jsonl").read_text().splitlines()]
        counts=collections.Counter(z["selected_hw"] for z in ds if z["diagnostics"]["status"]==0)
        physical_np=max((abs(z["physical_up_V"]-z["physical_low_V"]) for z in ds),default=0)
        eligible=bool(run.returncode==0 and not summary["experimental_fault_latched"] and not summary["modeled_hard_trip"] and not summary["core_errors"] and not summary["observer_errors"])
        result={"frequency_Hz":hz,"return_code":run.returncode,"completed_without_stop_or_trip":eligible,"diagnostic_steady_mean_within5V_of170":bool(eligible and metrics and abs(metrics["bus_mean_V"]-170)<=5),"hardware_qualified":False,"successful_gate_histogram":dict(counts),"physical_np_peak_at_control_samples_V":physical_np,"last_control_record":ds[-1] if ds else None,"summary":summary,"raw_metrics":metrics}
        results.append(result);print(hz,json.dumps({"stop_s":summary["first_selector_stop_s"],"stop_status":summary["first_selector_status"],"peak_A":summary["whole_run_physical_current_peak_A"],"busmean":metrics["bus_mean_V"] if metrics else None,"np_peak_control_V":physical_np,"gates":dict(counts)}),flush=True)
    assert all(sha(snap/n)==h for n,h in pins.items()),"executed snapshot changed"
    report={"date":"2026-10-28","status":"TWO_BOUNDED_HOST_CASES_COMPLETE","unit":unit_result,"results":results,"scope":"Only2k/2.5k PC-ON nominal50ohm. No MCU modification/build/target operation. Completed without stop is not170V regulation success. Node current/NP samples are not continuous safety bounds."}
    (out/"REPORT.json").write_text(json.dumps(report,indent=2)+"\n",encoding="utf-8")
    return 0


if __name__=="__main__":
    raise SystemExit(main())
