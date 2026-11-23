"""Six HOST-only current-feasibility experiments on the fixed2kHz plant.

policy0 is the original endpoint controller and must match pass4 CSV/JSON.
policy1 checks endpoints; policy2 additionally checks two model substeps.
Experimental selector stops latch OFF and prevent restart; they are not
successful steady operation or a proof of continuous current containment.
No MCU, protection, frequency or existing plant source is modified.
"""
from pathlib import Path
import argparse,hashlib,json,shutil,subprocess,sys
sys.stdout.reconfigure(encoding="utf-8")
TESTS=Path(__file__).resolve().parent
TARGET=TESTS.parent
ROOT=TARGET.parents[3]
EVIDENCE=ROOT/"output/ti_pcmfpc_zcdc_port/offline_current_limit"
BASELINE=ROOT/"output/ti_pcmfpc_zcdc_port/control_rate_2khz/validation/pass4"
CLANG=Path("D:/MATLAB2023b/install/toolbox/sldrt/clang/win64/clang.exe")
VCVARS=Path("D:/VisualStudio/Microsoft Visual_Studio2022BuildTools/VC/Auxiliary/Build/vcvars64.bat")
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()

C_HELPERS=r'''
/* Output-only experiment state: never compiled into the MCU project. */
#ifndef OFFLINE_LIMIT_POLICY
#define OFFLINE_LIMIT_POLICY 0
#endif
static OCL_Config ol_config;
static OCL_Diagnostics ol_diag;
static FILE *ol_decisions,*ol_events;
static char ol_prefix[2048];
static unsigned ol_latched,ol_calls,ol_guard_stops,ol_math_errors,ol_config_errors;
static unsigned ol_filtered_total,ol_evaluated_total,ol_delay_stops,ol_empty_stops;
static unsigned ol_first_status,ol_first_reason,ol_first_source;
static double ol_first_stop=-1,ol_first_sample=-1;
static double ol_min_selected_margin=DBL_MAX,ol_min_predicted_margin=DBL_MAX;
static double ol_max_bus_active,ol_max_reference_active;
static uint16_t ol_status;
static void ol_number(FILE *f,double x)
{if(isfinite(x))fprintf(f,"%.17g",x);else fputs(isnan(x)?"\"NaN\"":(x>0?"\"+Inf\"":"\"-Inf\""),f);}
static void ol_vector(FILE *f,const float *v,unsigned n)
{unsigned j;fputc('[',f);for(j=0;j<n;j++){if(j)fputc(',',f);ol_number(f,v[j]);}fputc(']',f);}
static unsigned ol_popcount(uint16_t bits)
{unsigned n=0;while(bits){n+=bits&1U;bits>>=1;}return n;}
static void ol_write_diag(FILE *f)
{
 const OCL_Diagnostics *d=&ol_diag;
 fprintf(f,"{\"status\":%u,\"policy\":%u,\"base_status\":%u,\"aux_status\":%u,\"error_source\":%u,\"guard_reason\":%u,\"valid\":%u,\"feasible_mask\":%u,\"rejected_mask\":%u,\"feasible_count\":%u,\"endpoint_feasible_mask\":%u,\"substep_feasible_mask\":%u,\"endpoint_evaluated_mask\":%u,\"substep_evaluated_mask\":%u,\"delay_full_evaluated\":%u,\"delay_violation\":%u,\"no_feasible\":%u,\"raw_selected_id\":%u,\"raw_pc_off_id\":%u,\"failed_candidate_id\":%u,\"current_limit_A\":%.17g,\"safety_margin_A\":%.17g,\"effective_limit_A\":%.17g,\"first_endpoint_peak_A\":%.17g,\"first_substep_peak_A\":%.17g,\"first_peak_used_A\":%.17g,\"first_margin_A\":%.17g,\"selected_margin_A\":%.17g,\"min_feasible_margin_A\":%.17g,\"first_ctrl_full_endpoint_diff_A\":%.17g,\"endpoint_peak_A\":",
  (unsigned)d->status,(unsigned)d->policy,(unsigned)d->base_status,(unsigned)d->aux_status,(unsigned)d->error_source,(unsigned)d->guard_reason,(unsigned)d->valid,
  (unsigned)d->feasible_mask,(unsigned)d->rejected_mask,(unsigned)d->feasible_count,(unsigned)d->endpoint_feasible_mask,(unsigned)d->substep_feasible_mask,(unsigned)d->endpoint_evaluated_mask,(unsigned)d->substep_evaluated_mask,(unsigned)d->delay_full_evaluated,(unsigned)d->delay_violation,(unsigned)d->no_feasible,(unsigned)d->raw_selected_id,(unsigned)d->raw_pc_off_id,(unsigned)d->failed_candidate_id,
  (double)d->current_limit_A,(double)d->safety_margin_A,(double)d->effective_limit_A,(double)d->first_endpoint_peak_A,(double)d->first_substep_peak_A,(double)d->first_peak_used_A,(double)d->first_margin_A,(double)d->selected_margin_A,(double)d->min_feasible_margin_A,(double)d->first_ctrl_full_endpoint_diff_A);
 ol_vector(f,d->endpoint_peak_A,8);fputs(",\"substep_peak_A\":",f);ol_vector(f,d->substep_peak_A,8);
 fputs(",\"peak_used_A\":",f);ol_vector(f,d->peak_used_A,8);fputs(",\"ctrl_full_endpoint_diff_A\":",f);ol_vector(f,d->ctrl_full_endpoint_diff_A,8);fputc('}',f);
}
static int ol_open(const char *prefix)
{
 char path[2200];snprintf(ol_prefix,sizeof(ol_prefix),"%s",prefix);
 snprintf(path,sizeof(path),"%s.limit_decisions.jsonl",prefix);ol_decisions=fopen(path,"w");
 snprintf(path,sizeof(path),"%s.limit_events.jsonl",prefix);ol_events=fopen(path,"w");
 OCL_default_config(&ol_config);ol_config.policy=OFFLINE_LIMIT_POLICY;
 ol_config.current_limit_A=7.0f;ol_config.safety_margin_A=0.0f;
 return ol_decisions && ol_events;
}
static uint16_t ol_evaluate(const PC_Config *c,const PC_Input *in,PC_Output *out,const Plant *p,double now,double sample)
{
 unsigned j;uint16_t evaluated;
 ol_calls++;ol_status=OCL_run(c,in,out,&ol_config,&ol_diag);
 evaluated=(uint16_t)(ol_diag.endpoint_evaluated_mask|ol_diag.substep_evaluated_mask);
 ol_filtered_total+=ol_popcount(ol_diag.rejected_mask);ol_evaluated_total+=ol_popcount(evaluated);
 if(OFFLINE_LIMIT_POLICY && ol_diag.base_status==PC_OK && ol_status!=OCL_ERR_CONFIG){
  if(ol_diag.first_margin_A<ol_min_predicted_margin)ol_min_predicted_margin=ol_diag.first_margin_A;
  for(j=0;j<8;j++)if(evaluated&(uint16_t)(1U<<j)){
   double margin=(double)ol_diag.effective_limit_A-ol_diag.peak_used_A[j];
   if(margin<ol_min_predicted_margin)ol_min_predicted_margin=margin;
  }
  if(ol_diag.valid && ol_diag.selected_margin_A<ol_min_selected_margin)ol_min_selected_margin=ol_diag.selected_margin_A;
 }
 if(p->up+p->low>ol_max_bus_active)ol_max_bus_active=p->up+p->low;
 if(in->id_ref_A>ol_max_reference_active)ol_max_reference_active=in->id_ref_A;
 fprintf(ol_decisions,"{\"sample_s\":%.17g,\"ISR_s\":%.17g,\"policy\":%u,\"screening_performed\":%u,\"applied_hw\":%u,\"selected_hw\":%u,\"selected_id\":%u,\"pc_off_id\":%u,\"idref_used_A\":%.17g,\"iqref_used_A\":%.17g,\"input_up_V\":%.17g,\"input_low_V\":%.17g,\"physical_up_V\":%.17g,\"physical_low_V\":%.17g,\"delta_i_A\":%.17g,\"first_duration_s\":%.17g,\"candidate_duration_s\":%.17g,\"diagnostics\":",sample,now,(unsigned)OFFLINE_LIMIT_POLICY,(unsigned)(OFFLINE_LIMIT_POLICY!=0),(unsigned)in->applied_hw_state,(unsigned)out->hw_state,(unsigned)out->selected_id,(unsigned)out->pc_off_id,(double)in->id_ref_A,(double)in->iq_ref_A,(double)in->up_V,(double)in->low_V,p->up,p->low,(double)c->delta_i_A,(double)c->first_duration_s,(double)c->candidate_duration_s);
 ol_write_diag(ol_decisions);fputs("}\n",ol_decisions);
 return ol_status;
}
#if OFFLINE_LIMIT_POLICY > 0
static void ol_latch(const Plant *p,double now,double sample,unsigned gate,unsigned pending,double used)
{
 ol_latched=1U;
 if(ol_status==OCL_STOP_DELAY){ol_guard_stops++;ol_delay_stops++;}
 else if(ol_status==OCL_STOP_NO_FEASIBLE){ol_guard_stops++;ol_empty_stops++;}
 else if(ol_status==OCL_ERR_CONFIG)ol_config_errors++;
 else ol_math_errors++;
 if(ol_first_stop<0){ol_first_stop=now;ol_first_sample=sample;ol_first_status=ol_status;ol_first_reason=ol_diag.guard_reason;ol_first_source=ol_diag.error_source;}
 fprintf(ol_events,"{\"kind\":\"experimental_selector_fault_latch\",\"time_s\":%.17g,\"sample_s\":%.17g,\"gate_before_clear\":%u,\"pending_before_clear\":%u,\"reference_used_A\":%.17g,\"physical_iabc_A\":[%.17g,%.17g,%.17g],\"physical_up_V\":%.17g,\"physical_low_V\":%.17g,\"diagnostics\":",now,sample,gate,pending,used,p->i[0],p->i[1],p->i[2],p->up,p->low);
 ol_write_diag(ol_events);fputs("}\n",ol_events);
}
#endif
static void ol_physical_trip(const Plant *p,unsigned phase,double now,unsigned gate,unsigned pending)
{fprintf(ol_events,"{\"kind\":\"original_modeled_7A_trip\",\"time_s\":%.17g,\"phase_zero_based\":%u,\"gate_before_clear\":%u,\"pending_before_clear\":%u,\"experimental_latch_already_set\":%u,\"iabc_A\":[%.17g,%.17g,%.17g]}\n",now,phase,gate,pending,ol_latched,p->i[0],p->i[1],p->i[2]);}
static void ol_observer_failure(const char *kind,double now,unsigned status)
{fprintf(ol_events,"{\"kind\":\"%s\",\"time_s\":%.17g,\"status_or_fault\":%u}\n",kind,now,status);}
static void ol_finish(const Metrics *m,double elapsed)
{
 FILE *f;char path[2200];
 snprintf(path,sizeof(path),"%s.limit_summary.json",ol_prefix);f=fopen(path,"w");
 if(f){
  fprintf(f,"{\"policy\":%u,\"elapsed_s\":%.17g,\"experimental_fault_latched\":%u,\"selector_calls\":%u,\"guard_stops\":%u,\"delay_guard_stops\":%u,\"no_feasible_stops\":%u,\"selector_math_errors\":%u,\"selector_config_errors\":%u,\"evaluated_candidates_total\":%u,\"filtered_candidates_total\":%u,\"first_selector_stop_s\":%.17g,\"first_selector_stop_sample_s\":%.17g,\"first_selector_status\":%u,\"first_guard_reason\":%u,\"first_error_source\":%u,\"minimum_selected_margin_A\":",(unsigned)OFFLINE_LIMIT_POLICY,elapsed,ol_latched,ol_calls,ol_guard_stops,ol_delay_stops,ol_empty_stops,ol_math_errors,ol_config_errors,ol_evaluated_total,ol_filtered_total,ol_first_stop,ol_first_sample,ol_first_status,ol_first_reason,ol_first_source);
  if(ol_min_selected_margin==DBL_MAX)fputs("null",f);else ol_number(f,ol_min_selected_margin);
  fputs(",\"minimum_predicted_margin_A_including_rejected\":",f);if(ol_min_predicted_margin==DBL_MAX)fputs("null",f);else ol_number(f,ol_min_predicted_margin);
  fprintf(f,",\"maximum_physical_bus_at_active_control_samples_V\":%.17g,\"maximum_used_reference_A\":%.17g,\"modeled_hard_trip\":%u,\"first_modeled_7A_trip_s\":%.17g,\"first_modeled_OV_trip_s\":%.17g,\"core_errors\":%u,\"observer_errors\":%u,\"whole_run_physical_current_peak_A\":%.17g,\"reference_limit_A\":%.17g,\"original_trip_current_A\":%.17g,\"original_OV_V\":%.17g,\"guard_current_limit_A\":%.17g,\"guard_safety_margin_A\":%.17g}\n",ol_max_bus_active,ol_max_reference_active,m->hard_trip,m->new_trip_first,m->voltage_trip_first,m->core_errors,m->observer_errors,m->peak_all,(double)REF_LIMIT,(double)TRIP_CURRENT,(double)OVERVOLTAGE,(double)ol_config.current_limit_A,(double)ol_config.safety_margin_A);fclose(f);
 }
 if(ol_decisions)fclose(ol_decisions);if(ol_events)fclose(ol_events);
}
'''

