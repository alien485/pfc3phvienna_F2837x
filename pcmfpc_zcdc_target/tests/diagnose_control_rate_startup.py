"""Read-only-model startup logging for the two existing nominal2kHz cases.

Adds logging to an output-only copy of ti_closed_loop.c with strict unique
anchors. Compiles only HOST snapshots. Original trace/metrics must match
measured pass4 by raw bytes. No MCU, frequency, protection or model edits.
"""
from pathlib import Path
import argparse,hashlib,json,shutil,subprocess,sys
sys.stdout.reconfigure(encoding="utf-8")
TESTS=Path(__file__).resolve().parent
TARGET=TESTS.parent
ROOT=TARGET.parents[3]
OUTPUT=ROOT/"output/ti_pcmfpc_zcdc_port/control_rate_startup_diag/pass1"
BASELINE=ROOT/"output/ti_pcmfpc_zcdc_port/control_rate_2khz/validation/pass4"
CLANG=Path("D:/MATLAB2023b/install/toolbox/sldrt/clang/win64/clang.exe")
VCVARS=Path("D:/VisualStudio/Microsoft Visual_Studio2022BuildTools/VC/Auxiliary/Build/vcvars64.bat")
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()

C_HELPERS=r'''
/* DIAGNOSTIC ONLY. All state below belongs solely to logging. */
typedef struct {
 unsigned have,serial,mode,command;
 double sample,isr,t1,t2;
 PC_Real theta1,theta2;
 PC_Config cfg;PC_Input input;PC_Output output;
} DiagDecision;
static FILE *dg_control,*dg_candidates,*dg_physical,*dg_apply,*dg_events;
static DiagDecision dg_latest,dg_pending,dg_applied;
static double dg_last_control=-1,dg_last_zero=-1,dg_last_change=-1,dg_first_trip=-1;
static double dg_old_i[3],dg_old_up,dg_old_low;
static unsigned dg_step_gate,dg_step_pending,dg_seen_gate;
static void dg_num(FILE *f,double x)
{if(isfinite(x))fprintf(f,"%.17g",x);else fputs(isnan(x)?"\"NaN\"":(x>0?"\"+Inf\"":"\"-Inf\""),f);}
static void dg_fvec(FILE *f,const float *x,unsigned n)
{unsigned k;fputc('[',f);for(k=0;k<n;k++){if(k)fputc(',',f);dg_num(f,x[k]);}fputc(']',f);}
static void dg_dvec(FILE *f,const double *x,unsigned n)
{unsigned k;fputc('[',f);for(k=0;k<n;k++){if(k)fputc(',',f);dg_num(f,x[k]);}fputc(']',f);}
static void dg_uvec(FILE *f,const uint16_t *x,unsigned n)
{unsigned k;fputc('[',f);for(k=0;k<n;k++)fprintf(f,k?",%u":"%u",(unsigned)x[k]);fputc(']',f);}
static void dg_decision(FILE *f,const DiagDecision *d)
{
 unsigned k;const PC_Output *o=&d->output;
 if(!d->have){fputs("null",f);return;}
 fprintf(f,"{\"serial\":%u,\"sample_s\":%.17g,\"ISR_s\":%.17g,\"t1_ZERO_s\":%.17g,\"t2_ZERO_s\":%.17g,\"command\":%u,\"status\":%u,\"prediction_valid\":%u,\"theta1_derived_rad\":%.17g,\"theta2_derived_rad\":%.17g,\"input_theta_rad\":%.17g,\"input_omega_rad_s\":%.17g,\"first_duration_s\":%.17g,\"candidate_duration_s\":%.17g,\"input_up_V\":%.17g,\"input_low_V\":%.17g,\"input_dc_V\":%.17g,\"id_ref_used_A\":%.17g,\"iq_ref_used_A\":%.17g,\"input_iabc_A\":",
  d->serial,d->sample,d->isr,d->t1,d->t2,d->command,(unsigned)o->status,(unsigned)(o->status==PC_OK),
  (double)d->theta1,(double)d->theta2,(double)d->input.theta_rad,(double)d->input.omega_rad_s,
  (double)d->cfg.first_duration_s,(double)d->cfg.candidate_duration_s,(double)d->input.up_V,(double)d->input.low_V,
  (double)d->input.up_V+(double)d->input.low_V,(double)d->input.id_ref_A,(double)d->input.iq_ref_A);
 dg_fvec(f,d->input.iabc_A,3);fputs(",\"input_eabc_V\":",f);dg_fvec(f,d->input.eabc_V,3);
 fputs(",\"input_fhat_A_s\":",f);dg_fvec(f,d->input.fhat_A_s,2);
 fprintf(f,",\"applied_input_hw\":%u,\"selected_id\":%u,\"pc_off_id\":%u,\"hw_state\":%u,\"valid\":%u,\"requested\":%u,\"active\":%u,\"current_mask\":%u,\"current_count\":%u,\"intersection_mask\":%u,\"intersection_count\":%u,\"midpoint_prefix\":%u,\"idq1_A\":",
  (unsigned)d->input.applied_hw_state,(unsigned)o->selected_id,(unsigned)o->pc_off_id,(unsigned)o->hw_state,
  (unsigned)o->valid,(unsigned)o->requested,(unsigned)o->active,(unsigned)o->current_mask,(unsigned)o->current_count,
  (unsigned)o->intersection_mask,(unsigned)o->intersection_count,(unsigned)o->midpoint_prefix);
 dg_fvec(f,o->idq1_A,2);fputs(",\"np1_V\":",f);dg_num(f,o->np1_V);
 fputs(",\"idq2_A\":[",f);for(k=0;k<8;k++){if(k)fputc(',',f);dg_fvec(f,o->idq2_A[k],2);}fputc(']',f);
 fputs(",\"np2_V\":",f);dg_fvec(f,o->np2_V,8);fputs(",\"gi_A2\":",f);dg_fvec(f,o->gi,8);
 fputs(",\"gu_V2\":",f);dg_fvec(f,o->gu,8);fputs(",\"gz_rad2\":",f);dg_fvec(f,o->gz,8);
 fputs(",\"order_i\":",f);dg_uvec(f,o->order_i,8);fputs(",\"order_u\":",f);dg_uvec(f,o->order_u,8);
 fputs(",\"blocked_candidate\":",f);dg_uvec(f,o->blocked_candidate,8);
 fputs(",\"budget_limit_A\":",f);dg_num(f,o->budget_limit_A);fputs(",\"voltage_margin_V\":",f);dg_num(f,o->voltage_margin_V);
 fputs(",\"zcdc_diag\":",f);dg_fvec(f,o->zcdc_diag,10);fputc('}',f);
}
static int dg_open(const char *prefix)
{
 char path[2048];
#define DG_OPEN(VAR,EXT) do{snprintf(path,sizeof(path),"%s.%s",prefix,EXT);VAR=fopen(path,"w");if(!VAR)return 0;}while(0)
 DG_OPEN(dg_control,"control.jsonl");DG_OPEN(dg_candidates,"candidates.csv");
 DG_OPEN(dg_physical,"physical.csv");DG_OPEN(dg_apply,"apply.jsonl");DG_OPEN(dg_events,"events.jsonl");
#undef DG_OPEN
 fputs("serial,sample_s,ISR_s,t1_s,t2_s,theta1_derived_rad,theta2_derived_rad,matlab_id,hw,id_A,iq_A,np_V,gi_A2,gu_V2,gz_rad2,blocked,rank_i,rank_u,in_current,in_intersection,selected,pc_off,status\n",dg_candidates);
 fputs("step_begin_s,t_s,gate_used,pending_at_step_begin,gate_after_events,pending_after_events,trip_after_events,last_control_ISR_s,last_ZERO_load_s,last_gate_change_s,applied_producer_serial,applied_producer_sample_s,latest_decision_serial,old_ia_A,old_ib_A,old_ic_A,ia_A,ib_A,ic_A,old_up_V,old_low_V,up_V,low_V,ea_mid_V,eb_mid_V,ec_mid_V,ea_end_V,eb_end_V,ec_end_V\n",dg_physical);
 return 1;
}
static void dg_close(void)
{if(dg_control)fclose(dg_control);if(dg_candidates)fclose(dg_candidates);if(dg_physical)fclose(dg_physical);if(dg_apply)fclose(dg_apply);if(dg_events)fclose(dg_events);}
static void dg_before_step(const Plant *p,unsigned gate,unsigned pending)
{unsigned k;for(k=0;k<3;k++)dg_old_i[k]=p->i[k];dg_old_up=p->up;dg_old_low=p->low;dg_step_gate=gate;dg_step_pending=pending;}
static void dg_after_step(const Plant *p,double begin,double end,unsigned gate,unsigned pending,unsigned trip)
{
 unsigned k;double emid[3],eend[3];
 if(end<.155 || end>.162)return;grid(begin+.5*DT,emid);grid(end,eend);
 fprintf(dg_physical,"%.17g,%.17g,%u,%u,%u,%u,%u,%.17g,%.17g,%.17g,%u,%.17g,%u",begin,end,dg_step_gate,dg_step_pending,gate,pending,trip,dg_last_control,dg_last_zero,dg_last_change,dg_applied.have?dg_applied.serial:0U,dg_applied.have?dg_applied.sample:-1.0,dg_latest.have?dg_latest.serial:0U);
 for(k=0;k<3;k++)fprintf(dg_physical,",%.17g",dg_old_i[k]);for(k=0;k<3;k++)fprintf(dg_physical,",%.17g",p->i[k]);
 fprintf(dg_physical,",%.17g,%.17g,%.17g,%.17g",dg_old_up,dg_old_low,p->up,p->low);
 for(k=0;k<3;k++)fprintf(dg_physical,",%.17g",emid[k]);for(k=0;k<3;k++)fprintf(dg_physical,",%.17g",eend[k]);fputc('\n',dg_physical);
}
static void dg_zero(const Plant *p,double t,unsigned gate,unsigned pending,unsigned trip)
{
 unsigned previous_serial=dg_applied.have?dg_applied.serial:0U;
 double previous_sample=dg_applied.have?dg_applied.sample:-1.0;
 if(gate!=dg_seen_gate){dg_last_change=t;dg_seen_gate=gate;}dg_last_zero=t;
 if(!trip && dg_pending.have && dg_pending.command==gate && dg_pending.output.status==PC_OK)dg_applied=dg_pending;
 else dg_applied.have=0U;
 if(t<.14 || t>.17)return;
 fprintf(dg_apply,"{\"ZERO_s\":%.17g,\"gate\":%u,\"pending\":%u,\"trip\":%u,\"last_gate_change_s\":%.17g,\"previous_producer_serial\":%u,\"previous_producer_sample_s\":%.17g,\"loaded_producer_serial\":%u,\"loaded_producer_sample_s\":%.17g,\"physical_iabc_at_ZERO_A\":",t,gate,pending,trip,dg_last_change,previous_serial,previous_sample,dg_applied.have?dg_applied.serial:0U,dg_applied.have?dg_applied.sample:-1.0);
 dg_dvec(dg_apply,p->i,3);fprintf(dg_apply,",\"physical_up_V\":%.17g,\"physical_low_V\":%.17g,\"physical_dc_V\":%.17g}\n",p->up,p->low,p->up+p->low);
}
static void dg_failure(const char *kind,double now,double sample,unsigned status)
{fprintf(dg_events,"{\"kind\":\"%s\",\"time_s\":%.17g,\"sample_s\":%.17g,\"status_or_fault\":%u}\n",kind,now,sample,status);}
static void dg_trip(const Plant *p,unsigned phase,double now,unsigned gate,unsigned pending)
{
 dg_first_trip=now;
 fprintf(dg_events,"{\"kind\":\"first_7A_before_clear\",\"phase_zero_based\":%u,\"phase\":\"%c\",\"time_s\":%.17g,\"gate_before_clear\":%u,\"pending_before_clear\":%u,\"last_control_ISR_s\":%.17g,\"last_ZERO_load_s\":%.17g,\"last_gate_change_s\":%.17g,\"old_iabc_A\":",phase,"ABC"[phase],now,gate,pending,dg_last_control,dg_last_zero,dg_last_change);
 dg_dvec(dg_events,dg_old_i,3);fputs(",\"iabc_A\":",dg_events);dg_dvec(dg_events,p->i,3);
 fprintf(dg_events,",\"up_V\":%.17g,\"low_V\":%.17g,\"dc_V\":%.17g,\"applied_prediction_t1_interrupted\":%u,\"applied_prediction_t2_interrupted\":%u,\"executing_gate_producer\":",p->up,p->low,p->up+p->low,(unsigned)(dg_applied.have && now<dg_applied.t1),(unsigned)(dg_applied.have && now<dg_applied.t2));
 dg_decision(dg_events,&dg_applied);fputs(",\"latest_control_decision_possibly_pending\":",dg_events);dg_decision(dg_events,&dg_latest);fputs("}\n",dg_events);
 /* Mirror the already committed original clear solely in diagnostic history. */
 if(gate!=0U){dg_last_change=now;dg_seen_gate=0U;}dg_pending.have=0U;
}
static void dg_control_event(const Plant *p,double cycle,double now,double sample,unsigned serial,unsigned mode,unsigned enabled,unsigned gate,unsigned pending,double used,double next,
 const float current[3],const float voltage[3],float up,float low,const float idq[2],const PC_Config *cfg,const PC_Input *input,const PC_Output *out,
 const VG_State *pll,const VO_State *eso,unsigned has_history,const VO_ReconstructOutput *reconstruction,const float du[2],
 const float previous_dq[2],const float previous_f[2],float previous_up,float previous_low,float previous_theta,float previous_omega,unsigned previous_gate,unsigned core_errors,unsigned observer_errors)
{
 unsigned j,k;dg_last_control=now;
 if(enabled && mode>0U){
  dg_latest.have=1U;dg_latest.serial=serial;dg_latest.mode=mode;dg_latest.command=pending;
  dg_latest.sample=sample;dg_latest.isr=now;dg_latest.t1=cycle+TS;dg_latest.t2=cycle+2*TS;
  dg_latest.cfg=*cfg;dg_latest.input=*input;dg_latest.output=*out;
  dg_latest.theta1=input->theta_rad+input->omega_rad_s*cfg->first_duration_s;
  dg_latest.theta2=dg_latest.theta1+input->omega_rad_s*cfg->candidate_duration_s;
  dg_pending=dg_latest;
 }else dg_pending.have=0U;
 if(sample<.14 || sample>.17)return;
 fprintf(dg_control,"{\"serial\":%u,\"cycle_start_s\":%.17g,\"sample_s\":%.17g,\"ISR_s\":%.17g,\"enabled\":%u,\"mode\":%u,\"gate\":%u,\"pending\":%u,\"idref_used_A\":%.17g,\"idref_new_A\":%.17g,\"last_ZERO_load_s\":%.17g,\"last_gate_change_s\":%.17g,\"executing_producer_serial\":%u,\"executing_producer_sample_s\":%.17g,\"first_trip_s\":%.17g,\"adc_iabc_A\":",serial,cycle,sample,now,enabled,mode,gate,pending,used,next,dg_last_zero,dg_last_change,dg_applied.have?dg_applied.serial:0U,dg_applied.have?dg_applied.sample:-1.0,dg_first_trip);
 dg_fvec(dg_control,current,3);fputs(",\"adc_eabc_V\":",dg_control);dg_fvec(dg_control,voltage,3);
 fputs(",\"physical_iabc_at_ISR_A\":",dg_control);dg_dvec(dg_control,p->i,3);
 fprintf(dg_control,",\"adc_up_V\":%.17g,\"adc_low_V\":%.17g,\"physical_up_V\":%.17g,\"physical_low_V\":%.17g,\"theta_rad\":%.17g,\"omega_rad_s\":%.17g,\"PLL_locked\":%u,\"PLL_faults\":%u,\"core_errors_total\":%u,\"observer_errors_total\":%u,\"measured_idq_A\":",(double)up,(double)low,p->up,p->low,(double)pll->theta_rad,(double)pll->omega_rad_s,(unsigned)pll->locked,(unsigned)pll->faults,core_errors,observer_errors);
 dg_fvec(dg_control,idq,2);fputs(",\"Fhat_A_s\":",dg_control);dg_fvec(dg_control,eso->f_hat_A_s,2);
 fputs(",\"innovation_A\":",dg_control);dg_fvec(dg_control,eso->innovation_A,2);
 fprintf(dg_control,",\"ESO_valid\":%u,\"ESO_faults\":%u,\"history_present\":%u,\"previous_idq_A\":",(unsigned)eso->valid,(unsigned)eso->faults,has_history);
 dg_fvec(dg_control,previous_dq,2);fputs(",\"previous_Fhat_A_s\":",dg_control);dg_fvec(dg_control,previous_f,2);
 fprintf(dg_control,",\"previous_up_V\":%.17g,\"previous_low_V\":%.17g,\"previous_theta_rad\":%.17g,\"previous_omega_rad_s\":%.17g,\"previous_gate\":%u,\"deltaU_supplied_V_s\":",(double)previous_up,(double)previous_low,(double)previous_theta,(double)previous_omega,previous_gate);dg_fvec(dg_control,du,2);
 fputs(",\"reconstruction\":",dg_control);
 if(has_history){fprintf(dg_control,"{\"valid\":%u,\"faults\":%u,\"delta_u_dq_V_s\":",(unsigned)reconstruction->valid,(unsigned)reconstruction->faults);dg_fvec(dg_control,reconstruction->delta_u_dq_V_s,2);fputs(",\"endpoint_quadrature_dq_V_s\":",dg_control);dg_fvec(dg_control,reconstruction->endpoint_quadrature_dq_V_s,2);fputs(",\"model_end_idq_A\":",dg_control);dg_fvec(dg_control,reconstruction->model_end_idq_A,2);fputs(",\"model_end_n_V\":",dg_control);dg_num(dg_control,reconstruction->model_end_n_V);fputc('}',dg_control);}else fputs("null",dg_control);
 fputs(",\"decision_this_ISR\":",dg_control);if(enabled && mode>0U)dg_decision(dg_control,&dg_latest);else fputs("null",dg_control);fputs("}\n",dg_control);
 if(!enabled || mode==0U)return;
 for(j=0;j<8;j++){
  unsigned ri=0,ru=0;for(k=0;k<8;k++){if(out->order_i[k]==j+1U)ri=k+1U;if(out->order_u[k]==j+1U)ru=k+1U;}
  fprintf(dg_candidates,"%u,%.17g,%.17g,%.17g,%.17g,%.17g,%.17g,%u,%u,%.17g,%.17g,%.17g,%.17g,%.17g,%.17g,%u,%u,%u,%u,%u,%u,%u,%u\n",serial,sample,now,dg_latest.t1,dg_latest.t2,(double)dg_latest.theta1,(double)dg_latest.theta2,j+1U,(unsigned)PC_id_to_hw((uint16_t)(j+1U)),(double)out->idq2_A[j][0],(double)out->idq2_A[j][1],(double)out->np2_V[j],(double)out->gi[j],(double)out->gu[j],(double)out->gz[j],(unsigned)out->blocked_candidate[j],ri,ru,(unsigned)((out->current_mask>>j)&1U),(unsigned)((out->intersection_mask>>j)&1U),(unsigned)(out->selected_id==j+1U),(unsigned)(out->pc_off_id==j+1U),(unsigned)out->status);
 }
}
'''

