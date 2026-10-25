#include "../vienna_pcmfpc_zcdc.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

static unsigned checks=0U;
static uint32_t seed=0x25f28379UL;
static PC_Output a,b;
static void require(int ok,const char *what) {checks++;if(!ok){fprintf(stderr,"FAIL: %s\n",what);exit(1);}}
static double rnd(void){seed^=seed<<13;seed^=seed>>17;seed^=seed<<5;return (double)seed/4294967295.0;}
static double err(PC_Real x,PC_Real y){return fabs((double)x-(double)y);}
static void base(PC_Config *cfg,PC_Input *in)
{
    PC_Real v[2];
    PC_default_config(cfg);cfg->root_method=PC_ROOT_PIECEWISE;memset(in,0,sizeof(*in));
    in->up_V=(PC_Real)85;in->low_V=(PC_Real)85;
    in->theta_rad=(PC_Real)0.2;in->omega_rad_s=(PC_Real)(2*3.141592653589793*50);
    in->id_ref_A=(PC_Real)2.3;in->iq_ref_A=(PC_Real)0;
    v[0]=(PC_Real)2.3;v[1]=(PC_Real)0;PC_dq_to_abc(v,in->theta_rad,in->iabc_A);
    v[0]=(PC_Real)81.65;v[1]=(PC_Real)0;PC_dq_to_abc(v,in->theta_rad,in->eabc_V);
    in->fhat_A_s[0]=(PC_Real)(81.65/.003);in->fhat_A_s[1]=-(in->omega_rad_s*in->id_ref_A);
    in->zcdc_enable=1U;in->terminal_enable=1U;
}