def generate_plant(original,snapshot):
 text=original;changes=[]
 def one(anchor,replacement,label):
  nonlocal text
  count=text.count(anchor)
  if count!=1:raise ValueError(f"{label}: expected one source anchor, found {count}")
  text=text.replace(anchor,replacement,1);changes.append({"label":label,"count":count,"anchor_sha256":hashlib.sha256(anchor.encode()).hexdigest(),"replacement_sha256":hashlib.sha256(replacement.encode()).hexdigest()})
 for name in ["vienna_pcmfpc_zcdc.h","vienna_pcmfpc_fast.h","vienna_pcmfpc_observer.h","vienna_grid_sync.h","vienna_fcs_mpc.h"]:
  one(f'#include "../{name}"',f'#include "{(snapshot/name).as_posix()}"',"snapshot include "+name)
 one("#include <float.h>","#include <float.h>","existing float header") if "#include <float.h>" in text else one("#include <string.h>",'#include <string.h>\n#include <float.h>\n#include "'+(snapshot/"tests/offline_current_limit.h").as_posix()+'"',"offline header and DBL_MAX")
 # The existing plant presently has no float.h. If it ever gains that include,
 # require an explicit integration review rather than silently omit the API.
 if '#include "'+(snapshot/"tests/offline_current_limit.h").as_posix()+'"' not in text:raise ValueError("Offline API include anchor needs review")
 one("int main(int argc,char **argv)\n{",C_HELPERS+"\nint main(int argc,char **argv)\n{","offline helpers")
 anchor="    memset(&plant,0,sizeof(plant));memset(&m,0,sizeof(m));memset(&input,0,sizeof(input));"
 one(anchor,'    if(!ol_open(argv[4])){fprintf(stderr,"offline limit log open failed\\n");return 6;}\n'+anchor,"open sidecars")
 anchor="if(!enabled && !m.hard_trip && pll.locked && now>0.060){"
 one(anchor,"if(!enabled && !m.hard_trip && !ol_latched && pll.locked && now>0.060){","experimental latch prevents restart")
 anchor="if(PC_run_fast(&pc,&input,&output)!=PC_OK){m.core_errors++;pending=0;}"
 replacement='''if(ol_evaluate(&pc,&input,&output,&plant,now,lastSampleTime)!=PC_OK){
#if OFFLINE_LIMIT_POLICY == 0
                        m.core_errors++;pending=0;
#else
                        if(ol_status>0U && ol_status<=PC_ERR_NUMERIC)m.core_errors++;
                        ol_latch(&plant,now,lastSampleTime,gate,pending,reference_used);
                        enabled=0U;gate=pending=0U;hasHistory=0U;VO_reset(&eso);
                        idref=0.0;reference_used=0.0;
                        goto offline_control_tail;
#endif
                    }'''
 one(anchor,replacement,"original control or guarded experimental selection")
 anchor="            for(j=0;j<2;j++){prevCurrentDQ[j]=idq[j];prevFhat[j]=eso.f_hat_A_s[j];}"
 one(anchor,"#if OFFLINE_LIMIT_POLICY > 0\n        offline_control_tail:\n#endif\n"+anchor,"guard stop skips same-sample outer update")
 anchor="            prevUp=up;prevLow=low;prevTheta=pll.theta_rad;prevOmega=pll.omega_rad_s;prevGate=gate;hasHistory=1U;seq++;control++;"
 one(anchor,anchor+"\n#if OFFLINE_LIMIT_POLICY > 0\n            if(ol_latched){hasHistory=0U;VO_reset(&eso);idref=0.0;reference_used=0.0;gate=pending=0U;}\n#endif","faulted experiment retains no active history")
 anchor="if(fabs(plant.i[j])>=TRIP_CURRENT && m.new_trip_first<0){"
 one(anchor,anchor+"ol_physical_trip(&plant,j,now,gate,pending);","original7A event remains independent")
 for anchor,replacement,label in [
  ("if(!VO_reconstruct(&pc,&reconstruction,&reconstructed)){m.observer_errors++;",'if(!VO_reconstruct(&pc,&reconstruction,&reconstructed)){ol_observer_failure("original_reconstruction_failure",now,reconstructed.faults);m.observer_errors++;',"observe original reconstruction errors"),
  ("if(!VO_update_delta(&vo,&eso,idq,edq,du,seq,VO_SOURCE_MODEL_RECONSTRUCTED)){m.observer_errors++;",'if(!VO_update_delta(&vo,&eso,idq,edq,du,seq,VO_SOURCE_MODEL_RECONSTRUCTED)){ol_observer_failure("original_ESO_failure",now,eso.faults);m.observer_errors++;',"observe original ESO errors")]:one(anchor,replacement,label)
 one("            fclose(trace);return 5;","            ol_finish(&m,now);fclose(trace);return 5;","summarize original early rail failure")
 one("    return 0;\n}\n","    ol_finish(&m,DURATION);\n    return 0;\n}\n","summarize complete original duration")
 return text,changes