def instrument(text,snapshot):
 changes=[]
 def one(anchor,replacement,label):
  nonlocal text
  count=text.count(anchor)
  if count!=1:raise ValueError(f"{label}: expected one anchor, found {count}")
  text=text.replace(anchor,replacement,1);changes.append({"label":label,"anchor_count":count,"anchor_sha256":hashlib.sha256(anchor.encode()).hexdigest(),"replacement_sha256":hashlib.sha256(replacement.encode()).hexdigest()})
 for name in ["vienna_pcmfpc_zcdc.h","vienna_pcmfpc_fast.h","vienna_pcmfpc_observer.h","vienna_grid_sync.h","vienna_fcs_mpc.h"]:
  one(f'#include "../{name}"',f'#include "{(snapshot/name).as_posix()}"',"snapshot include "+name)
 one("int main(int argc,char **argv)\n{",C_HELPERS+"\nint main(int argc,char **argv)\n{","logging-only helpers")
 anchor="    memset(&plant,0,sizeof(plant));memset(&m,0,sizeof(m));memset(&input,0,sizeof(input));"
 one(anchor,"    if(!dg_open(argv[4])){fprintf(stderr,\"diagnostic log open failed\\n\");return 6;}\n"+anchor,"open sidecar logs")
 anchor="            else gate=pending=0;\n        }"
 one(anchor,"            else gate=pending=0;\n            dg_zero(&plant,t,gate,pending,m.hard_trip);\n        }","every ZERO load event")
 anchor="        plant_step(&plant,gate,t,mid,&kcl);now=t+DT;"
 one(anchor,"        dg_before_step(&plant,gate,pending);\n"+anchor,"capture pre-physical state")
 anchor="if(fabs(plant.i[j])>=TRIP_CURRENT && m.new_trip_first<0){"
 one(anchor,anchor+"dg_trip(&plant,j,now,gate,pending);","first7A before original clear")
 anchor="        if(step%CONTROL_TICKS==ISR_TICK){"
 one(anchor,"        dg_after_step(&plant,t,now,gate,pending,m.hard_trip);\n"+anchor,"bounded physical sidecar")
 for anchor,replacement,label in [
  ("if(!VO_reconstruct(&pc,&reconstruction,&reconstructed)){m.observer_errors++;",'if(!VO_reconstruct(&pc,&reconstruction,&reconstructed)){dg_failure("reconstruct",now,lastSampleTime,reconstructed.faults);m.observer_errors++;',"observe reconstruction failure"),
  ("if(!VO_update_delta(&vo,&eso,idq,edq,du,seq,VO_SOURCE_MODEL_RECONSTRUCTED)){m.observer_errors++;",'if(!VO_update_delta(&vo,&eso,idq,edq,du,seq,VO_SOURCE_MODEL_RECONSTRUCTED)){dg_failure("observer_update",now,lastSampleTime,eso.faults);m.observer_errors++;',"observe ESO failure"),
  ("if(PC_run_fast(&pc,&input,&output)!=PC_OK){m.core_errors++;",'if(PC_run_fast(&pc,&input,&output)!=PC_OK){dg_failure("fast_core",now,lastSampleTime,output.status);m.core_errors++;',"observe fast-core failure"),
  ("if(PC_run(&pc,&input,&output)!=PC_OK){m.core_errors++;",'if(PC_run(&pc,&input,&output)!=PC_OK){dg_failure("reference_core",now,lastSampleTime,output.status);m.core_errors++;',"observe reference-core failure")]:one(anchor,replacement,label)
 anchor="            for(j=0;j<2;j++){prevCurrentDQ[j]=idq[j];prevFhat[j]=eso.f_hat_A_s[j];}"
 call="            dg_control_event(&plant,cycle_start,now,lastSampleTime,control+1U,mode,enabled,gate,pending,reference_used,idref,current,voltage,up,low,idq,&pc,&input,&output,&pll,&eso,hasHistory,&reconstructed,du,prevCurrentDQ,prevFhat,prevUp,prevLow,prevTheta,prevOmega,prevGate,m.core_errors,m.observer_errors);\n"
 one(anchor,call+anchor,"control/outer/ESO snapshot before history overwrite")
 one("            fclose(trace);return 5;","            dg_close();fclose(trace);return 5;","close diagnostic logs on original rail failure")
 one("    fclose(trace);\n    for(j=0;j<3;j++){","    fclose(trace);dg_close();\n    for(j=0;j<3;j++){","close diagnostic logs before original final metrics")
 return text,changes