int main(void)
{
    PC_Config cfg,ref;
    PC_Input in;
    PC_Interval ia;
    PC_Real dq[2],f[2];
    uint16_t id,hw,j,k;
    unsigned sample,selection_diff=0U,off_diff=0U,active_diff=0U,blocked_diff=0U;
    double max_dq=0,max_np=0,max_gi=0,max_gu=0,max_integral_identity=0,max_kcl=0;
    const uint16_t mapping[8]={0U,4U,2U,6U,1U,5U,3U,7U};
    FILE *differences=fopen(sizeof(PC_Real)==4?"core_root_diff_float.csv":"core_root_diff_double.csv","w");
    require(differences!=NULL,"open comparison evidence CSV");
    fprintf(differences,"sample,theta,omega,ia,ib,ic,ea,eb,ec,up,low,idref,iqref,fd,fq,applied,first_s,candidate_s,L,C,selected_piecewise,selected_bisection,pcoff_piecewise,pcoff_bisection,active,gi_piecewise_selected,gi_bisection_selected,gz_piecewise_selected,gz_bisection_selected\n");
    for(id=1U;id<=8U;id++){hw=PC_id_to_hw(id);require(hw==mapping[id-1U],"all eight MATLAB -> HAL mappings");require(PC_hw_to_id(hw)==id,"mapping inverse");}
    base(&cfg,&in);dq[0]=(PC_Real)1.2;dq[1]=(PC_Real)-0.4;f[0]=(PC_Real)100;f[1]=(PC_Real)-50;
    require(PC_predict_interval(&cfg,dq,(PC_Real)85,(PC_Real)85,7U,(PC_Real)0.2,in.omega_rad_s,f,(PC_Real)20e-6,&ia)==PC_OK,"all ON predict");
    require(err(ia.idq_A[0],dq[0]+(PC_Real)20e-6*f[0])<2e-6,"all ON: exact dq drift d");
    require(err(ia.idq_A[1],dq[1]+(PC_Real)20e-6*f[1])<2e-6,"all ON: exact dq drift q");
    require(fabs((double)ia.np_V)<2e-5,"all ON: zero neutral current");
    require(fabs((double)ia.u_integral_dq_V_s[0])<1e-10 && fabs((double)ia.u_integral_dq_V_s[1])<1e-10,"all ON: pole voltage integral zero");
    dq[0]=dq[1]=f[0]=f[1]=(PC_Real)0;
    require(PC_predict_interval(&cfg,dq,(PC_Real)85,(PC_Real)85,0U,(PC_Real)0,in.omega_rad_s,f,(PC_Real)20e-6,&ia)==PC_OK,"all OFF zero plateau predict");
    require(ia.blocked==1U && ia.idq_A[0]==0 && ia.idq_A[1]==0,"nonunique plateau mu gives physical zero current");
    require(ia.substep[0].root_iterations<=7U && ia.substep[1].root_iterations<=7U,"piecewise bounded segments");
    require(PC_run(&cfg,&in,&a)==PC_OK,"nominal PC run");
    in.terminal_enable=0U;
    require(PC_run(&cfg,&in,&b)==PC_OK,"terminal OFF run");
    require(b.selected_id==b.pc_off_id && !b.active,"OFF selects PC-OFF only");
    require(memcmp(a.idq2_A,b.idq2_A,sizeof(a.idq2_A))==0 && memcmp(a.np2_V,b.np2_V,sizeof(a.np2_V))==0,"terminal OFF preserves blocked predictor exactly");
    in.terminal_enable=1U;in.id_ref_A=(PC_Real)0.099;
    require(PC_run(&cfg,&in,&a)==PC_OK && !a.active,"reference magnitude below 0.1 A disables terminal");
    cfg.L_H=(PC_Real)0;
    require(PC_run(&cfg,&in,&a)==PC_ERR_CONFIG && a.hw_state==0U,"invalid L safe OFF");
    base(&cfg,&in);in.applied_hw_state=8U;
    require(PC_run(&cfg,&in,&a)==PC_ERR_INPUT && a.hw_state==0U,"invalid applied gate safe OFF");
    base(&cfg,&in);in.up_V=(PC_Real)0;
    require(PC_run(&cfg,&in,&a)==PC_ERR_INPUT && a.hw_state==0U,"nonpositive half bus safe OFF");
    base(&cfg,&in);in.id_ref_A=(PC_Real)NAN;
    require(PC_run(&cfg,&in,&a)==PC_ERR_INPUT && a.hw_state==0U,"NaN reference safe OFF");
    base(&cfg,&in);in.omega_rad_s=(PC_Real)INFINITY;
    require(PC_run(&cfg,&in,&a)==PC_ERR_INPUT && a.hw_state==0U,"infinite frequency safe OFF");
    for(hw=0U;hw<8U;hw++) {
        base(&cfg,&in);memset(in.iabc_A,0,sizeof(in.iabc_A));memset(in.fhat_A_s,0,sizeof(in.fhat_A_s));
        in.applied_hw_state=hw;in.id_ref_A=(PC_Real)0;in.iq_ref_A=(PC_Real)0;
        require(PC_run(&cfg,&in,&a)==PC_OK,"all-zero exact prediction ties");
        require(a.pc_off_id==PC_hw_to_id(hw) && a.selected_id==a.pc_off_id,"exact equal gi/gu sorts by switching count then MATLAB ID");
        require(a.intersection_count==2U && a.midpoint_prefix==2U,"three-way intersection reduces prefix to two");
    }
    for(sample=0U;sample<12000U;sample++) {
        PC_Real cur[2],vol[2];
        base(&cfg,&in);
        cfg.first_duration_s=(PC_Real)(sample%2?10e-6:50e-6);
        cfg.candidate_duration_s=(PC_Real)(sample%2?20e-6:50e-6);
        cfg.L_H=(PC_Real)(sample%2?.003:.010);cfg.C_half_F=(PC_Real)(sample%2?.000440:.002350);
        in.theta_rad=(PC_Real)((rnd()*2-1)*3.141592653589793);
        in.omega_rad_s=(PC_Real)(2*3.141592653589793*(40+30*rnd()));
        cur[0]=(PC_Real)(rnd()*12-6);cur[1]=(PC_Real)(rnd()*4-2);PC_dq_to_abc(cur,in.theta_rad,in.iabc_A);
        vol[0]=(PC_Real)(60+50*rnd());vol[1]=(PC_Real)(rnd()*10-5);PC_dq_to_abc(vol,in.theta_rad,in.eabc_V);
        in.up_V=(PC_Real)(30+110*rnd());in.low_V=(PC_Real)(30+110*rnd());
        in.id_ref_A=(PC_Real)(rnd()*7);in.iq_ref_A=(PC_Real)(rnd()*2-1);
        in.fhat_A_s[0]=vol[0]/cfg.L_H+(PC_Real)(rnd()*1000-500);
        in.fhat_A_s[1]=vol[1]/cfg.L_H-in.omega_rad_s*cur[0]+(PC_Real)(rnd()*200-100);
        in.applied_hw_state=(uint16_t)(sample%8U);in.zcdc_enable=(uint16_t)(sample%3U!=0U);
        ref=cfg;ref.root_method=PC_ROOT_BISECTION32;
        require(PC_run(&cfg,&in,&a)==PC_OK,"random piecewise valid run");
        require(PC_run(&ref,&in,&b)==PC_OK,"random bisection valid run");
        require(a.intersection_count>=1U && a.intersection_count<=2U,"intersection bounded");
        require(a.current_count>=1U && a.current_count<=3U,"current set bounded");
        require((a.intersection_mask & (uint16_t)(1U<<(a.selected_id-1U)))!=0U,"selected in joint set");
        require(sqrt((double)a.gi[a.selected_id-1U])<=(double)a.budget_limit_A+2e-6,"selected norm within current budget");
        if(a.selected_id!=b.selected_id)selection_diff++;
        if(a.pc_off_id!=b.pc_off_id)off_diff++;
        if(a.active!=b.active)active_diff++;
        if(a.first_interval.blocked!=b.first_interval.blocked)blocked_diff++;
        if(a.selected_id!=b.selected_id || a.pc_off_id!=b.pc_off_id) {
            fprintf(differences,"%u,%.17g,%.17g,%.17g,%.17g,%.17g,%.17g,%.17g,%.17g,%.17g,%.17g,%.17g,%.17g,%.17g,%.17g,%u,%.17g,%.17g,%.17g,%.17g,%u,%u,%u,%u,%u,%.17g,%.17g,%.17g,%.17g\n",
                sample,(double)in.theta_rad,(double)in.omega_rad_s,(double)in.iabc_A[0],(double)in.iabc_A[1],(double)in.iabc_A[2],
                (double)in.eabc_V[0],(double)in.eabc_V[1],(double)in.eabc_V[2],(double)in.up_V,(double)in.low_V,(double)in.id_ref_A,(double)in.iq_ref_A,
                (double)in.fhat_A_s[0],(double)in.fhat_A_s[1],in.applied_hw_state,(double)cfg.first_duration_s,(double)cfg.candidate_duration_s,
                (double)cfg.L_H,(double)cfg.C_half_F,a.selected_id,b.selected_id,a.pc_off_id,b.pc_off_id,a.active,
                (double)a.gi[a.selected_id-1U],(double)b.gi[b.selected_id-1U],(double)a.gz[a.selected_id-1U],(double)b.gz[b.selected_id-1U]);
        }
        for(j=0U;j<8U;j++) {
            double e;
            e=err(a.gi[j],b.gi[j]);if(e>max_gi)max_gi=e;
            e=err(a.gu[j],b.gu[j]);if(e>max_gu)max_gu=e;
            e=err(a.np2_V[j],b.np2_V[j]);if(e>max_np)max_np=e;
            for(k=0U;k<2U;k++){e=err(a.idq2_A[j][k],b.idq2_A[j][k]);if(e>max_dq)max_dq=e;}
        }
        PC_abc_to_dq(in.iabc_A,in.theta_rad,dq);
        ia=a.first_interval;
        for(k=0U;k<2U;k++) {
            double identity=(double)dq[k]+(double)cfg.first_duration_s*(double)in.fhat_A_s[k]-(double)ia.u_integral_dq_V_s[k]/(double)cfg.L_H;
            double e=fabs(identity-(double)ia.idq_A[k]);if(e>max_integral_identity)max_integral_identity=e;
            e=fabs((double)ia.substep[k].root_residual_A);if(e>max_kcl)max_kcl=e;
        }
        require(max_dq<2e-4 && max_np<2e-4,"root optimization numerical bound");
    }
    printf("checks=%u samples=12000 scalar_bytes=%u\n",checks,(unsigned)sizeof(PC_Real));
    printf("piecewise_vs_bisection max_dq_A=%.12g max_np_V=%.12g max_gi_A2=%.12g max_gu_V2=%.12g\n",max_dq,max_np,max_gi,max_gu);
    printf("selection_difference=%u pcoff_difference=%u active_difference=%u first_blocked_difference=%u\n",selection_diff,off_diff,active_diff,blocked_diff);
    printf("max_model_integral_identity_A=%.12g max_first_KCL_A=%.12g sizeof_PC_Output_host=%u\n",max_integral_identity,max_kcl,(unsigned)sizeof(PC_Output));
    fclose(differences);
    return 0;
}
