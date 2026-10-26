/* Independent same-input replay harness: fast path versus the readable
 * float32 piecewise-root reference, plus a separately reported bisection32
 * comparison. No hardware actions or executable target I/O. */
#include "../vienna_pcmfpc_zcdc.h"
#include "../vienna_pcmfpc_fast.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <float.h>

static PC_Output reference,optimized,bisection;
typedef struct {
    unsigned cases,valid,invalid,status_diff,selected_diff,pcoff_diff,active_diff;
    unsigned rank_i_diff,rank_u_diff,mask_diff,diagnostic_diff,blocked_diff,summary_diff;
    unsigned bisection_status_diff,bisection_selected_diff,bisection_pcoff_diff,bisection_active_diff;
    unsigned fast_unsafe_error,terminal_events,reference_terminal_events;
    unsigned availability_flag_errors,unavailable_marker_errors;
    unsigned full_interval_calls,full_status_diff,full_numeric_diff,full_discrete_diff;
    unsigned summary_interval_calls,summary_status_diff,summary_numeric_diff,summary_discrete_diff;
    unsigned control_interval_calls,control_status_diff,control_numeric_diff,control_discrete_diff;
    unsigned integral_unavailable_errors;
    double max_full_numeric;
    double max_gi,max_gu,max_gz,max_dq,max_np,max_summary_integral,max_diagnostic;
    double max_budget,max_margin;
} Stats;
static Stats stats;
static FILE *differences,*outputs;
static unsigned serial;
static double absolute(double x){return x<0.0?-x:x;}
static void maximum(double *dest,double value){value=absolute(value);if(value>*dest)*dest=value;}
static unsigned different_order(const uint16_t a[8],const uint16_t b[8])
{unsigned j;for(j=0;j<8;j++)if(a[j]!=b[j])return 1;return 0;}
static void compare_full_interval(const PC_Config *c,const PC_Input *in,const PC_Real dq[2],
    PC_Real up,PC_Real low,uint16_t hw,PC_Real theta,PC_Real duration)
{
    PC_Interval a,b,summary,control;unsigned sa,sb,ss,sc,j,k,diff=0,discrete=0;double error=0;
    stats.full_interval_calls++;
    sa=PC_predict_interval(c,dq,up,low,hw,theta,in->omega_rad_s,in->fhat_A_s,duration,&a);
    sb=PC_fast_predict_interval(c,dq,up,low,hw,theta,in->omega_rad_s,in->fhat_A_s,duration,&b,PC_FAST_FULL_SUBSTEPS);
    stats.full_status_diff+=sa!=sb;if(sa!=PC_OK || sb!=PC_OK)return;
#define CHECK_REAL(x,y) do { if((x)!=(y))diff=1;maximum(&error,(double)(x)-(double)(y)); } while(0)
    CHECK_REAL(a.np_V,b.np_V);discrete|=a.blocked!=b.blocked;
    for(k=0;k<2;k++){
        CHECK_REAL(a.idq_A[k],b.idq_A[k]);CHECK_REAL(a.u_integral_dq_V_s[k],b.u_integral_dq_V_s[k]);
        for(j=0;j<3;j++){
            CHECK_REAL(a.substep[k].old_abc_A[j],b.substep[k].old_abc_A[j]);
            CHECK_REAL(a.substep[k].free_abc_A[j],b.substep[k].free_abc_A[j]);
            CHECK_REAL(a.substep[k].next_abc_A[j],b.substep[k].next_abc_A[j]);
            CHECK_REAL(a.substep[k].pole_abc_V[j],b.substep[k].pole_abc_V[j]);
        }
        for(j=0;j<2;j++)CHECK_REAL(a.substep[k].idq_A[j],b.substep[k].idq_A[j]);
        CHECK_REAL(a.substep[k].np_V,b.substep[k].np_V);CHECK_REAL(a.substep[k].mu_V,b.substep[k].mu_V);
        CHECK_REAL(a.substep[k].theta_end_rad,b.substep[k].theta_end_rad);
        CHECK_REAL(a.substep[k].root_residual_A,b.substep[k].root_residual_A);
        CHECK_REAL(a.substep[k].root_bracket_width_V,b.substep[k].root_bracket_width_V);
        discrete|=a.substep[k].blocked!=b.substep[k].blocked || a.substep[k].root_iterations!=b.substep[k].root_iterations;
    }
#undef CHECK_REAL
    stats.full_numeric_diff+=diff;stats.full_discrete_diff+=discrete;maximum(&stats.max_full_numeric,error);
    /* The public interval API retains a real pole integral in SUMMARY/FULL.
       CONTROL_ONLY omits it explicitly; zero is an invalid placeholder. */
    stats.summary_interval_calls++;stats.control_interval_calls++;
    memset(&summary,0xA5,sizeof(summary));memset(&control,0xA5,sizeof(control));
    ss=PC_fast_predict_interval(c,dq,up,low,hw,theta,in->omega_rad_s,in->fhat_A_s,duration,&summary,PC_FAST_SUMMARY_ONLY);
    sc=PC_fast_predict_interval(c,dq,up,low,hw,theta,in->omega_rad_s,in->fhat_A_s,duration,&control,PC_FAST_CONTROL_ONLY);
    stats.summary_status_diff+=ss!=sa;stats.control_status_diff+=sc!=sa;
    if(ss==PC_OK){
        unsigned numeric=a.np_V!=summary.np_V;
        for(k=0;k<2;k++){
            numeric|=a.idq_A[k]!=summary.idq_A[k] || a.u_integral_dq_V_s[k]!=summary.u_integral_dq_V_s[k];
            maximum(&stats.max_summary_integral,(double)a.u_integral_dq_V_s[k]-summary.u_integral_dq_V_s[k]);
            if(summary.substep[k].root_iterations!=PC_FAST_SUBSTEP_UNAVAILABLE)stats.unavailable_marker_errors++;
        }
        stats.summary_numeric_diff+=numeric;stats.summary_discrete_diff+=a.blocked!=summary.blocked;
    }
    if(sc==PC_OK){
        unsigned numeric=a.np_V!=control.np_V;
        for(k=0;k<2;k++){
            numeric|=a.idq_A[k]!=control.idq_A[k];
            if(control.u_integral_dq_V_s[k]!=(PC_Real)0)stats.integral_unavailable_errors++;
            if(control.substep[k].root_iterations!=PC_FAST_SUBSTEP_UNAVAILABLE)stats.unavailable_marker_errors++;
        }
        stats.control_numeric_diff+=numeric;stats.control_discrete_diff+=a.blocked!=control.blocked;
    }
}
static void map_input(const double x[24],PC_Config *c,PC_Input *in)
{
    unsigned j;PC_default_config(c);memset(in,0,sizeof(*in));
    for(j=0;j<3;j++){in->iabc_A[j]=(float)x[j];in->eabc_V[j]=(float)x[j+3];}
    in->up_V=(float)x[6];in->low_V=(float)x[7];in->id_ref_A=(float)x[8];in->iq_ref_A=(float)x[9];
    in->theta_rad=(float)x[10];in->omega_rad_s=(float)x[11];
    in->fhat_A_s[0]=(float)x[12];in->fhat_A_s[1]=(float)x[13];
    in->applied_hw_state=(uint16_t)x[14];in->zcdc_enable=(uint16_t)x[15];in->terminal_enable=(uint16_t)x[16];
    c->first_duration_s=(float)x[17];c->candidate_duration_s=(float)x[18];
    c->L_H=(float)x[19];c->R_ohm=(float)x[20];c->C_half_F=(float)x[21];
    c->delta_i_A=(float)x[22];c->zero_window_rad=(float)x[23];
    c->root_method=PC_ROOT_PIECEWISE;c->diagnostic_all_angles=1U;
}
static void replay(PC_Config *c,const PC_Input *in,const char *label,unsigned input_row)
{
    unsigned j,k,sa,sb,sc,changed=0,rankI,rankU,masks,diag=0,blocked=0,summary=0;
    PC_Config bis=*c;
    double gi=0,gu=0,gz=0,dq=0,np=0,integ=0,diagnostic=0;
    double delta_gi=0,delta_gz=0,budget_slack=0,minGiGap=1e300,minGuGap=1e300,minGzGap=1e300;
    serial++;stats.cases++;
    memset(&optimized,0xA5,sizeof(optimized));
    sa=PC_run(c,in,&reference);sb=PC_run_fast(c,in,&optimized);
    if(PC_fast_output_substeps_available!=0U || PC_fast_output_summaries_available!=(sb==PC_OK) ||
       PC_fast_output_integrals_available!=0U)stats.availability_flag_errors++;
    if(sb==PC_OK)for(j=0;j<9;j++){
        const PC_Interval *b=j?&optimized.candidate_interval[j-1]:&optimized.first_interval;
        if(b->substep[0].root_iterations!=PC_FAST_SUBSTEP_UNAVAILABLE || b->substep[1].root_iterations!=PC_FAST_SUBSTEP_UNAVAILABLE)stats.unavailable_marker_errors++;
    }
    bis.root_method=PC_ROOT_BISECTION32;sc=PC_run(&bis,in,&bisection);
    if(sa!=sb){stats.status_diff++;changed=1;}
    if(sa!=sc)stats.bisection_status_diff++;
    if(sa!=PC_OK){
        stats.invalid++;
        if(sb!=PC_OK && (optimized.hw_state!=0U || optimized.selected_id!=1U || optimized.pc_off_id!=1U || optimized.valid!=0U || optimized.active!=0U || optimized.status!=sb))stats.fast_unsafe_error++;
    }else{
        stats.valid++;
        if(reference.selected_id!=optimized.selected_id){stats.selected_diff++;changed=1;}
        if(reference.pc_off_id!=optimized.pc_off_id){stats.pcoff_diff++;changed=1;}
        if(reference.active!=optimized.active){stats.active_diff++;changed=1;}
        rankI=different_order(reference.order_i,optimized.order_i);rankU=different_order(reference.order_u,optimized.order_u);
        stats.rank_i_diff+=rankI;stats.rank_u_diff+=rankU;changed|=rankI|rankU;
        masks=reference.intersection_mask!=optimized.intersection_mask || reference.current_mask!=optimized.current_mask ||
            reference.current_count!=optimized.current_count || reference.intersection_count!=optimized.intersection_count ||
            reference.midpoint_prefix!=optimized.midpoint_prefix;
        stats.mask_diff+=masks;changed|=masks;
        if(reference.valid!=optimized.valid || reference.requested!=optimized.requested ||
           reference.hw_state!=optimized.hw_state || optimized.status!=sb)diag=1;
        for(j=0;j<8;j++){
            maximum(&gi,(double)reference.gi[j]-optimized.gi[j]);maximum(&gu,(double)reference.gu[j]-optimized.gu[j]);
            maximum(&gz,(double)reference.gz[j]-optimized.gz[j]);maximum(&np,(double)reference.np2_V[j]-optimized.np2_V[j]);
            if(reference.switch_count[j]!=optimized.switch_count[j])diag=1;
            if(reference.blocked_candidate[j]!=optimized.blocked_candidate[j])blocked=1;
            for(k=0;k<2;k++)maximum(&dq,(double)reference.idq2_A[j][k]-optimized.idq2_A[j][k]);
            for(k=j+1;k<8;k++){
                double gap=absolute((double)reference.gi[j]-reference.gi[k]);if(gap<minGiGap)minGiGap=gap;
                gap=absolute((double)reference.gu[j]-reference.gu[k]);if(gap<minGuGap)minGuGap=gap;
                if(((reference.intersection_mask>>j)&1U) && ((reference.intersection_mask>>k)&1U)){
                    gap=absolute((double)reference.gz[j]-reference.gz[k]);if(gap<minGzGap)minGzGap=gap;
                }
            }
        }
        for(j=0;j<10;j++)maximum(&diagnostic,(double)reference.zcdc_diag[j]-optimized.zcdc_diag[j]);
        for(j=0;j<9;j++){
            const PC_Interval *a=j?&reference.candidate_interval[j-1]:&reference.first_interval;
            const PC_Interval *b=j?&optimized.candidate_interval[j-1]:&optimized.first_interval;
            maximum(&np,(double)a->np_V-b->np_V);
            if(a->blocked!=b->blocked)blocked=1;
            for(k=0;k<2;k++){
                maximum(&dq,(double)a->idq_A[k]-b->idq_A[k]);
                if(b->u_integral_dq_V_s[k]!=(PC_Real)0)stats.integral_unavailable_errors++;
            }
        }
        maximum(&dq,(double)reference.idq1_A[0]-optimized.idq1_A[0]);
        maximum(&dq,(double)reference.idq1_A[1]-optimized.idq1_A[1]);
        maximum(&np,(double)reference.np1_V-optimized.np1_V);
        if(reference.first_interval.blocked!=optimized.first_interval.blocked)blocked=1;
        /* Numeric diagnostics are reported separately; never invent a shared
         * A^2/V^2/rad^2 epsilon to hide a changed ordering or terminal gate. */
        stats.diagnostic_diff+=diag;stats.blocked_diff+=blocked;changed|=diag|blocked;
        if(integ!=0.0)summary=1;
        stats.summary_diff+=summary;
        maximum(&stats.max_gi,gi);maximum(&stats.max_gu,gu);maximum(&stats.max_gz,gz);
        maximum(&stats.max_dq,dq);maximum(&stats.max_np,np);maximum(&stats.max_summary_integral,integ);
        maximum(&stats.max_diagnostic,diagnostic);
        maximum(&stats.max_budget,(double)reference.budget_limit_A-optimized.budget_limit_A);
        maximum(&stats.max_margin,(double)reference.voltage_margin_V-optimized.voltage_margin_V);
        stats.terminal_events+=optimized.selected_id!=optimized.pc_off_id;
        stats.reference_terminal_events+=reference.selected_id!=reference.pc_off_id;
        if(sc==PC_OK){
            stats.bisection_selected_diff+=reference.selected_id!=bisection.selected_id;
            stats.bisection_pcoff_diff+=reference.pc_off_id!=bisection.pc_off_id;
            stats.bisection_active_diff+=reference.active!=bisection.active;
        }
        if(optimized.selected_id>=1U && optimized.selected_id<=8U){
            j=optimized.selected_id-1U;k=reference.selected_id-1U;
            delta_gi=(double)reference.gi[j]-reference.gi[k];delta_gz=(double)reference.gz[j]-reference.gz[k];
            budget_slack=(double)reference.budget_limit_A-sqrt((double)reference.gi[j]);
        }
        {
            PC_Real dq0[2];PC_abc_to_dq(in->iabc_A,in->theta_rad,dq0);
            compare_full_interval(c,in,dq0,in->up_V,in->low_V,in->applied_hw_state,in->theta_rad,c->first_duration_s);
            if(serial%17U==0U){
                PC_Real total=in->up_V+in->low_V;
                PC_Real up=(total-reference.np1_V)*0.5f,low=(total+reference.np1_V)*0.5f;
                PC_Real theta=in->theta_rad+in->omega_rad_s*c->first_duration_s;
                for(j=0;j<8;j++)compare_full_interval(c,in,reference.idq1_A,up,low,PC_id_to_hw((uint16_t)(j+1)),theta,c->candidate_duration_s);
            }
        }
    }
    if(changed)fprintf(differences,"%u,%s,%u,%u,%u,%u,%u,%u,%u,%u,%u,%u,%.12g,%.12g,%.12g,%.12g,%.12g,%.12g,%.12g,%.12g,%.12g,%.12g,%.12g\n",
        serial,label,input_row,sa,sb,reference.selected_id,optimized.selected_id,reference.pc_off_id,optimized.pc_off_id,
        reference.active,optimized.active,reference.intersection_mask,gi,gu,gz,dq,np,delta_gi,delta_gz,budget_slack,minGiGap,minGuGap,minGzGap);
    fprintf(outputs,"%u,%s,%u,%u,%u,%u,%u,%u,%u,%u,%u,%u,%u,%.12g,%.12g,%.12g,%.12g,%.12g,%u,%u,%u,%u\n",
        serial,label,input_row,sa,sb,reference.selected_id,optimized.selected_id,reference.pc_off_id,optimized.pc_off_id,
        reference.active,optimized.active,reference.intersection_mask,optimized.intersection_mask,gi,gu,gz,dq,np,
        sc,bisection.selected_id,bisection.pc_off_id,bisection.active);
}
static unsigned parse_row(char *line,double x[24])
{
    char *p=line,*next;unsigned k;
    for(k=0;k<24;k++){
        x[k]=strtod(p,&next);if(next==p)return 0;
        p=next;if(k<23){if(*p!=',')return 0;p++;}
    }
    return 1;
}
int main(int argc,char **argv)
{
    FILE *input,*labels,*summaryFile;char line[4096],label[128],name[1024];
    double values[24];PC_Config c,threshold;PC_Input in;unsigned row=0,nanTests=0,guardRef,guardFast,guardFailure;
    if(argc!=4){fprintf(stderr,"usage: ti_fast_replay inputs.csv labels.csv output_prefix\n");return 2;}
    input=fopen(argv[1],"r");labels=fopen(argv[2],"r");if(!input || !labels)return 3;
    snprintf(name,sizeof(name),"%s_differences.csv",argv[3]);differences=fopen(name,"w");
    snprintf(name,sizeof(name),"%s_outputs.csv",argv[3]);outputs=fopen(name,"w");
    if(!differences || !outputs)return 3;
    fprintf(differences,"serial,label,input_row,reference_status,fast_status,reference_selected,fast_selected,reference_pcoff,fast_pcoff,reference_active,fast_active,reference_mask,max_gi_error_A2,max_gu_error_V2,max_gz_error_rad2,max_dq_error_A,max_np_error_V,fast_minus_ref_gi_in_ref_cost,fast_minus_ref_gz_in_ref_cost,reference_budget_slack_A,min_any_gi_gap_A2,min_any_gu_gap_V2,joint_gz_gap_rad2\n");
    fprintf(outputs,"serial,label,input_row,reference_status,fast_status,reference_selected,fast_selected,reference_pcoff,fast_pcoff,reference_active,fast_active,reference_mask,fast_mask,max_gi_error_A2,max_gu_error_V2,max_gz_error_rad2,max_dq_error_A,max_np_error_V,bisection_status,bisection_selected,bisection_pcoff,bisection_active\n");
    while(fgets(line,sizeof(line),input)){
        row++;if(!fgets(label,sizeof(label),labels))return 4;
        label[strcspn(label,"\r\n")]='\0';if(!parse_row(line,values))return 4;
        map_input(values,&c,&in);replay(&c,&in,label,row);
        /* Directed tolerance-boundary replay is generated from the readable
         * reference's second-ranked norm, then tested one float ULP around
         * that budget. Both algorithms receive exactly the SAME parameter. */
        if(row%11U==0U && PC_run(&c,&in,&reference)==PC_OK){
            float gap=sqrtf(reference.gi[reference.order_i[1]-1U])-sqrtf(reference.gi[reference.order_i[0]-1U]);
            if(isfinite(gap) && gap>=0.0f){
                threshold=c;threshold.delta_i_A=nextafterf(gap,INFINITY);replay(&threshold,&in,"budget_boundary_above",row);
                threshold.delta_i_A=gap;replay(&threshold,&in,"budget_boundary_exact",row);
                threshold.delta_i_A=nextafterf(gap,-INFINITY);
                if(threshold.delta_i_A>=0.0f)replay(&threshold,&in,"budget_boundary_below",row);
            }
        }
    }
    /* Explicit invalid-input checks reuse a valid base row; data sources do
     * not need to carry non-standard NaN text as a target log format. */
    PC_default_config(&c);c.root_method=PC_ROOT_PIECEWISE;memset(&in,0,sizeof(in));
    in.up_V=in.low_V=85.0f;in.omega_rad_s=314.159265f;in.id_ref_A=2.0f;
    for(row=0;row<8;row++){
        PC_Input bad=in;
        if(row==0)bad.id_ref_A=NAN;if(row==1)bad.omega_rad_s=INFINITY;
        if(row==2)bad.up_V=0;if(row==3)bad.low_V=-1;
        if(row==4)bad.applied_hw_state=8;if(row==5)bad.fhat_A_s[0]=NAN;
        if(row==6)bad.iabc_A[1]=INFINITY;if(row==7)bad.eabc_V[2]=NAN;
        replay(&c,&bad,"invalid_input",++nanTests);
    }
    threshold=c;threshold.L_H=0.0f;replay(&threshold,&in,"invalid_config_L",1);
    threshold=c;threshold.C_half_F=-1.0f;replay(&threshold,&in,"invalid_config_C",1);
    threshold=c;threshold.delta_i_A=-0.01f;replay(&threshold,&in,"invalid_config_budget",1);
    /* Intentional safety extension is separate from the physical-domain
     * equivalence sample. Finite extreme L/R can overflow derived udq in
     * the unchanged readable reference; the fast path must reject it. */
    threshold=c;threshold.L_H=FLT_MAX;threshold.R_ohm=FLT_MAX;
    guardRef=PC_run(&threshold,&in,&reference);guardFast=PC_run_fast(&threshold,&in,&optimized);
    guardFailure=guardFast!=PC_ERR_NUMERIC || optimized.hw_state!=0U || optimized.selected_id!=1U || PC_fast_output_summaries_available!=0U;
    fclose(input);fclose(labels);fclose(differences);fclose(outputs);
    snprintf(name,sizeof(name),"%s_summary.json",argv[3]);summaryFile=fopen(name,"w");if(!summaryFile)return 3;
    fprintf(summaryFile,"{\n\"cases\":%u,\"valid\":%u,\"invalid\":%u,\"status_difference\":%u,\"selected_difference\":%u,\"pcoff_difference\":%u,\"active_difference\":%u,\n",stats.cases,stats.valid,stats.invalid,stats.status_diff,stats.selected_diff,stats.pcoff_diff,stats.active_diff);
    fprintf(summaryFile,"\"rank_i_difference\":%u,\"rank_u_difference\":%u,\"set_difference\":%u,\"discrete_diagnostic_difference\":%u,\"blocked_difference\":%u,\"interval_integral_numeric_difference_rows\":%u,\n",stats.rank_i_diff,stats.rank_u_diff,stats.mask_diff,stats.diagnostic_diff,stats.blocked_diff,stats.summary_diff);
    fprintf(summaryFile,"\"max_gi_error_A2\":%.12g,\"max_gu_error_V2\":%.12g,\"max_gz_error_rad2\":%.12g,\"max_dq_error_A\":%.12g,\"max_np_error_V\":%.12g,\"max_interval_integral_error_V_s\":%.12g,\"max_zcdc_diag_numeric_error\":%.12g,\n",stats.max_gi,stats.max_gu,stats.max_gz,stats.max_dq,stats.max_np,stats.max_summary_integral,stats.max_diagnostic);
    fprintf(summaryFile,"\"bisection32_vs_piecewise_reference\":{\"status_difference\":%u,\"selected_difference\":%u,\"pcoff_difference\":%u,\"active_difference\":%u},\n",stats.bisection_status_diff,stats.bisection_selected_diff,stats.bisection_pcoff_diff,stats.bisection_active_diff);
    fprintf(summaryFile,"\"full_interval\":{\"calls\":%u,\"status_difference\":%u,\"numeric_difference_rows\":%u,\"discrete_difference_rows\":%u,\"max_numeric_error_mixed_SI\":%.12g},\n",stats.full_interval_calls,stats.full_status_diff,stats.full_numeric_diff,stats.full_discrete_diff,stats.max_full_numeric);
    fprintf(summaryFile,"\"summary_interval\":{\"calls\":%u,\"status_difference\":%u,\"numeric_difference_rows\":%u,\"discrete_difference_rows\":%u},\n",stats.summary_interval_calls,stats.summary_status_diff,stats.summary_numeric_diff,stats.summary_discrete_diff);
    fprintf(summaryFile,"\"control_interval\":{\"calls\":%u,\"status_difference\":%u,\"numeric_difference_rows\":%u,\"discrete_difference_rows\":%u,\"integral_unavailable_errors\":%u},\n",stats.control_interval_calls,stats.control_status_diff,stats.control_numeric_diff,stats.control_discrete_diff,stats.integral_unavailable_errors);
    fprintf(summaryFile,"\"availability_flag_errors\":%u,\"unavailable_marker_errors\":%u,\"max_budget_limit_error_A\":%.12g,\"max_voltage_margin_error_V\":%.12g,\n",stats.availability_flag_errors,stats.unavailable_marker_errors,stats.max_budget,stats.max_margin);
    fprintf(summaryFile,"\"extreme_derived_numeric_guard\":{\"readable_reference_status\":%u,\"fast_status\":%u,\"guard_failure\":%u,\"reference_margin_finite\":%u},\n",guardRef,guardFast,guardFailure,(unsigned)isfinite(reference.voltage_margin_V));
    fprintf(summaryFile,"\"fast_unsafe_error_outputs\":%u,\"fast_terminal_gate_events\":%u,\"reference_terminal_gate_events\":%u\n}\n",stats.fast_unsafe_error,stats.terminal_events,stats.reference_terminal_events);
    fclose(summaryFile);
    printf("cases=%u valid=%u invalid=%u fast_vs_float_piecewise selected=%u pcoff=%u active=%u rankI=%u rankU=%u masks=%u status=%u unsafe=%u\n",stats.cases,stats.valid,stats.invalid,stats.selected_diff,stats.pcoff_diff,stats.active_diff,stats.rank_i_diff,stats.rank_u_diff,stats.mask_diff,stats.status_diff,stats.fast_unsafe_error);
    printf("max errors: dq_A=%.9g np_V=%.9g gi_A2=%.9g gu_V2=%.9g gz_rad2=%.9g; bisection32 selected differences=%u\n",stats.max_dq,stats.max_np,stats.max_gi,stats.max_gu,stats.max_gz,stats.bisection_selected_diff);
    return (stats.status_diff || stats.fast_unsafe_error || stats.availability_flag_errors || stats.unavailable_marker_errors ||
        stats.selected_diff || stats.pcoff_diff || stats.active_diff || stats.rank_i_diff || stats.rank_u_diff || stats.mask_diff ||
        stats.diagnostic_diff || stats.blocked_diff || stats.full_status_diff || stats.full_numeric_diff || stats.full_discrete_diff ||
        stats.summary_status_diff || stats.summary_numeric_diff || stats.summary_discrete_diff ||
        stats.control_status_diff || stats.control_numeric_diff || stats.control_discrete_diff || stats.integral_unavailable_errors ||
        stats.max_gi!=0.0 || stats.max_gu!=0.0 || stats.max_gz!=0.0 || stats.max_dq!=0.0 || stats.max_np!=0.0 ||
        stats.max_diagnostic!=0.0 || stats.max_budget!=0.0 || stats.max_margin!=0.0 || guardFailure)?1:0;
}