def main():
 ap=argparse.ArgumentParser(description=__doc__)
 ap.add_argument("--clang",type=Path,default=CLANG)
 ap.add_argument("--vcvars",type=Path,default=VCVARS)
 ap.add_argument("--baseline",type=Path,default=BASELINE,help="Read-only measured pass4 directory containing original CSV/JSON")
 a=ap.parse_args();out=OUTPUT.resolve();allowed=(ROOT/"output/ti_pcmfpc_zcdc_port/control_rate_startup_diag").resolve()
 if out.parent!=allowed or out.name!="pass1":raise ValueError("Output path escape")
 if out.exists() and (not out.is_dir() or any(out.iterdir())):raise FileExistsError("Diagnostic pass1 is nonempty; no overwrite, cleanup or deletion")
 baseline=a.baseline.resolve();original_report=baseline/"REPORT.json"
 recorded=json.loads(original_report.read_text(encoding="utf-8"));pins=recorded["source_sha256"]
 for name,digest in pins.items():
  path=(TARGET/name).resolve()
  if TARGET.resolve() not in path.parents:raise ValueError("Source manifest path escape")
  if sha(path)!=digest:raise ValueError("Current source differs from measured pass4: "+name)
 cases=[("pc_off_nominal",1),("pc_on_nominal",2)]
 baseline_hashes={}
 for name,_ in cases:
  for extension in ["csv","json"]:
   p=baseline/(name+"."+extension);baseline_hashes[str(p)]=sha(p)
 out.mkdir(parents=True);snapshot=out/"source_snapshot";snapshot.mkdir();build=out/"build";build.mkdir()
 for name in pins:
  dest=snapshot/name;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(TARGET/name,dest)
 source=snapshot/"tests/ti_closed_loop.c"
 generated,changes=instrument(source.read_text(encoding="utf-8"),snapshot)
 diagnostic=build/"instrumented_plant.c";diagnostic.write_text(generated,encoding="utf-8")
 sources=[snapshot/n for n in ["vienna_pcmfpc_zcdc.c","vienna_pcmfpc_fast.c","vienna_pcmfpc_observer.c","vienna_grid_sync.c"]]+[diagnostic]
 executable=build/"startup_diag.exe"
 defines="-DTI_CLOSED_LOOP_FAST=1 -DSIM_CONTROL_STEP_SEC=0.000500 -DSIM_SAMPLE_OFFSET_SEC=0.000250 -DSIM_ISR_OFFSET_SEC=0.000252"
 command=(f'call "{a.vcvars.resolve()}" >nul && set "TMP={build}" && set "TEMP={build}" && "{a.clang.resolve()}" -std=c11 -O2 -Wall -Wextra -Werror -D_CRT_SECURE_NO_WARNINGS '+defines+" "+" ".join(f'"{p}"' for p in sources)+f' -o "{executable}"')
 batch=build/"compile.cmd";batch.write_text("@echo off\n"+command+"\n",encoding="ascii")
 manifest={"date":"2026-10-28","status":"PREPARED_DIAGNOSTIC_SNAPSHOTS","source_sha256":pins,"baseline_report_sha256":sha(original_report),"baseline_output_sha256":baseline_hashes,"driver_sha256":sha(Path(__file__)),"instrumented_C_sha256":sha(diagnostic),"strict_anchor_changes":changes,"compile_command":command,"windows":{"control_samples_s":[.14,.17],"physical_step_ends_s":[.155,.162],"physical_step_s":.0000005},"semantics":{"physical_row":"t_s=end of original plant step; gate_used acted over [step_begin_s,t_s]. gate_after_events can already be0 due to the first trip.","apply_row":"Every ZERO including unchanged states; physical current/bus are captured at ZERO before that step's plant advance. Previous and newly loaded decision producers are distinct.","control_row":"Current sample timestamp and actual harness ISR grid time are separate. Producer of executing gate is distinct from the latest decision which may still be pending.","predictions":"Authoritative public CONTROL idq1/np1 and all idq2/np2/cost/rank fields only; unavailable substeps are not fabricated. theta1/2 are separately labeled derived using original float operation order. t1=cycle_start+Ts,t2=cycle_start+2Ts.","observer":"Only already computed DeltaU/quadrature/model endpoint and previous history values; reconstruction=null when no history was consumed. No extra predictor/ESO calls.","interruption":"First trip recorded before original clears gate/pending/enable. Endpoint targets after trip must be marked disrupted; no trip-after-OFF value is a held-candidate error.","qualification":"Logging only, no counterfactual/model/protection/MCU changes. Exact original CSV/JSON equality is mandatory."}}
 (out/"MANIFEST.json").write_text(json.dumps(manifest,indent=2)+"\n",encoding="utf-8")
 compiled=subprocess.run(["cmd.exe","/d","/c",str(batch)],cwd=snapshot,capture_output=True,text=True)
 (out/"build.log").write_text(compiled.stdout+compiled.stderr,encoding="utf-8")
 if compiled.returncode:raise RuntimeError("HOST diagnostic build failed; retained pass1 evidence")
 results=[]
 for name,mode in cases:
  prefix=out/name
  run=subprocess.run([str(executable),str(mode),"50","0",str(prefix),"0"],cwd=snapshot,capture_output=True,text=True)
  prefix.with_suffix(".log").write_text(run.stdout+run.stderr,encoding="utf-8")
  comparison={extension:{"baseline_sha256":baseline_hashes[str(baseline/(name+"."+extension))],"diagnostic_sha256":sha(prefix.with_suffix("."+extension)),"byte_identical":prefix.with_suffix("."+extension).read_bytes()==(baseline/(name+"."+extension)).read_bytes()} for extension in ["csv","json"] if prefix.with_suffix("."+extension).exists()}
  events=[json.loads(line) for line in prefix.with_suffix(".events.jsonl").read_text(encoding="utf-8").splitlines()]
  trips=[event for event in events if event["kind"]=="first_7A_before_clear"]
  old_metrics=json.loads((baseline/(name+".json")).read_text(encoding="utf-8"))
  first_trip_equal=len(trips)==1 and abs(trips[0]["time_s"]-old_metrics["first_proposed_7A_trip_s"])<1e-12
  sidecars={p.name:{"sha256":sha(p),"bytes":p.stat().st_size} for p in out.glob(name+".*") if p.suffix in ["jsonl"] or p.name.endswith(".candidates.csv") or p.name.endswith(".physical.csv")}
  item={"case":name,"return_code":run.returncode,"original_output_comparison":comparison,"first_trip_equal":first_trip_equal,"first_trip_event":trips[0] if trips else None,"sidecars":sidecars}
  results.append(item);print(name+": original CSV/JSON "+("IDENTICAL" if len(comparison)==2 and all(x["byte_identical"] for x in comparison.values()) else "DIFFERENT"),flush=True)
 if any(sha(snapshot/name)!=digest for name,digest in pins.items()):raise RuntimeError("Executed snapshot changed")
 if any(sha(Path(p))!=digest for p,digest in baseline_hashes.items()):raise RuntimeError("Read-only baseline changed")
 passed=all(x["return_code"]==0 and x["first_trip_equal"] and len(x["original_output_comparison"])==2 and all(y["byte_identical"] for y in x["original_output_comparison"].values()) for x in results)
 report={"date":"2026-10-28","status":"PASS_LOGGING_ONLY_ORIGINAL_TRAJECTORIES_IDENTICAL" if passed else "FAIL_DIAGNOSTIC_CHANGED_ORIGINAL_TRAJECTORY","manifest_sha256":sha(out/"MANIFEST.json"),"results":results,"scope":"Only diagnostic logging equivalence. Original modeled7A failure is preserved, not a power-control PASS; no MCU or hardware actions."}
 (out/"REPORT.json").write_text(json.dumps(report,indent=2)+"\n",encoding="utf-8")
 (out/"REPORT.md").write_text("# Dense startup diagnostics\n\n"+report["status"]+"\n\n"+report["scope"]+"\n",encoding="utf-8")
 print(report["status"],flush=True);return 0 if passed else 1

if __name__=="__main__":raise SystemExit(main())
