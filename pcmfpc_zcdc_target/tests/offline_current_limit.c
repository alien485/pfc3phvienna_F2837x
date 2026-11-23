/* Offline experiment only: no MCU linkage, I/O, protection or model changes. */
#include "offline_current_limit.h"
#include <float.h>
#include <math.h>
#include <string.h>

#ifdef PC_REAL_TYPE
#define OCL_SQRT(x) ((PC_Real)sqrt((double)(x)))
#define OCL_SIN(x) ((PC_Real)sin((double)(x)))
#define OCL_ATAN2(y,x) ((PC_Real)atan2((double)(y),(double)(x)))
#else
#define OCL_SQRT(x) sqrtf(x)
#define OCL_SIN(x) sinf(x)
#define OCL_ATAN2(y,x) atan2f((y),(x))
#endif
#define OCL_PI ((PC_Real)3.14159265358979323846)
#define OCL_ABS(x) (((x)<(PC_Real)0)?-(x):(x))
#define OCL_MIN(a,b) (((a)<(b))?(a):(b))
#define OCL_MAX(a,b) (((a)>(b))?(a):(b))

static uint16_t ocl_finite(PC_Real value)
{
    return (uint16_t)isfinite((double)value);
}

static uint16_t ocl_stop(PC_Output *out,uint16_t status)
{
    uint16_t j;
    if(out){
        out->status=status;out->valid=0U;out->requested=0U;out->active=0U;
        out->selected_id=0U;out->pc_off_id=0U;out->hw_state=0U;
        out->current_count=0U;out->intersection_count=0U;
        out->midpoint_prefix=0U;out->current_mask=0U;out->intersection_mask=0U;
        out->budget_limit_A=(PC_Real)0;
        for(j=0U;j<8U;j++){out->order_i[j]=0U;out->order_u[j]=0U;}
        for(j=0U;j<10U;j++)out->zcdc_diag[j]=(PC_Real)0;
        /* Original gi/gu/gz, predictions and unavailable substep bytes remain
         * untouched. No returned command is valid after this stop. */
    }
    return status;
}

static uint16_t ocl_less(uint16_t x,uint16_t y,const PC_Real a[8],
    const PC_Real b[8],const uint16_t sw[8])
{
    return (uint16_t)(a[x]<a[y] || (a[x]==a[y] &&
        (b[x]<b[y] || (b[x]==b[y] && (sw[x]<sw[y] || (sw[x]==sw[y] && x<y))))));
}

static uint16_t ocl_rank(uint16_t feasible,const PC_Real a[8],
    const PC_Real b[8],const uint16_t sw[8],uint16_t order[8])
{
    uint16_t k,j,key,n=0U;
    for(k=0U;k<8U;k++)if(feasible & (uint16_t)(1U<<k))order[n++]=k;
    for(k=1U;k<n;k++){
        key=order[k];j=k;
        while(j>0U && ocl_less(key,order[j-1U],a,b,sw)){
            order[j]=order[j-1U];j--;
        }
        order[j]=key;
    }
    return n;
}

static PC_Real ocl_angle(PC_Real rd,PC_Real rq,const PC_Real dq[2])
{
    PC_Real angle;
    if(OCL_SQRT(dq[0]*dq[0]+dq[1]*dq[1])<(PC_Real)1e-12)
        return OCL_PI*OCL_PI;
    angle=OCL_ATAN2(rd*dq[1]-rq*dq[0],rd*dq[0]+rq*dq[1]);
    return angle*angle;
}

void OCL_default_config(OCL_Config *config)
{
    if(config){
        config->policy=OCL_POLICY_SUBSTEP_SAMPLED;
        config->current_limit_A=(PC_Real)7;
        config->safety_margin_A=(PC_Real)0;
    }
}

