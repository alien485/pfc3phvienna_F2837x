/* HOST only: contract and controlled fixed-input prediction ablation.
 * Extra model dependencies are hypotheses, not firmware revisions. */
#include "offline_current_limit.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
static unsigned checks;
static void require(int yes,const char *why)
{checks++;if(!yes){fprintf(stderr,"FAIL %s\n",why);exit(1);}}
static void fixture(PC_Config *c,PC_Input *in)
{
    PC_default_config(c);memset(in,0,sizeof(*in));
    c->root_method=PC_ROOT_PIECEWISE;c->first_duration_s=.000250f;
    c->candidate_duration_s=.000500f;c->diagnostic_all_angles=0U;
    in->iabc_A[0]=1.060546875f;in->iabc_A[1]=-.005859375f;in->iabc_A[2]=-1.05908203125f;
    in->eabc_V[0]=79.361328125f;in->eabc_V[1]=-23.331787109375f;in->eabc_V[2]=-56.0849609375f;
    in->up_V=66.24136352539062f;in->low_V=66.4166030883789f;
    in->id_ref_A=5.1366777420043945f;in->theta_rad=.2334575355052948f;
    in->omega_rad_s=314.2455749511719f;
    in->fhat_A_s[0]=26652.5234375f;in->fhat_A_s[1]=1060.657470703125f;
    in->terminal_enable=1U;
}
static void dc_identity(const PC_Config *c,const PC_Interval *full,
    float initial_dc,unsigned hw,float duration)
{
    float dc=initial_dc,h=duration/2.0f;unsigned k,j;
    for(k=0;k<2;k++){
        float off=0;
        for(j=0;j<3;j++)if(!(hw&(1U<<j)))
            off+=fabsf((full->substep[k].old_abc_A[j]+full->substep[k].next_abc_A[j])/2.0f);
        if(OD_MODEL&1)dc+=h/c->C_half_F*(off-2.0f*dc/50.0f);
        require(full->substep[k].root_iterations!=PC_FAST_SUBSTEP_UNAVAILABLE,"FULL substep available");
        require(fabsf(full->substep[k].root_residual_A)<.0002f,"KCL residual bounded");
    }
    require(fabsf(dc-OD_last_dc)<.0001f,"DC charge balance at unchanged two nodes");
}
int main(int argc,char **argv)
{
    PC_Config c,saved_c;PC_Input in,saved_in;PC_Output original,derived,again;
    PC_Interval a,b;OCL_Config limit;OCL_Diagnostics d;
    float dq[2],dc1,up1,low1,theta1;unsigned sample,j;
    fixture(&c,&in);saved_c=c;saved_in=in;
    if(argc==18){
        float *values[]={&in.iabc_A[0],&in.iabc_A[1],&in.iabc_A[2],&in.eabc_V[0],&in.eabc_V[1],&in.eabc_V[2],&in.up_V,&in.low_V,&in.id_ref_A,&in.iq_ref_A,&in.theta_rad,&in.omega_rad_s,&in.fhat_A_s[0],&in.fhat_A_s[1]};
        for(j=0;j<14;j++)*values[j]=strtof(argv[j+1],NULL);
        in.applied_hw_state=(uint16_t)atoi(argv[15]);in.zcdc_enable=(uint16_t)atoi(argv[16]);in.terminal_enable=(uint16_t)atoi(argv[17]);
        require(OD_run_fast(&c,&in,&derived)==PC_OK,"fixed-input model succeeds");
        dc1=OD_first_dc;OCL_default_config(&limit);OCL_run(&c,&in,&again,&limit,&d);
        printf("{\"model\":%u,\"raw_selected_id\":%u,\"filtered_id\":%u,\"guard_status\":%u,\"feasible_mask\":%u,\"first_peak_A\":%.9g,\"dc1_V\":%.9g,\"candidate_peak_A\":[",(unsigned)OD_MODEL,(unsigned)derived.selected_id,(unsigned)again.selected_id,(unsigned)d.status,(unsigned)d.feasible_mask,(double)d.first_peak_used_A,(double)dc1);
        for(j=0;j<8;j++)printf("%s%.9g",j?",":"",(double)d.peak_used_A[j]);
        printf("],\"candidate_dc_V\":[");for(j=0;j<8;j++)printf("%s%.9g",j?",":"",(double)OD_candidate_dc[j]);
        printf("]}\n");return 0;
    }
    require(argc==1,"unit CLI argument count");
    memset(&derived,0xa5,sizeof(derived));
    require(OD_run_fast(&c,&in,&derived)==PC_OK,"producer322 derived prediction succeeds");
    dc1=OD_first_dc;
    OCL_default_config(&limit);OCL_run(&c,&in,&again,&limit,&d);
    require(d.status==PC_OK || d.status==OCL_STOP_DELAY || d.status==OCL_STOP_NO_FEASIBLE,"guard returns classified status");
    printf("{\"model\":%u,\"producer322\":{\"selected_id_raw\":%u,\"filtered_id\":%u,\"guard_status\":%u,\"feasible_mask\":%u,\"dc1_V\":%.9g,\"candidate_peak_A\":[",(unsigned)OD_MODEL,(unsigned)derived.selected_id,(unsigned)again.selected_id,(unsigned)d.status,(unsigned)d.feasible_mask,(double)dc1);
    for(j=0;j<8;j++)printf("%s%.9g",j?",":"",(double)d.peak_used_A[j]);
    printf("]},");
    for(sample=0;sample<40;sample++){
        fixture(&c,&in);in.applied_hw_state=(uint16_t)(sample%8);
        in.zcdc_enable=(uint16_t)(sample%2);in.theta_rad+=.013f*(float)sample;
        in.iabc_A[0]+=.002f*(float)sample;in.iabc_A[2]-=.002f*(float)sample;
        saved_in=in;saved_c=c;
        memset(&original,0xa5,sizeof(original));memset(&derived,0xa5,sizeof(derived));
        require(PC_run_fast(&c,&in,&original)==PC_OK,"original valid input");
        require(OD_run_fast(&c,&in,&derived)==PC_OK,"derived valid input");
        require(!memcmp(&in,&saved_in,sizeof(in)) && !memcmp(&c,&saved_c,sizeof(c)),"input/config immutable");
        if(OD_MODEL==0)require(!memcmp(&original,&derived,sizeof(original)),"model0 byte-exact original output");
        memset(&again,0xa5,sizeof(again));
        require(OD_run_fast(&c,&in,&again)==PC_OK && !memcmp(&again,&derived,sizeof(again)),"candidate DC reset; deterministic repeat");
        dc1=OD_first_dc;
        require(OD_first_valid && OD_candidate_valid_mask==255U,"all predicted DC traces valid after success");
        PC_abc_to_dq(in.iabc_A,in.theta_rad,dq);
        memset(&a,0xa5,sizeof(a));memset(&b,0xa5,sizeof(b));
        require(OD_fast_predict_interval(&c,dq,in.up_V,in.low_V,in.applied_hw_state,in.theta_rad,in.omega_rad_s,in.fhat_A_s,c.first_duration_s,&b,PC_FAST_FULL_SUBSTEPS)==PC_OK,"first FULL succeeds");
        dc_identity(&c,&b,in.up_V+in.low_V,in.applied_hw_state,c.first_duration_s);
        require(fabsf(OD_last_dc-dc1)<.0001f,"FULL and CONTROL DC endpoints agree");
        if(OD_MODEL==0){
            require(PC_fast_predict_interval(&c,dq,in.up_V,in.low_V,in.applied_hw_state,in.theta_rad,in.omega_rad_s,in.fhat_A_s,c.first_duration_s,&a,PC_FAST_FULL_SUBSTEPS)==PC_OK,"original FULL succeeds");
            require(!memcmp(&a,&b,sizeof(a)),"model0 FULL bytes preserved");
        }
        up1=(dc1-derived.np1_V)/2.0f;low1=(dc1+derived.np1_V)/2.0f;
        theta1=in.theta_rad+in.omega_rad_s*c.first_duration_s;
        for(j=0;j<8;j++){
            require(OD_fast_predict_interval(&c,derived.idq1_A,up1,low1,PC_id_to_hw((uint16_t)(j+1)),theta1,in.omega_rad_s,in.fhat_A_s,c.candidate_duration_s,&b,PC_FAST_FULL_SUBSTEPS)==PC_OK,"candidate FULL succeeds");
            dc_identity(&c,&b,up1+low1,PC_id_to_hw((uint16_t)(j+1)),c.candidate_duration_s);
            require(fabsf(b.idq_A[0]-derived.idq2_A[j][0])<.0001f && fabsf(b.idq_A[1]-derived.idq2_A[j][1])<.0001f,"FULL/CONTROL same model and anchored F");
            require(fabsf(OD_last_dc-OD_candidate_dc[j])<.0001f,"candidate inherited DC trace agrees");
        }
    }
    fixture(&c,&in);c.R_ohm=0;in.omega_rad_s=0;
    require(OD_run_fast(&c,&in,&derived)==PC_OK,"zero R/omega degeneracy prediction");
    if(!(OD_MODEL&1)){
        memset(&original,0xa5,sizeof(original));memset(&derived,0xa5,sizeof(derived));
        require(PC_run_fast(&c,&in,&original)==PC_OK && OD_run_fast(&c,&in,&derived)==PC_OK,"degenerate original/derived succeeds");
        require(!memcmp(&original,&derived,sizeof(original)),"R=omega0 incremental F degenerates exactly");
    }
    PC_abc_to_dq(in.iabc_A,in.theta_rad,dq);
    require(OD_fast_predict_interval(&c,dq,in.up_V,in.low_V,7U,in.theta_rad,in.omega_rad_s,in.fhat_A_s,c.first_duration_s,&b,PC_FAST_FULL_SUBSTEPS)==PC_OK,"allON load-only prediction");
    dc1=in.up_V+in.low_V;
    if(OD_MODEL&1){float h=c.first_duration_s/2;dc1+=h/c.C_half_F*(-2.0f*dc1/50);dc1+=h/c.C_half_F*(-2.0f*dc1/50);}
    require(fabsf(OD_last_dc-dc1)<.0001f,"allON pure load-discharge identity");
    in.up_V=-1;
    require(OD_run_fast(&c,&in,&derived)!=PC_OK && !OD_first_valid && !OD_candidate_valid_mask,"failed input clears all extra trace validity");
    printf("\"checks\":%u,\"status\":\"PASS\"}\n",checks);
    return 0;
}
