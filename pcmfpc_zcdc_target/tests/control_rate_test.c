/* Independent HOST checks of the configured 2 kHz time domain.
 * No register writes, hardware connections, controller/protection changes.
 * Numerical tolerances below apply only to measured test invariants. */
#include <stdint.h>
typedef float float32_t;
#include "../vienna_settings.h"
#include "../vienna_pcmfpc_fast.h"
#include "../vienna_pcmfpc_observer.h"
#include "../vienna_grid_sync.h"
#include <float.h>
#include <math.h>
#include <stdio.h>
#include <string.h>

#define CR_PI 3.14159265358979323846
static unsigned checks,failures,pll_lock_samples,predictor_calls,predictor_status[7],run_calls,run_status[7];
static unsigned reconstruction_calls,reconstruction_success,reconstruction_failure;
static double pll_rms,pll_max,eso_max_i,eso_max_f,integral_error;
static double kcl_max,np_invariant_max,endpoint_angle_max,max_prediction_current,max_prediction_np;
static PC_Output selected;

static void check(int result,const char *name)
{checks++;if(!result){failures++;fprintf(stderr,"FAIL %s\n",name);}}
static double wrap(double x)
{while(x>CR_PI)x-=2*CR_PI;while(x< -CR_PI)x+=2*CR_PI;return x;}
static void max_error(double *value,double error)
{error=fabs(error);if(error>*value)*value=error;}
static void grid(double theta,float amplitude,int reverse,float abc[3])
{
 abc[0]=amplitude*(float)cos(theta);
 abc[1]=amplitude*(float)cos(theta+(reverse?1.0:-1.0)*2*CR_PI/3);
 abc[2]=amplitude*(float)cos(theta+(reverse?-1.0:1.0)*2*CR_PI/3);
}
static void config(PC_Config *c)
{
 PC_default_config(c);c->first_duration_s=VIENNA_FCS_DELAY_SEC;
 c->candidate_duration_s=VIENNA_FCS_TS_SEC;c->L_H=VIENNA_PFC_INDUCTOR_VALUE;
 c->R_ohm=VIENNA_FCS_R_OHM;c->C_half_F=VIENNA_FCS_C_HALF_F;
 c->root_method=PC_ROOT_PIECEWISE;c->diagnostic_all_angles=0U;
}
static void time_domain(void)
{
 uint32_t period=(uint32_t)VIENNA_PFC3PH_PWM_PERIOD,tbprd=period/2U;
 uint32_t adc_ticks=(uint16_t)((float)VIENNA_IL1_ACQPS_SYS_CLKS*6.0f*
  ((float)VIENNA_PWMSYSCLOCK_FREQ_HZ/(float)VIENNA_CPU_SYS_CLOCK_FREQ_HZ))+
  (uint16_t)((float)VIENNA_ADC_CONV_TIME*(float)VIENNA_PWMSYSCLOCK_FREQ_HZ*6.0f);
 uint32_t compare=tbprd-adc_ticks;
 check((uint32_t)VIENNA_ISR_CONTROL_FREQUENCY_HZ==2000U,"actual configured control rate is 2 kHz");
 check(period==50000U && tbprd==25000U,"100 MHz up-down full period50000 and TBPRD25000");
 /* The implementation owner independently built the native TI artifact:
  * HAL assembly and linked0x82021 write24815(0x60ef), proving185tick arithmetic.
  * Earlier186/24814 was a derivation error; hardware registers remain unread. */
 check(adc_ticks==185U && compare==24815U,"HOST timing arithmetic agrees with native TI185tick/24815 constant");
 check(period<=UINT16_MAX && tbprd<=UINT16_MAX && compare<=UINT16_MAX,"all PWM values fit uint16");
 check(fabs((double)VIENNA_FCS_TS_SEC-.0005)<1e-9,"configured Ts500us");
 check(fabs((double)VIENNA_FCS_DELAY_SEC-.00025)<1e-9,"configured first delay250us");
 check(VIENNA_FCS_WRITE_GUARD_TICKS==40U,"write guard remains40 TBCLK ticks");
 printf("{\"test\":\"configured_timing\",\"control_Hz\":%.9g,\"period_ticks\":%u,\"TBPRD\":%u,\"ADC_offset_ticks\":%u,\"CMPB_CMPC\":%u,\"Ts_s\":%.12g,\"delay_s\":%.12g,\"SOC_s\":%.12g,\"ISR_s\":%.12g,\"ISR_to_ZERO_s\":%.12g,\"write_guard_ticks\":%u}\n",
  (double)VIENNA_ISR_CONTROL_FREQUENCY_HZ,period,tbprd,adc_ticks,compare,(double)VIENNA_FCS_TS_SEC,(double)VIENNA_FCS_DELAY_SEC,
  (double)compare/VIENNA_PWMSYSCLOCK_FREQ_HZ,(double)(period-compare)/VIENNA_PWMSYSCLOCK_FREQ_HZ,
  (double)compare/VIENNA_PWMSYSCLOCK_FREQ_HZ,VIENNA_FCS_WRITE_GUARD_TICKS);
}
static void pll_domain(void)
{
 VG_Config c;VG_State s;float abc[3];double error,sum=0;unsigned k,settled=0;
 check(VG_configure(&c,.0005f,50,20),"PLL accepts500us");
 check(c.lock_samples==40U,"PLL20ms qualification uses40 samples at2kHz");
 check(VG_configure(&c,.000001f,50,20) && VG_configure(&c,.001f,50,20),"PLL configured dt endpoints remain supported");
 check(!VG_configure(&c,nextafterf(.000001f,0),50,20) && !VG_configure(&c,nextafterf(.001f,INFINITY),50,20),"PLL rejects dt outside original range");
 check(!VG_configure(&c,NAN,50,20),"PLL rejects nonfinite dt");
 VG_configure(&c,.0005f,50,20);VG_reset(&s);
 for(k=0;k<2000;k++){
  double theta=.7+2*CR_PI*50*k*.0005;grid(theta,81.65f,0,abc);
  check(VG_run(&c,&s,abc),"balanced50Hz PLL sample valid");
  check(isfinite(s.theta_rad) && s.theta_rad>=0 && s.theta_rad<2*CR_PI,"PLL current timestamp angle is finite and bounded");
  if(k>=400){error=wrap((double)s.theta_rad-theta);sum+=error*error;max_error(&pll_max,error);pll_lock_samples+=s.locked;settled++;}
 }
 pll_rms=sqrt(sum/settled);
 check(s.locked && pll_lock_samples==settled,"balanced50Hz remains locked after200ms");
 check(pll_rms<.0003 && fabs((double)s.frequency_hz-50)<.002 && s.ed_V>81 && fabsf(s.eq_V)<.02f,"50Hz phase/frequency/axis accuracy at2kHz");
 VG_reset(&s);for(k=0;k<100;k++){grid(2*CR_PI*50*k*.0005,81.65f,1,abc);VG_run(&c,&s,abc);}
 check(!s.locked && (s.faults&VG_FAULT_REVERSE_SEQUENCE),"reverse phase sequence still rejected at2kHz");
 abc[0]=abc[1]=abc[2]=0;check(!VG_run(&c,&s,abc) && !s.initialized,"zero voltage resets PLL");
}
static void eso_domain(void)
{
 VO_Config c;VO_State s;float i[2]={1,.2f},e[2]={80,0},du[2];
 double ih[2],fh[2],rho,ki,kf,cumulative[2]={0,0},previous[2]={0,0};unsigned j,k;
 check(VO_configure(&c,.0005f,.003f,(float)(2*CR_PI*500)),"ESO accepts500us");
 check(VO_configure(&c,.0000001f,.003f,1000) && VO_configure(&c,.001f,.003f,1000),"ESO configured dt endpoints remain supported");
 check(!VO_configure(&c,nextafterf(.0000001f,0),.003f,1000) && !VO_configure(&c,nextafterf(.001f,INFINITY),.003f,1000),"ESO rejects dt outside original range");
 VO_configure(&c,.0005f,.003f,(float)(2*CR_PI*500));VO_reset(&s);
 rho=exp(-(double)c.omega_eso_rad_s*c.sample_sec);ki=1-rho*rho;kf=(1-rho)*(1-rho)/c.sample_sec;
 check(c.k_current>0 && c.k_current<1 && isfinite(c.k_disturbance),"500Hz ESO gains remain finite in500us domain");
 check(VO_update_delta(&c,&s,i,e,NULL,0,VO_SOURCE_MEASURED_INTEGRAL),"ESO initialization at2kHz");
 for(j=0;j<2;j++){ih[j]=i[j];fh[j]=(double)e[j]/c.inductance_H;}
 for(k=1;k<10000;k++){
  i[0]=(float)(1+.3*sin(2*CR_PI*10*k*.0005));i[1]=(float)(.2*cos(2*CR_PI*7*k*.0005));
  du[0]=(float)(.0375+.0075*cos(2*CR_PI*11*k*.0005));du[1]=(float)(.0025*sin(2*CR_PI*13*k*.0005));
  check(VO_update_delta(&c,&s,i,e,du,k,VO_SOURCE_MEASURED_INTEGRAL),"ESO500us independent input update valid");
  for(j=0;j<2;j++){
   double delta,prior,innovation;cumulative[j]+=du[j];delta=cumulative[j]-previous[j];previous[j]=cumulative[j];
   prior=ih[j]-delta/c.inductance_H+c.sample_sec*fh[j];innovation=i[j]-prior;
   ih[j]=prior+ki*innovation;fh[j]+=kf*innovation;
   max_error(&eso_max_i,(double)s.i_hat_A[j]-ih[j]);max_error(&eso_max_f,(double)s.f_hat_A_s[j]-fh[j]);
  }
 }
 check(eso_max_i<2e-5 && eso_max_f<.3,"500us ESO agrees with independent cumulative-double oracle");
 check(!VO_update_delta(&c,&s,i,e,du,9999,VO_SOURCE_MEASURED_INTEGRAL) && s.faults==VO_FAULT_SEQUENCE,"ESO repeated sequence still rejected");
 check(VO_update_delta(&c,&s,i,e,NULL,UINT32_MAX,VO_SOURCE_MEASURED_INTEGRAL) && VO_update_delta(&c,&s,i,e,du,0,VO_SOURCE_MEASURED_INTEGRAL),"ESO sequence wrap at2kHz");
 {
  const float pole[3]={85,-80,0};float actual[2];double expected[2]={0,0},alpha=(2*85.0+80)/3,beta=-80/sqrt(3.0),h=.00025/20000;
  VO_integrate_pole_segment(pole,.3f,314.159265f,.00025f,actual);
  for(k=0;k<20000;k++){double angle=(double).3f+(double)314.159265f*(k+.5)*h;expected[0]+=h*(cos(angle)*alpha+sin(angle)*beta);expected[1]+=h*(-sin(angle)*alpha+cos(angle)*beta);}
  for(j=0;j<2;j++)max_error(&integral_error,(double)actual[j]-expected[j]);
  check(integral_error<2e-8,"250us rotating-pole integral agrees with independent quadrature");
 }
}
static void interval_invariants(const PC_Config *c,const PC_Interval *out,float duration,float theta,float omega,unsigned hw,float initial_np)
{
 unsigned step,j;double np=initial_np;
 for(step=0;step<2;step++){
  const PC_Substep *p=&out->substep[step];double sum=0,scale=1,neutral=0,expected_angle=(double)theta+(step+1)*omega*(double)duration*.5;
  for(j=0;j<3;j++){
   check(isfinite(p->old_abc_A[j]) && isfinite(p->free_abc_A[j]) && isfinite(p->next_abc_A[j]) && isfinite(p->pole_abc_V[j]),"long-interval projected currents/poles finite");
   sum+=p->next_abc_A[j];scale+=fabs(p->next_abc_A[j]);
   if((hw>>j)&1U)neutral+=((double)p->old_abc_A[j]+p->next_abc_A[j])*.5;
   max_error(&max_prediction_current,p->next_abc_A[j]);
  }
  max_error(&kcl_max,sum);check(fabs(sum)<2e-5*scale,"long-interval substep KCL");
  np+=(double)duration*.5/c->C_half_F*neutral;max_error(&np_invariant_max,(double)p->np_V-np);
  max_error(&endpoint_angle_max,(double)p->theta_end_rad-expected_angle);
  check(fabs((double)p->np_V-np)<1e-4,"neutral integration carries midpoint across both substeps");
  check(fabs((double)p->theta_end_rad-expected_angle)<2e-6,"500us predictor advances each250us endpoint angle");
 }
 check(isfinite(out->np_V) && isfinite(out->idq_A[0]) && isfinite(out->idq_A[1]),"long-interval successful output finite");
 max_error(&max_prediction_np,out->np_V);
}
static void predictor_domain(void)
{
 PC_Config c;PC_Input in;PC_Interval out;unsigned angle,hw,level,duration,k;uint16_t status;
 const float amplitudes[]={0,.000000000001f,.05f,2,4.719f};config(&c);
 for(angle=0;angle<16;angle++)for(hw=0;hw<8;hw++)for(level=0;level<5;level++){
  float theta=(float)(2*CR_PI*angle/16),dq[2]={amplitudes[level],-.03f},f[2]={26916,-1482};
  for(duration=0;duration<2;duration++){
   float dt=duration?c.candidate_duration_s:c.first_duration_s;
   memset(&out,0xa5,sizeof(out));status=PC_fast_predict_interval(&c,dq,85,85,(uint16_t)hw,theta,314.159265f,f,dt,&out,PC_FAST_FULL_SUBSTEPS);
   predictor_calls++;if(status<7)predictor_status[status]++;else check(0,"predictor status belongs to public enum");
   if(status==PC_OK)interval_invariants(&c,&out,dt,theta,314.159265f,hw,0);
  }
  memset(&in,0,sizeof(in));PC_dq_to_abc(dq,theta,in.iabc_A);grid(theta,81.649658f,0,in.eabc_V);
  in.up_V=in.low_V=85;in.id_ref_A=amplitudes[level];in.theta_rad=theta;in.omega_rad_s=314.159265f;
  in.fhat_A_s[0]=f[0];in.fhat_A_s[1]=f[1];in.applied_hw_state=(uint16_t)hw;in.zcdc_enable=in.terminal_enable=1;
  memset(&selected,0xa5,sizeof(selected));status=PC_run_fast(&c,&in,&selected);run_calls++;
  if(status<7)run_status[status]++;else check(0,"controller status belongs to public enum");
  if(status==PC_OK){
   check(selected.hw_state<=7 && selected.selected_id>=1 && selected.selected_id<=8,"2kHz successful selection is a physical state");
   for(k=0;k<8;k++)check(isfinite(selected.gi[k]) && isfinite(selected.gu[k]) && isfinite(selected.np2_V[k]) && isfinite(selected.idq2_A[k][0]) && isfinite(selected.idq2_A[k][1]),"2kHz public predictions/costs finite");
  }else check(!selected.hw_state && !selected.active && !selected.valid,"2kHz model guard returns safe public failure state");
 }
 check(predictor_status[PC_OK]>0 && run_status[PC_OK]>0,"nonempty successful500us predictor/control domain");
 {
  VO_ReconstructInput in;VO_ReconstructOutput out;unsigned before,after;
  memset(&in,0,sizeof(in));in.idq_start_A[0]=2;in.fhat_A_s[0]=25000;in.up_V=in.low_V=85;
  in.theta_start_rad=.4f;in.omega_rad_s=314.159265f;in.duration_before_sec=in.duration_after_sec=.00025f;
  for(before=0;before<8;before++)for(after=0;after<8;after++){
   in.gate_before_hw=(uint16_t)before;in.gate_after_hw=(uint16_t)after;
   reconstruction_calls++;
   if(VO_reconstruct(&c,&in,&out)){
    reconstruction_success++;check(out.valid && out.duration_sec==.0005f && isfinite(out.delta_u_dq_V_s[0]) && isfinite(out.delta_u_dq_V_s[1]),"ESO two executed250us segments give finite500us reconstruction");
   }else {reconstruction_failure++;check(!out.valid && out.faults==VO_FAULT_RECONSTRUCTION,"500us model reconstruction failure is explicit");}
  }
  in.duration_before_sec=in.duration_after_sec=.00075f;
  check(!VO_reconstruct(&c,&in,&out) && !out.valid,"reconstruction above original1ms bound remains rejected");
 }
}
int main(void)
{
 time_domain();pll_domain();eso_domain();predictor_domain();
 printf("{\"test\":\"control_rate_modules\",\"checks\":%u,\"failures\":%u,\"PLL_50Hz_phase_RMS_rad\":%.12g,\"PLL_max_phase_rad\":%.12g,\"PLL_locked_settled_samples\":%u,\"ESO_max_current_error_A\":%.12g,\"ESO_max_disturbance_error_A_s\":%.12g,\"rotating_integral_error_V_s\":%.12g,\"predictor_calls\":%u,\"predictor_status_counts\":[%u,%u,%u,%u,%u,%u,%u],\"run_calls\":%u,\"run_status_counts\":[%u,%u,%u,%u,%u,%u,%u],\"substep_KCL_max_A\":%.12g,\"substep_midpoint_invariant_max_V\":%.12g,\"substep_endpoint_angle_error_max_rad\":%.12g,\"maximum_projected_current_A\":%.12g,\"maximum_predicted_midpoint_abs_V\":%.12g,\"reconstruction_calls\":%u,\"reconstruction_successes\":%u,\"reconstruction_failures\":%u}\n",
  checks,failures,pll_rms,pll_max,pll_lock_samples,eso_max_i,eso_max_f,integral_error,predictor_calls,
  predictor_status[0],predictor_status[1],predictor_status[2],predictor_status[3],predictor_status[4],predictor_status[5],predictor_status[6],
  run_calls,run_status[0],run_status[1],run_status[2],run_status[3],run_status[4],run_status[5],run_status[6],
  kcl_max,np_invariant_max,endpoint_angle_max,max_prediction_current,max_prediction_np,reconstruction_calls,reconstruction_success,reconstruction_failure);
 return failures?1:0;
}
