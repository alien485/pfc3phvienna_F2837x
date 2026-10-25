/* Independent failure-boundary audit, deliberately outside electrical range.
   This does not change the controller or add numerical epsilons. */
#include "../vienna_pcmfpc_fast.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <float.h>
#include <string.h>

static unsigned checks,unsafe_success;
static void req(int ok,const char *label){checks++;if(!ok){fprintf(stderr,"FAIL %s\n",label);exit(1);}}
static PC_Config cfg;
static PC_Input input;
static PC_Output out,reference;
static int finite_r(PC_Real x){return isfinite((double)x)!=0;}
static void init(void)
{
    PC_default_config(&cfg);cfg.root_method=PC_ROOT_PIECEWISE;
    memset(&input,0,sizeof(input));input.up_V=85;input.low_V=85;
    input.iabc_A[0]=2;input.iabc_A[1]=-1;input.iabc_A[2]=-1;
    input.eabc_V[0]=81;input.eabc_V[1]=-40.5f;input.eabc_V[2]=-40.5f;
    input.id_ref_A=2;input.fhat_A_s[0]=27000;input.omega_rad_s=314.159265f;
    input.applied_hw_state=7;input.zcdc_enable=1;input.terminal_enable=1;
}
static void require_fail_safe(uint16_t status,const char *label)
{
    req(status!=PC_OK,label);req(out.status==status,"status matches return");
    req(out.hw_state==0U && out.selected_id==1U && out.pc_off_id==1U,"failure safe gate and IDs");
    req(!PC_fast_output_substeps_available && !PC_fast_output_summaries_available,"failed output availability invalid");
}
static void observe_extreme(const char *label)
{
    uint16_t status=PC_run_fast(&cfg,&input,&out),ref=PC_run(&cfg,&input,&reference);
    int finite=1;unsigned j;
    if(status==PC_OK){
        finite=finite_r(out.voltage_margin_V) && finite_r(out.budget_limit_A);
        for(j=0;j<8;j++)finite &= finite_r(out.gi[j]) && finite_r(out.gu[j]) && finite_r(out.gz[j]);
        if(!finite)unsafe_success++;
    }
    printf("edge=%s fast_status=%u reference_status=%u finite_public_success=%d margin=%.9g gate=%u\n",
        label,status,ref,status==PC_OK?finite:-1,(double)out.voltage_margin_V,out.hw_state);
}
int main(void)
{
    PC_Real bad[3]={(PC_Real)NAN,(PC_Real)INFINITY,(PC_Real)-INFINITY};unsigned j;
    PC_Interval interval;
    init();req(PC_run_fast(&cfg,&input,&out)==PC_OK,"nominal fast success");
    req(PC_fast_output_summaries_available && !PC_fast_output_substeps_available,"summary contract");
    for(j=0;j<2;j++)req(out.first_interval.substep[j].root_iterations==PC_FAST_SUBSTEP_UNAVAILABLE,"summary unavailability sentinel");
    for(j=0;j<3;j++){
        init();input.iabc_A[0]=bad[j];require_fail_safe(PC_run_fast(&cfg,&input,&out),"bad current rejected");
        init();input.theta_rad=bad[j];require_fail_safe(PC_run_fast(&cfg,&input,&out),"bad angle rejected");
        init();input.id_ref_A=bad[j];require_fail_safe(PC_run_fast(&cfg,&input,&out),"bad reference rejected");
        init();cfg.L_H=bad[j];require_fail_safe(PC_run_fast(&cfg,&input,&out),"bad L rejected");
    }
    init();input.applied_hw_state=8;require_fail_safe(PC_run_fast(&cfg,&input,&out),"invalid gate rejected");
    init();cfg.root_method=PC_ROOT_BISECTION32;require_fail_safe(PC_run_fast(&cfg,&input,&out),"wrong root rejected");
    init();require_fail_safe(PC_run_fast(NULL,&input,&out),"null config rejected");
    init();require_fail_safe(PC_run_fast(&cfg,NULL,&out),"null input rejected");
    init();req(PC_run_fast(&cfg,&input,NULL)==PC_ERR_INPUT,"null output rejected");
    init();req(PC_fast_predict_interval(&cfg,input.iabc_A,85,85,7,0,314,input.fhat_A_s,20e-6f,&interval,2)==PC_ERR_CONFIG,"invalid detail rejected");
    init();req(PC_fast_predict_interval(&cfg,input.iabc_A,85,85,8,0,314,input.fhat_A_s,20e-6f,&interval,0)==PC_ERR_INPUT,"interval invalid gate rejected");
    init();req(PC_fast_predict_interval(&cfg,input.iabc_A,85,85,7,0,314,input.fhat_A_s,0,&interval,0)==PC_ERR_INPUT,"interval zero duration rejected");
    init();cfg.R_ohm=(PC_Real)FLT_MAX;observe_extreme("R_float_max");
    init();cfg.L_H=(PC_Real)FLT_MAX;observe_extreme("L_float_max");
    init();input.omega_rad_s=(PC_Real)FLT_MAX;observe_extreme("omega_float_max");
    init();cfg.delta_i_A=(PC_Real)FLT_MAX;observe_extreme("delta_i_float_max");
    init();cfg.first_duration_s=(PC_Real)FLT_MAX;observe_extreme("duration_float_max");
    init();cfg.C_half_F=(PC_Real)FLT_MIN;observe_extreme("C_float_min");
    req(unsafe_success==0U,"finite extreme parameters never claim successful nonfinite public result");
    printf("fast_safety_checks=%u PASS; nonfinite_public_success_edges=%u\n",checks,unsafe_success);
    return 0;
}