uint16_t OCL_select_feasible(const PC_Config *config,const PC_Input *input,
    PC_Output *out,uint16_t feasible)
{
    uint16_t oi[8],ou[8],j,k,count,top,m,n=0U,iteration;
    uint16_t mask=0U,current=0U,pc_off,chosen;
    PC_Real budget,amp,ref[2],iref[3],theta1,theta2;
    PC_Real gz_lo,gz_hi,spread_lo,spread_hi;
    if(!out)return PC_ERR_INPUT;
    if(!config || !input)return ocl_stop(out,PC_ERR_INPUT);
    if(feasible & (uint16_t)0xff00U)return ocl_stop(out,OCL_ERR_CONFIG);
    if(!feasible)return ocl_stop(out,OCL_STOP_NO_FEASIBLE);
    if(out->status!=PC_OK)return ocl_stop(out,out->status);
    /* This entry consumes an already selected, authoritative base output. */
    if(feasible==(uint16_t)0xffU)return PC_OK;
    if(!ocl_finite(config->delta_i_A) || config->delta_i_A<(PC_Real)0)
        return ocl_stop(out,OCL_ERR_CONFIG);
    for(j=0U;j<8U;j++)if(feasible & (uint16_t)(1U<<j)){
        if(!ocl_finite(out->gi[j]) || out->gi[j]<(PC_Real)0 ||
           !ocl_finite(out->gu[j]) || !ocl_finite(out->idq2_A[j][0]) ||
           !ocl_finite(out->idq2_A[j][1]))return ocl_stop(out,PC_ERR_NUMERIC);
    }
    count=ocl_rank(feasible,out->gi,out->gu,out->switch_count,oi);
    (void)ocl_rank(feasible,out->gu,out->gi,out->switch_count,ou);
    top=count<3U?count:3U;
    budget=OCL_SQRT(out->gi[oi[0]])+config->delta_i_A;
    if(!ocl_finite(budget))return ocl_stop(out,PC_ERR_NUMERIC);
    out->current_count=0U;
    for(k=0U;k<top;k++)if(OCL_SQRT(out->gi[oi[k]])<=budget){
        current|=(uint16_t)(1U<<oi[k]);out->current_count++;
    }
    m=top;
    for(iteration=0U;iteration<8U;iteration++){
        mask=0U;n=0U;
        for(k=0U;k<m;k++)if(current & (uint16_t)(1U<<ou[k])){
            mask|=(uint16_t)(1U<<ou[k]);n++;
        }
        if(n>=1U && n<=2U)break;
        if(n==0U){if(m<count)m++;}
        else if(m>1U)m--;
    }
    if(n<1U || n>2U)return ocl_stop(out,PC_ERR_INTERSECTION);
    pc_off=oi[0];
    for(k=0U;k<count;k++)if(mask & (uint16_t)(1U<<oi[k])){pc_off=oi[k];break;}
    out->current_mask=current;out->budget_limit_A=budget;
    out->intersection_mask=mask;out->intersection_count=n;out->midpoint_prefix=m;
    out->pc_off_id=(uint16_t)(pc_off+1U);
    /* The base valid/requested/voltage margin and all blocked flags belong to
     * this same input. Only blocked_candidate[pc_off] changes the joint trigger. */
    amp=OCL_SQRT(input->id_ref_A*input->id_ref_A+input->iq_ref_A*input->iq_ref_A);
    theta1=input->theta_rad+input->omega_rad_s*config->first_duration_s;
    theta2=theta1+input->omega_rad_s*config->candidate_duration_s;
    if(!ocl_finite(amp) || !ocl_finite(theta2) || !ocl_finite(out->voltage_margin_V))
        return ocl_stop(out,PC_ERR_NUMERIC);
    ref[0]=input->id_ref_A;ref[1]=input->iq_ref_A;
    PC_dq_to_abc(ref,theta2,iref);
    out->active=(uint16_t)(out->valid && out->requested && amp>=(PC_Real)0.1 &&
        OCL_MIN(OCL_ABS(iref[0]),OCL_MIN(OCL_ABS(iref[1]),OCL_ABS(iref[2])))<=amp*OCL_SIN(config->zero_window_rad) &&
        (out->voltage_margin_V<-(PC_Real)1e-6 || out->first_interval.blocked || out->blocked_candidate[pc_off]));
    for(j=0U;j<8U;j++)out->gz[j]=(PC_Real)0;
    chosen=pc_off;
    if(out->active){
        for(j=0U;j<8U;j++)if(config->diagnostic_all_angles || (mask & (uint16_t)(1U<<j))){
            out->gz[j]=ocl_angle(input->id_ref_A,input->iq_ref_A,out->idq2_A[j]);
            if(!ocl_finite(out->gz[j]))return ocl_stop(out,PC_ERR_NUMERIC);
        }
        for(k=0U;k<count;k++){
            j=oi[k];
            if((mask & (uint16_t)(1U<<j)) && out->gz[j]<out->gz[chosen])chosen=j;
        }
    }
    gz_lo=out->gz[0];gz_hi=out->gz[0];
    spread_lo=(PC_Real)FLT_MAX;spread_hi=-(PC_Real)FLT_MAX;
    for(j=0U;j<8U;j++){
        gz_lo=OCL_MIN(gz_lo,out->gz[j]);gz_hi=OCL_MAX(gz_hi,out->gz[j]);
        if(mask & (uint16_t)(1U<<j)){
            spread_lo=OCL_MIN(spread_lo,out->gz[j]);spread_hi=OCL_MAX(spread_hi,out->gz[j]);
        }
        out->order_i[j]=j<count?(uint16_t)(oi[j]+1U):0U;
        out->order_u[j]=j<count?(uint16_t)(ou[j]+1U):0U;
    }
    out->selected_id=(uint16_t)(chosen+1U);out->hw_state=PC_id_to_hw(out->selected_id);
    out->zcdc_diag[0]=(PC_Real)out->valid;out->zcdc_diag[1]=(PC_Real)out->requested;
    out->zcdc_diag[2]=(PC_Real)out->active;out->zcdc_diag[3]=(PC_Real)7;
    out->zcdc_diag[4]=config->diagnostic_all_angles?(gz_hi-gz_lo):(PC_Real)-1;
    out->zcdc_diag[5]=spread_hi-spread_lo;out->zcdc_diag[6]=(PC_Real)out->pc_off_id;
    out->zcdc_diag[7]=(PC_Real)out->selected_id;out->zcdc_diag[8]=(PC_Real)(chosen!=pc_off);
    out->zcdc_diag[9]=out->gz[chosen];out->status=PC_OK;
    return PC_OK;
}