def main():
 ap=argparse.ArgumentParser(description=__doc__)
 ap.add_argument("--output",type=Path,default=EVIDENCE/"pass1",help="Fresh strict descendant of the offline_current_limit evidence directory")
 ap.add_argument("--baseline",type=Path,default=BASELINE)
 ap.add_argument("--clang",type=Path,default=CLANG)
 ap.add_argument("--vcvars",type=Path,default=VCVARS)
 a=ap.parse_args();out=a.output.resolve()
 if EVIDENCE.resolve() not in out.parents:raise ValueError("Output path escape")
 if out.exists() and (not out.is_dir() or any(out.iterdir())):raise FileExistsError("Output is nonempty; no overwrite, deletion or cleanup")
 baseline=a.baseline.resolve();baseline_report=baseline/"REPORT.json"
 old=json.loads(baseline_report.read_text(encoding="utf-8"));pins=old["source_sha256"]
 for name,digest in pins.items():
  current=(TARGET/name).resolve()
  if TARGET.resolve() not in current.parents or sha(current)!=digest:raise ValueError("Fixed pass4 source mismatch: "+name)
 extras=["tests/offline_current_limit.h","tests/offline_current_limit.c","tests/offline_current_limit_test.c"]
 helper_pins={name:sha(TARGET/name) for name in extras}
 baseline_hashes={str(baseline/(name+"."+ext)):sha(baseline/(name+"."+ext)) for name in ["pc_off_nominal","pc_on_nominal"] for ext in ["csv","json"]}
 out.mkdir(parents=True);snapshot=out/"source_snapshot";snapshot.mkdir();build=out/"build";build.mkdir()
 for name,digest in {**pins,**helper_pins}.items():
  dest=snapshot/name;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(TARGET/name,dest)
  if sha(dest)!=digest:raise RuntimeError("Snapshot copy changed: "+name)
 generated,changes=generate_plant((snapshot/"tests/ti_closed_loop.c").read_text(encoding="utf-8"),snapshot)
 plant=build/"offline_limit_plant.c";plant.write_text(generated,encoding="utf-8")
 manifest={"date":"2026-10-28","status":"PREPARED_OFFLINE_EXPERIMENT","fixed_source_sha256":pins,"new_selector_source_sha256":helper_pins,"baseline_report_sha256":sha(baseline_report),"baseline_output_sha256":baseline_hashes,"driver_sha256":sha(Path(__file__)),"generated_plant_sha256":sha(plant),"strict_anchor_changes":changes,"cases":"Only PC-OFF/ON x disabled/endpoint/sampled policies, nominal50ohm, existing0.8s duration","limits":{"original_physical_trip_A":7,"original_filtered_OV_V":204,"reference_peak_A":5.5,"offline_guard_A":7,"offline_model_headroom_A":0},"semantics":{"policy0":"OCL disabled calls originalPC_run_fast; old core-error path and original physical plant/protection retained. Original CSV/JSON byte identity against pass4 is mandatory.","policy1_2":"Only experimental selector failure adds the explicit latched stop. It forces gate/pending/enabled0, skips that sample's outer update, prevents auto-restart and keeps observer history reset. It is an experiment-specific fault latch, not an algorithm for continued operation.","classification":"Guard delay/no-feasible, selector model/config errors, original hardware-model7A/204V and observer errors are reported separately. Stop/Trip makes steady THD/tracking ineligible even if later current falls below7A.","samples_not_peak_bound":"Endpoint/two-substep samples are not a continuous physical peak certificate; FULL differences are auxiliary and remain visible."}}
 (out/"MANIFEST.json").write_text(json.dumps(manifest,indent=2)+"\n",encoding="utf-8")
 core_sources=[snapshot/name for name in ["vienna_pcmfpc_zcdc.c","vienna_pcmfpc_fast.c","vienna_pcmfpc_observer.c","vienna_grid_sync.c","tests/offline_current_limit.c"]]
 unit_work=build/"unit";unit_work.mkdir();unit_exe=unit_work/"current_limit_test.exe"
 unit_command=(f'call "{a.vcvars.resolve()}" >nul && set "TMP={unit_work}" && set "TEMP={unit_work}" && "{a.clang.resolve()}" -std=c11 -O2 -Wall -Wextra -Werror -D_CRT_SECURE_NO_WARNINGS '+" ".join(f'"{p}"' for p in core_sources+[snapshot/"tests/offline_current_limit_test.c"])+f' -o "{unit_exe}"')
 unit_batch=unit_work/"compile.cmd";unit_batch.write_text("@echo off\n"+unit_command+"\n",encoding="ascii")
 unit_build=subprocess.run(["cmd.exe","/d","/c",str(unit_batch)],cwd=snapshot,capture_output=True,text=True)
 (unit_work/"build.log").write_text(unit_build.stdout+unit_build.stderr,encoding="utf-8")
 if unit_build.returncode:raise RuntimeError("HOST current-limit contract test build failed; evidence retained")
 unit_run=subprocess.run([str(unit_exe)],cwd=snapshot,capture_output=True,text=True)
 (out/"unit.log").write_text(unit_run.stdout+unit_run.stderr,encoding="utf-8")
 if unit_run.returncode:raise RuntimeError("HOST current-limit contract test failed; inspect unit.log")
 unit_results=json.loads(unit_run.stdout)
 sources=core_sources+[plant]
 commands=[];executables={}
 for policy in [0,1,2]:
  work=build/("policy"+str(policy));work.mkdir();exe=work/"offline_limit.exe"
  defines=f"-DTI_CLOSED_LOOP_FAST=1 -DOFFLINE_LIMIT_POLICY={policy} -DSIM_CONTROL_STEP_SEC=0.000500 -DSIM_SAMPLE_OFFSET_SEC=0.000250 -DSIM_ISR_OFFSET_SEC=0.000252"
  command=(f'call "{a.vcvars.resolve()}" >nul && set "TMP={work}" && set "TEMP={work}" && "{a.clang.resolve()}" -std=c11 -O2 -Wall -Wextra -Werror -D_CRT_SECURE_NO_WARNINGS '+defines+" "+" ".join(f'"{p}"' for p in sources)+f' -o "{exe}"')
  batch=work/"compile.cmd";batch.write_text("@echo off\n"+command+"\n",encoding="ascii")
  compiled=subprocess.run(["cmd.exe","/d","/c",str(batch)],cwd=snapshot,capture_output=True,text=True)
  (work/"build.log").write_text(compiled.stdout+compiled.stderr,encoding="utf-8")
  if compiled.returncode:raise RuntimeError("HOST offline-selector build failed; evidence retained")
  commands.append(command);executables[policy]=exe
 results=[]
 for policy in [0,1,2]:
  for mode,name in [(1,"pc_off_nominal"),(2,"pc_on_nominal")]:
   label=f"policy{policy}_{name}";prefix=out/label
   run=subprocess.run([str(executables[policy]),str(mode),"50","0",str(prefix),"0"],cwd=snapshot,capture_output=True,text=True)
   prefix.with_suffix(".log").write_text(run.stdout+run.stderr,encoding="utf-8")
   summary_path=prefix.with_suffix(".limit_summary.json");summary=json.loads(summary_path.read_text(encoding="utf-8")) if summary_path.exists() else None
   metrics_path=prefix.with_suffix(".json");metrics=json.loads(metrics_path.read_text(encoding="utf-8")) if metrics_path.exists() else None
   comparison={}
   if policy==0:
    for ext in ["csv","json"]:
     path=prefix.with_suffix("."+ext);oldpath=baseline/(name+"."+ext)
     comparison[ext]={"exists":path.exists(),"baseline_sha256":baseline_hashes[str(oldpath)],"current_sha256":sha(path) if path.exists() else None,"byte_identical":path.exists() and path.read_bytes()==oldpath.read_bytes()}
   eligible=bool(run.returncode==0 and summary and not summary["experimental_fault_latched"] and not summary["modeled_hard_trip"] and not summary["core_errors"] and not summary["observer_errors"])
   item={"case":label,"mode":mode,"policy":policy,"return_code":run.returncode,"simulation_completed":run.returncode==0,"classification":"COMPLETED_WITHOUT_MODELED_STOP_OR_TRIP" if eligible else "STOPPED_OR_FAILED_NOT_STEADY_QUALIFIED","steady_statistics_eligible":eligible,"policy0_original_byte_comparison":comparison,"guard_and_protection_summary":summary,"raw_metrics":metrics,"target_bus_V":170,"mean_bus_error_from170V":metrics["bus_mean_V"]-170 if metrics else None,"scope":"Post-stop/Trip steady metrics are retained as raw diagnostics and never interpreted as successful operation."}
   prefix.with_suffix(".classification.json").write_text(json.dumps(item,indent=2)+"\n",encoding="utf-8");results.append(item)
   print(label+": "+item["classification"],flush=True)
   if policy==0 and (run.returncode!=0 or not all(x["byte_identical"] for x in comparison.values())):
    (out/"POLICY0_FAILURE.json").write_text(json.dumps(item,indent=2)+"\n",encoding="utf-8")
    raise RuntimeError("Policy0 changed the original trajectory; experimental runs are not accepted")
 if any(sha(snapshot/name)!=digest for name,digest in {**pins,**helper_pins}.items()):raise RuntimeError("Executed snapshot changed")
 if any(sha(Path(path))!=digest for path,digest in baseline_hashes.items()):raise RuntimeError("Read-only baseline changed")
 report={"date":"2026-10-28","status":"OFFLINE_EXPERIMENT_COMPLETE_NOT_HARDWARE_QUALIFIED","manifest_sha256":sha(out/"MANIFEST.json"),"unit_tests":unit_results,"unit_compile_command":unit_command,"compile_commands":commands,"results":results,"all_policy0_original_bytes_identical":True,"experimental_steady_eligible_cases":[x["case"] for x in results if x["policy"]>0 and x["steady_statistics_eligible"]],"scope":"Six bounded offline cases only. A fault latch preventing7A is not a successful170V control result; sampled feasibility is not continuous peak safety or hardware permission."}
 (out/"REPORT.json").write_text(json.dumps(report,indent=2)+"\n",encoding="utf-8")
 (out/"REPORT.md").write_text("# Offline current-feasibility concept experiment\n\n"+report["status"]+"\n\n"+report["scope"]+"\n",encoding="utf-8")
 print(report["status"],flush=True);return 0

if __name__=="__main__":raise SystemExit(main())