static uint16_t ocl_peak(const PC_Real abc[3],PC_Real *peak)
{
    uint16_t j;
    for(j=0U;j<3U;j++){
        if(!ocl_finite(abc[j]))return PC_ERR_NUMERIC;
        *peak=OCL_MAX(*peak,OCL_ABS(abc[j]));
    }
    return PC_OK;
}

static uint16_t ocl_full_peak(const PC_Interval *full,const PC_Real start[3],
    const PC_Real end[3],PC_Real *peak,PC_Real *difference)
{
    uint16_t step,j,status;
    *peak=(PC_Real)0;*difference=(PC_Real)0;
    status=ocl_peak(start,peak);if(status!=PC_OK)return status;
    status=ocl_peak(end,peak);if(status!=PC_OK)return status;
    for(step=0U;step<2U;step++){
        status=ocl_peak(full->substep[step].old_abc_A,peak);if(status!=PC_OK)return status;
        status=ocl_peak(full->substep[step].next_abc_A,peak);if(status!=PC_OK)return status;
    }
    for(j=0U;j<3U;j++)*difference=OCL_MAX(*difference,
        OCL_ABS(full->substep[1].next_abc_A[j]-end[j]));
    return PC_OK;
}

static uint16_t ocl_fail(PC_Output *out,OCL_Diagnostics *diag,uint16_t status,
    uint16_t source)
{
    diag->status=status;diag->error_source=source;diag->valid=0U;
    return ocl_stop(out,status);
}

uint16_t OCL_run(const PC_Config *config,const PC_Input *input,PC_Output *out,
    const OCL_Config *limit,OCL_Diagnostics *diagnostics)
{
    OCL_Diagnostics local,*d=diagnostics?diagnostics:&local;
    PC_Interval full;
    PC_Real dq0[2],first_abc[3],end_abc[3],theta1,theta2,dc,up1,low1,peak;
    uint16_t status,j,bit;
    /* Disabled is deliberately the unmodified kernel, including failure writes
     * and unavailable substep bytes. No constraint math runs on that path. */
    status=PC_run_fast(config,input,out);
    memset(d,0,sizeof(*d));d->base_status=status;d->status=status;
    d->policy=limit?limit->policy:0U;
    if(out){d->raw_selected_id=out->selected_id;d->raw_pc_off_id=out->pc_off_id;}
    if(limit && limit->policy==OCL_POLICY_DISABLED)return status;
    if(status!=PC_OK)return ocl_fail(out,d,status,OCL_SOURCE_BASE);
    if(!limit || (limit->policy!=OCL_POLICY_ENDPOINT && limit->policy!=OCL_POLICY_SUBSTEP_SAMPLED) ||
       !ocl_finite(limit->current_limit_A) || limit->current_limit_A<=(PC_Real)0 ||
       !ocl_finite(limit->safety_margin_A) || limit->safety_margin_A<(PC_Real)0 ||
       limit->safety_margin_A>=limit->current_limit_A)
        return ocl_fail(out,d,OCL_ERR_CONFIG,OCL_SOURCE_CONFIG);
    d->current_limit_A=limit->current_limit_A;d->safety_margin_A=limit->safety_margin_A;
    d->effective_limit_A=limit->current_limit_A-limit->safety_margin_A;
    theta1=input->theta_rad+input->omega_rad_s*config->first_duration_s;
    theta2=theta1+input->omega_rad_s*config->candidate_duration_s;
    PC_dq_to_abc(out->idq1_A,theta1,first_abc);
    peak=(PC_Real)0;
    status=ocl_peak(input->iabc_A,&peak);
    if(status==PC_OK)status=ocl_peak(first_abc,&peak);
    if(status!=PC_OK)return ocl_fail(out,d,status,OCL_SOURCE_BASE);
    d->first_endpoint_peak_A=peak;d->first_peak_used_A=peak;
    if(peak>=d->effective_limit_A){
        d->delay_violation=1U;d->guard_reason=OCL_GUARD_DELAY;
        d->first_margin_A=d->effective_limit_A-peak;
        return ocl_fail(out,d,OCL_STOP_DELAY,OCL_SOURCE_NONE);
    }
    if(limit->policy==OCL_POLICY_SUBSTEP_SAMPLED){
        PC_abc_to_dq(input->iabc_A,input->theta_rad,dq0);
        status=PC_fast_predict_interval(config,dq0,input->up_V,input->low_V,input->applied_hw_state,
            input->theta_rad,input->omega_rad_s,input->fhat_A_s,
            config->first_duration_s,&full,PC_FAST_FULL_SUBSTEPS);
        d->aux_status=status;
        if(status!=PC_OK)return ocl_fail(out,d,status,OCL_SOURCE_FIRST_FULL);
        status=ocl_full_peak(&full,input->iabc_A,first_abc,&d->first_substep_peak_A,
            &d->first_ctrl_full_endpoint_diff_A);
        if(status!=PC_OK)return ocl_fail(out,d,status,OCL_SOURCE_FIRST_FULL);
        d->delay_full_evaluated=1U;d->first_peak_used_A=d->first_substep_peak_A;
        if(d->first_peak_used_A>=d->effective_limit_A){
            d->delay_violation=1U;d->guard_reason=OCL_GUARD_DELAY;
            d->first_margin_A=d->effective_limit_A-d->first_peak_used_A;
            return ocl_fail(out,d,OCL_STOP_DELAY,OCL_SOURCE_NONE);
        }
    }
    d->first_margin_A=d->effective_limit_A-d->first_peak_used_A;
    dc=input->up_V+input->low_V;
    up1=(dc-out->np1_V)/(PC_Real)2;low1=(dc+out->np1_V)/(PC_Real)2;
    d->min_feasible_margin_A=(PC_Real)FLT_MAX;
    for(j=0U;j<8U;j++){
        bit=(uint16_t)(1U<<j);
        PC_dq_to_abc(out->idq2_A[j],theta2,end_abc);
        peak=(PC_Real)0;
        status=ocl_peak(first_abc,&peak);
        if(status==PC_OK)status=ocl_peak(end_abc,&peak);
        if(status!=PC_OK){d->failed_candidate_id=(uint16_t)(j+1U);return ocl_fail(out,d,status,OCL_SOURCE_BASE);}
        d->endpoint_evaluated_mask|=bit;d->endpoint_peak_A[j]=peak;d->peak_used_A[j]=peak;
        if(peak<d->effective_limit_A)d->endpoint_feasible_mask|=bit;
        if(limit->policy==OCL_POLICY_SUBSTEP_SAMPLED){
            /* Preserve the CONTROL first endpoint as the candidate seed. FULL
             * is auxiliary and never replaces that seed or the public arrays. */
            status=PC_fast_predict_interval(config,out->idq1_A,up1,low1,PC_id_to_hw((uint16_t)(j+1U)),
                theta1,input->omega_rad_s,input->fhat_A_s,
                config->candidate_duration_s,&full,PC_FAST_FULL_SUBSTEPS);
            d->aux_status=status;
            if(status!=PC_OK){d->failed_candidate_id=(uint16_t)(j+1U);return ocl_fail(out,d,status,OCL_SOURCE_CANDIDATE_FULL);}
            status=ocl_full_peak(&full,first_abc,end_abc,&d->substep_peak_A[j],&d->ctrl_full_endpoint_diff_A[j]);
            if(status!=PC_OK){d->failed_candidate_id=(uint16_t)(j+1U);return ocl_fail(out,d,status,OCL_SOURCE_CANDIDATE_FULL);}
            d->substep_evaluated_mask|=bit;d->peak_used_A[j]=d->substep_peak_A[j];
            if(d->substep_peak_A[j]<d->effective_limit_A)d->substep_feasible_mask|=bit;
        }
        if(d->peak_used_A[j]<d->effective_limit_A){
            d->feasible_mask|=bit;d->feasible_count++;
            d->min_feasible_margin_A=OCL_MIN(d->min_feasible_margin_A,
                d->effective_limit_A-d->peak_used_A[j]);
        }else d->rejected_mask|=bit;
    }
    if(!d->feasible_count){
        d->min_feasible_margin_A=(PC_Real)0;
        d->no_feasible=1U;d->guard_reason=OCL_GUARD_NO_FEASIBLE;
        return ocl_fail(out,d,OCL_STOP_NO_FEASIBLE,OCL_SOURCE_NONE);
    }
    status=OCL_select_feasible(config,input,out,d->feasible_mask);
    if(status!=PC_OK)return ocl_fail(out,d,status,OCL_SOURCE_SELECTION);
    d->selected_margin_A=d->effective_limit_A-d->peak_used_A[out->selected_id-1U];
    d->status=PC_OK;d->valid=1U;
    return PC_OK;
}
