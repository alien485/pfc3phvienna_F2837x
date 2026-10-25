/* Bounded fast mode-7 path. Reference PC_run is unchanged.
 * Same piecewise diode model and cost ordering; angle plans are shared across
 * all eight candidates. No full PC_Output/PC_Interval memset is performed.
 * Static plans belong exclusively to CPU1 ISR1: this TU is NOT reentrant.
 * See vienna_pcmfpc_fast.h for detailed-output availability contracts.
 */
#include "vienna_pcmfpc_fast.h"
#include <math.h>
#include <float.h>

#ifdef __TI_COMPILER_VERSION__
#pragma CODE_SECTION(PC_run_fast, "pcmfpc_code")
#pragma CODE_SECTION(PC_fast_predict_interval, "pcmfpc_code")
#pragma CODE_SECTION(pf_finite, "pcmfpc_code")
#pragma CODE_SECTION(pf_config_valid, "pcmfpc_code")
#pragma CODE_SECTION(pf_rotation, "pcmfpc_code")
#pragma CODE_SECTION(pf_plan, "pcmfpc_code")
#pragma CODE_SECTION(pf_abc_to_dq, "pcmfpc_code")
#pragma CODE_SECTION(pf_dq_to_abc, "pcmfpc_code")
#pragma CODE_SECTION(pf_projection, "pcmfpc_code")
#pragma CODE_SECTION(pf_root, "pcmfpc_code")
#pragma CODE_SECTION(pf_interval, "pcmfpc_code")
#pragma CODE_SECTION(pf_output_init, "pcmfpc_code")
#pragma CODE_SECTION(pf_less, "pcmfpc_code")
#pragma CODE_SECTION(pf_rank, "pcmfpc_code")
#pragma CODE_SECTION(pf_angle_cost, "pcmfpc_code")
#endif

#ifdef PC_REAL_TYPE
#define PC_SIN(x) ((PC_Real)sin((double)(x)))
#define PC_COS(x) ((PC_Real)cos((double)(x)))
#define PC_SQRT(x) ((PC_Real)sqrt((double)(x)))
#define PC_ATAN2(y,x) ((PC_Real)atan2((double)(y),(double)(x)))
#define PC_EPS ((PC_Real)DBL_EPSILON)
#else
#define PC_SIN(x) sinf(x)
#define PC_COS(x) cosf(x)
#define PC_SQRT(x) sqrtf(x)
#define PC_ATAN2(y,x) atan2f((y),(x))
#define PC_EPS FLT_EPSILON
#endif
#define PC_PI ((PC_Real)3.14159265358979323846)
#define PC_C ((PC_Real)0.57735026918962576451)
#define PC_SQRT3_HALF ((PC_Real)0.86602540378443864676)
#define PC_ABS(x) (((x)<(PC_Real)0)?-(x):(x))
#define PC_MAX(a,b) (((a)>(b))?(a):(b))
#define PC_MIN(a,b) (((a)<(b))?(a):(b))

static uint16_t pf_finite(PC_Real x)
{
    /* Bit test remains meaningful with TI relaxed floating-point options.
       Inputs intentionally have a float32 representable finite domain. */
    union { float f; uint32_t u; } v;
    v.f = (float)x;
    return (uint16_t)((v.u & (uint32_t)0x7f800000UL) != (uint32_t)0x7f800000UL);
}

static uint16_t pf_config_valid(const PC_Config *c)
{
    return (uint16_t)(c && pf_finite(c->L_H) && c->L_H>(PC_Real)0 &&
        pf_finite(c->C_half_F) && c->C_half_F>(PC_Real)0 &&
        pf_finite(c->first_duration_s) && c->first_duration_s>(PC_Real)0 &&
        pf_finite(c->candidate_duration_s) && c->candidate_duration_s>(PC_Real)0 &&
        pf_finite(c->R_ohm) && c->R_ohm>=(PC_Real)0 &&
        pf_finite(c->delta_i_A) && c->delta_i_A>=(PC_Real)0 &&
        pf_finite(c->zero_window_rad) && c->zero_window_rad>(PC_Real)0 &&
        c->zero_window_rad<PC_PI/(PC_Real)6 && c->root_method==PC_ROOT_PIECEWISE);
}

typedef struct { PC_Real theta, ct, st; } PF_Rotation;
typedef struct { PC_Real h, c; PF_Rotation node[3]; } PF_Plan;
/* Plan storage is static to bound stack use; never shared with another ISR. */
static PF_Plan pf_first_plan,pf_candidate_plan,pf_standalone_plan;
static PF_Rotation pf_input_rotation,pf_reference_rotation;
volatile uint16_t PC_fast_output_substeps_available=0U;
volatile uint16_t PC_fast_output_summaries_available=0U;

static void pf_rotation(PC_Real theta,PF_Rotation *r)
{
    r->theta=theta;r->ct=PC_COS(theta);r->st=PC_SIN(theta);
}
static void pf_plan(const PC_Config *cfg,PC_Real theta,PC_Real omega,
                    PC_Real duration,PF_Plan *p)
{
    uint16_t j;
    p->h=duration/(PC_Real)2;p->c=p->h/cfg->L_H;
    /* Keep the reference theta+(step)*omega*h arithmetic, including its
       operation order, rather than substituting a recurrence or angle sum. */
    for(j=0U;j<3U;j++)
        pf_rotation(theta+(PC_Real)j*omega*p->h,&p->node[j]);
}
static void pf_abc_to_dq(const PC_Real abc[3],const PF_Rotation *r,PC_Real dq[2])
{
    PC_Real a=((PC_Real)2*abc[0]-abc[1]-abc[2])/(PC_Real)3;
    PC_Real b=(abc[1]-abc[2])*PC_C;
    dq[0]=r->ct*a+r->st*b;dq[1]=-r->st*a+r->ct*b;
}
static void pf_dq_to_abc(const PC_Real dq[2],const PF_Rotation *r,PC_Real abc[3])
{
    PC_Real a=r->ct*dq[0]-r->st*dq[1],b=r->st*dq[0]+r->ct*dq[1];
    abc[0]=a;abc[1]=-a/(PC_Real)2+PC_SQRT3_HALF*b;
    abc[2]=-a/(PC_Real)2-PC_SQRT3_HALF*b;
}
static PC_Real pf_projection(const PC_Real q[3],uint16_t hw,
    PC_Real c,PC_Real up,PC_Real low,PC_Real mu,PC_Real next[3])
{
    PC_Real cm=c*mu,cu=c*up,cl=c*low,z,sum=(PC_Real)0;
    /* Fixed phase masks remove variable shifts and loop bookkeeping. Keep
       sum order and arithmetic identical to the scalar reference. */
    z=q[0]+cm;next[0]=(hw&1U)?z:PC_MAX(z-cu,(PC_Real)0)+PC_MIN(z+cl,(PC_Real)0);sum+=next[0];
    z=q[1]+cm;next[1]=(hw&2U)?z:PC_MAX(z-cu,(PC_Real)0)+PC_MIN(z+cl,(PC_Real)0);sum+=next[1];
    z=q[2]+cm;next[2]=(hw&4U)?z:PC_MAX(z-cu,(PC_Real)0)+PC_MIN(z+cl,(PC_Real)0);sum+=next[2];
    return sum;
}

/* H(mu) is continuous piecewise affine. OFF phase breakpoints are
   -Ulow-q/c and Uup-q/c; ON contributes slope c everywhere. There are at most
   six internal breakpoints, hence at most seven affine segments. A flat zero
   segment has nonunique mu but identical projected currents. The piecewise
   solver performs bounded sorting and no iterative root search. It solves
   the SAME ideal diode model; float32 decision ties are separately tested. */
static uint16_t pf_root(const PC_Real q[3],uint16_t hw,PC_Real c,
    PC_Real up,PC_Real low,PC_Real *mu,PC_Real *width,
    uint16_t *iterations,PC_Real next[3],PC_Real *residual)
{
    PC_Real lo=-low,hi=up,hl,hh,work[3];
    PC_Real qscale=PC_ABS(q[0])+PC_ABS(q[1])+PC_ABS(q[2])+c*(up+low);
    PC_Real tolerance=(PC_Real)32*PC_EPS*PC_MAX(qscale,(PC_Real)1);
    uint16_t k;
    hl=pf_projection(q,hw,c,up,low,lo,work);
    hh=pf_projection(q,hw,c,up,low,hi,work);
    if(!pf_finite(hl) || !pf_finite(hh) || hl>tolerance || hh<-tolerance)
        return PC_ERR_ROOT;
    *iterations=0U;
    {
        PC_Real points[8],a,ha;
        uint16_t count=2U,r,j,found=0U;
        points[0]=lo;points[1]=hi;
        for(r=0U;r<3U;r++) if(!(hw & (uint16_t)(1U<<r))) {
            PC_Real x=-low-q[r]/c, y=up-q[r]/c;
            if(x>lo && x<hi) points[count++]=x;
            if(y>lo && y<hi) points[count++]=y;
        }
        for(k=1U;k<count;k++) {
            PC_Real key=points[k];j=k;
            while(j>0U && key<points[j-1U]) {points[j]=points[j-1U];j--;}
            points[j]=key;
        }
        a=points[0];ha=hl;
        if(ha==(PC_Real)0) {*mu=a;*width=(PC_Real)0;found=1U;}
        for(k=1U;k<count && !found;k++) {
            PC_Real b=points[k];
            PC_Real hb=pf_projection(q,hw,c,up,low,b,work);
            (*iterations)++;
            if(hb==(PC_Real)0) {*mu=b;*width=(PC_Real)0;found=1U;}
            else if(ha<=(PC_Real)0 && hb>(PC_Real)0 && hb>ha) {
                PC_Real root=a-ha*((b-a)/(hb-ha));
                *mu=PC_MAX(a,PC_MIN(b,root));*width=b-a;found=1U;
            }
            a=b;ha=hb;
        }
        if(!found) {
            /* Only endpoint rounding accepted; do not silently proceed when
               the physical bracket is invalid. */
            if(PC_ABS(hl)<=tolerance) *mu=lo;
            else if(PC_ABS(hh)<=tolerance) *mu=hi;
            else return PC_ERR_ROOT;
            *width=(PC_Real)0;
        }
    }
    *residual=pf_projection(q,hw,c,up,low,*mu,next);
    if(!pf_finite(*residual) || PC_ABS(*residual)>tolerance) return PC_ERR_ROOT;
    return PC_OK;
}

/* Internal kernel: caller has validated common inputs and prepared the
 * exact interval-angle plan. Each candidate still owns its own neutral-state
 * evolution. Success writes every summary member; detail controls traces. */
static uint16_t pf_interval(const PC_Config *cfg,const PC_Real dq0[2],
    PC_Real up,PC_Real low,uint16_t hw,const PC_Real f[2],
    const PF_Plan *plan,PC_Interval *out,uint16_t detail)
{
    PC_Real dq[2],np=low-up,dc=up+low,h=plan->h,c=plan->c;
    uint16_t step,r,status;
    dq[0]=dq0[0];dq[1]=dq0[1];out->blocked=0U;
    out->u_integral_dq_V_s[0]=(PC_Real)0;out->u_integral_dq_V_s[1]=(PC_Real)0;
    if(!pf_finite(c) || c<=(PC_Real)0 || !pf_finite(dc))return PC_ERR_NUMERIC;
    for(step=0U;step<2U;step++){
        PC_Real old[3],freeabc[3],next[3],pole[3],free_dq[2],pole_dq[2];
        PC_Real neutral=(PC_Real)0,mu,width,residual;
        uint16_t iterations,blocked=0U;
        PC_Substep *s=&out->substep[step];
        s->root_iterations=PC_FAST_SUBSTEP_UNAVAILABLE;
        up=(dc-np)/(PC_Real)2;low=(dc+np)/(PC_Real)2;
        if(up<=(PC_Real)0 || low<=(PC_Real)0 || !pf_finite(up) || !pf_finite(low))return PC_ERR_MIDPOINT;
        pf_dq_to_abc(dq,&plan->node[step],old);
        free_dq[0]=dq[0]+h*f[0];free_dq[1]=dq[1]+h*f[1];
        pf_dq_to_abc(free_dq,&plan->node[step+1U],freeabc);
        status=pf_root(freeabc,hw,c,up,low,&mu,&width,&iterations,next,&residual);
        if(status!=PC_OK)return status;
        for(r=0U;r<3U;r++){
            PC_Real z=freeabc[r]+c*mu;
            pole[r]=(z-next[r])/c;
            if(hw&(uint16_t)(1U<<r)){
                pole[r]=(PC_Real)0;
                neutral+=(old[r]+next[r])/(PC_Real)2;
            }else if(PC_ABS(next[r])<(PC_Real)1e-12)blocked=1U;
        }
        out->blocked=(uint16_t)(out->blocked || blocked);
        pf_abc_to_dq(pole,&plan->node[step+1U],pole_dq);
        out->u_integral_dq_V_s[0]+=h*pole_dq[0];out->u_integral_dq_V_s[1]+=h*pole_dq[1];
        pf_abc_to_dq(next,&plan->node[step+1U],dq);
        np+=h/cfg->C_half_F*neutral;
        if(detail){
            for(r=0U;r<3U;r++){
                s->old_abc_A[r]=old[r];s->free_abc_A[r]=freeabc[r];
                s->next_abc_A[r]=next[r];s->pole_abc_V[r]=pole[r];
            }
            s->idq_A[0]=dq[0];s->idq_A[1]=dq[1];s->np_V=np;s->mu_V=mu;
            s->theta_end_rad=plan->node[step+1U].theta;
            s->root_residual_A=residual;s->root_bracket_width_V=width;
            s->root_iterations=iterations;s->blocked=blocked;
        }
        if(!pf_finite(np) || !pf_finite(dq[0]) || !pf_finite(dq[1]))return PC_ERR_NUMERIC;
    }
    out->idq_A[0]=dq[0];out->idq_A[1]=dq[1];out->np_V=np;
    if(PC_ABS(np)>=dc)return PC_ERR_MIDPOINT;
    return PC_OK;
}

uint16_t PC_fast_predict_interval(const PC_Config *cfg,const PC_Real dq0[2],
    PC_Real up,PC_Real low,uint16_t hw,PC_Real theta,PC_Real omega,
    const PC_Real f[2],PC_Real duration,PC_Interval *out,uint16_t detail)
{
    if(!out)return PC_ERR_INPUT;
    if(!pf_config_valid(cfg) || detail>PC_FAST_FULL_SUBSTEPS)return PC_ERR_CONFIG;
    if(!dq0 || !f || hw>7U || !pf_finite(duration) || duration<=(PC_Real)0 ||
       !pf_finite(up) || !pf_finite(low) || up<=(PC_Real)0 || low<=(PC_Real)0 ||
       !pf_finite(dq0[0]) || !pf_finite(dq0[1]) || !pf_finite(f[0]) ||
       !pf_finite(f[1]) || !pf_finite(theta) || !pf_finite(omega))return PC_ERR_INPUT;
    pf_plan(cfg,theta,omega,duration,&pf_standalone_plan);
    return pf_interval(cfg,dq0,up,low,hw,f,&pf_standalone_plan,out,detail);
}

static void pf_output_init(PC_Output *out)
{
    uint16_t j;
    /* Initialize exactly the public basic result. No write traverses the
       large detailed interval arrays, which have an explicit invalid flag. */
    out->status=PC_ERR_INPUT;out->selected_id=1U;out->pc_off_id=1U;out->hw_state=0U;
    out->valid=0U;out->requested=0U;out->active=0U;out->current_count=0U;
    out->intersection_count=0U;out->midpoint_prefix=0U;out->intersection_mask=0U;out->current_mask=0U;
    out->idq1_A[0]=(PC_Real)0;out->idq1_A[1]=(PC_Real)0;out->np1_V=(PC_Real)0;
    out->budget_limit_A=(PC_Real)0;out->voltage_margin_V=(PC_Real)0;
    for(j=0U;j<8U;j++){
        out->order_i[j]=0U;out->order_u[j]=0U;out->switch_count[j]=0U;out->blocked_candidate[j]=0U;
        out->gi[j]=(PC_Real)0;out->gu[j]=(PC_Real)0;out->gz[j]=(PC_Real)0;
        out->idq2_A[j][0]=(PC_Real)0;out->idq2_A[j][1]=(PC_Real)0;out->np2_V[j]=(PC_Real)0;
    }
    for(j=0U;j<10U;j++)out->zcdc_diag[j]=(PC_Real)0;
}

static uint16_t pf_less(uint16_t x,uint16_t y,const PC_Real a[8],
    const PC_Real b[8],const uint16_t sw[8])
{
    return (uint16_t)(a[x]<a[y] || (a[x]==a[y] &&
        (b[x]<b[y] || (b[x]==b[y] && (sw[x]<sw[y] || (sw[x]==sw[y] && x<y))))));
}

static void pf_rank(const PC_Real a[8],const PC_Real b[8],const uint16_t sw[8],uint16_t order[8])
{
    uint16_t k,j,key;
    for(k=0U;k<8U;k++) order[k]=k;
    for(k=1U;k<8U;k++) {
        key=order[k];j=k;
        while(j>0U && pf_less(key,order[j-1U],a,b,sw)) {order[j]=order[j-1U];j--;}
        order[j]=key;
    }
}

static PC_Real pf_angle_cost(PC_Real rd,PC_Real rq,const PC_Real dq[2])
{
    PC_Real a;
    if(PC_SQRT(dq[0]*dq[0]+dq[1]*dq[1])<(PC_Real)1e-12) return PC_PI*PC_PI;
    a=PC_ATAN2(rd*dq[1]-rq*dq[0],rd*dq[0]+rq*dq[1]);
    return a*a;
}

uint16_t PC_run_fast(const PC_Config *cfg,const PC_Input *in,PC_Output *out)
{
    PC_Real dq[2],edq[2],dc,up1,low1,theta1,theta2,amp,iref[3],uref[3],udq[2];
    PC_Real lo,hi,budget,minI,spreadLo,spreadHi,gzLo,gzHi;
    uint16_t status,j,k,r,m,n,chosen,pcOff,oi[8],ou[8],mask=0U,cmask=0U,iteration;
    if(!out) return PC_ERR_INPUT;
    pf_output_init(out);
    PC_fast_output_substeps_available=0U;
    PC_fast_output_summaries_available=0U;
    /* Safe output on failure is all-OFF hardware state 0, MATLAB ID 1. */
    out->selected_id=1U;out->pc_off_id=1U;out->status=PC_ERR_INPUT;
    if(!pf_config_valid(cfg)) {out->status=PC_ERR_CONFIG;return out->status;}
    if(!in || in->applied_hw_state>7U || !pf_finite(in->up_V) || !pf_finite(in->low_V) ||
       in->up_V<=(PC_Real)0 || in->low_V<=(PC_Real)0 || !pf_finite(in->theta_rad) ||
       !pf_finite(in->omega_rad_s) || !pf_finite(in->id_ref_A) || !pf_finite(in->iq_ref_A) ||
       !pf_finite(in->fhat_A_s[0]) || !pf_finite(in->fhat_A_s[1])) return out->status;
    for(r=0U;r<3U;r++) if(!pf_finite(in->iabc_A[r]) || !pf_finite(in->eabc_V[r])) return out->status;
    pf_rotation(in->theta_rad,&pf_input_rotation);
    pf_abc_to_dq(in->iabc_A,&pf_input_rotation,dq);
    pf_abc_to_dq(in->eabc_V,&pf_input_rotation,edq);
    pf_plan(cfg,in->theta_rad,in->omega_rad_s,cfg->first_duration_s,&pf_first_plan);
    dc=in->up_V+in->low_V;
    status=pf_interval(cfg,dq,in->up_V,in->low_V,in->applied_hw_state,
        in->fhat_A_s,&pf_first_plan,&out->first_interval,PC_FAST_SUMMARY_ONLY);
    if(status!=PC_OK) {out->status=status;return status;}
    out->idq1_A[0]=out->first_interval.idq_A[0];out->idq1_A[1]=out->first_interval.idq_A[1];
    out->np1_V=out->first_interval.np_V;
    theta1=in->theta_rad+in->omega_rad_s*cfg->first_duration_s;
    theta2=theta1+in->omega_rad_s*cfg->candidate_duration_s;
    up1=(dc-out->np1_V)/(PC_Real)2;low1=(dc+out->np1_V)/(PC_Real)2;
    pf_plan(cfg,theta1,in->omega_rad_s,cfg->candidate_duration_s,&pf_candidate_plan);
    pf_rotation(theta2,&pf_reference_rotation);
    for(j=0U;j<8U;j++) {
        uint16_t hw=PC_id_to_hw((uint16_t)(j+1U));
        PC_Real e0,e1;
        status=pf_interval(cfg,out->idq1_A,up1,low1,hw,in->fhat_A_s,
            &pf_candidate_plan,&out->candidate_interval[j],PC_FAST_SUMMARY_ONLY);
        if(status!=PC_OK) {out->status=status;return status;}
        out->idq2_A[j][0]=out->candidate_interval[j].idq_A[0];
        out->idq2_A[j][1]=out->candidate_interval[j].idq_A[1];
        out->np2_V[j]=out->candidate_interval[j].np_V;
        out->blocked_candidate[j]=out->candidate_interval[j].blocked;
        e0=out->idq2_A[j][0]-in->id_ref_A;e1=out->idq2_A[j][1]-in->iq_ref_A;
        out->gi[j]=e0*e0+e1*e1;out->gu[j]=out->np2_V[j]*out->np2_V[j];
        for(r=0U;r<3U;r++) out->switch_count[j]+=(uint16_t)(((hw>>r)&1U)!=((in->applied_hw_state>>r)&1U));
        if(!pf_finite(out->gi[j]) || !pf_finite(out->gu[j])) {out->status=PC_ERR_NUMERIC;return out->status;}
    }
    pf_rank(out->gi,out->gu,out->switch_count,oi);
    pf_rank(out->gu,out->gi,out->switch_count,ou);
    minI=out->gi[oi[0]];budget=PC_SQRT(minI)+cfg->delta_i_A;
    out->budget_limit_A=budget;
    /* Preserve the reference sqrt(gi) comparisons at the budget boundary.
       Any squared-threshold optimization must retain the cross term
       2*delta*sqrt(bestGi), and recheck float32 equality behavior. */
    for(k=0U;k<3U;k++) if(PC_SQRT(out->gi[oi[k]])<=budget) {
        cmask|=(uint16_t)(1U<<oi[k]);out->current_count++;
    }
    out->current_mask=cmask;m=3U;n=0U;
    for(iteration=0U;iteration<8U;iteration++) {
        mask=0U;n=0U;
        for(k=0U;k<m;k++) if(cmask & (uint16_t)(1U<<ou[k])) {mask|=(uint16_t)(1U<<ou[k]);n++;}
        if(n>=1U && n<=2U) break;
        if(n==0U) {if(m<8U)m++;} else {if(m>1U)m--;}
    }
    if(n<1U || n>2U) {out->status=PC_ERR_INTERSECTION;return out->status;}
    out->intersection_mask=mask;out->intersection_count=n;out->midpoint_prefix=m;
    pcOff=oi[0];
    for(k=0U;k<8U;k++) if(mask & (uint16_t)(1U<<oi[k])) {pcOff=oi[k];break;}
    out->pc_off_id=(uint16_t)(pcOff+1U);
    out->valid=(uint16_t)(in->omega_rad_s>(PC_Real)0 && edq[0]>(PC_Real)1e-9 &&
        up1>(PC_Real)0 && low1>(PC_Real)0);
    out->requested=(uint16_t)(in->zcdc_enable!=0U && in->terminal_enable!=0U);
    amp=PC_SQRT(in->id_ref_A*in->id_ref_A+in->iq_ref_A*in->iq_ref_A);
    if(!pf_finite(amp)){out->status=PC_ERR_NUMERIC;return out->status;}
    udq[0]=in->id_ref_A;udq[1]=in->iq_ref_A;pf_dq_to_abc(udq,&pf_reference_rotation,iref);
    udq[0]=edq[0]-cfg->R_ohm*in->id_ref_A+in->omega_rad_s*cfg->L_H*in->iq_ref_A;
    udq[1]=edq[1]-cfg->R_ohm*in->iq_ref_A-in->omega_rad_s*cfg->L_H*in->id_ref_A;
    /* Finite inputs alone do not guarantee finite derived products. This
       rejects impossible/extreme configurations rather than reporting an
       apparently successful controller with a NaN voltage margin. */
    if(!pf_finite(udq[0]) || !pf_finite(udq[1])){out->status=PC_ERR_NUMERIC;return out->status;}
    pf_dq_to_abc(udq,&pf_reference_rotation,uref);
    lo=-(PC_Real)FLT_MAX;hi=(PC_Real)FLT_MAX;
    for(r=0U;r<3U;r++) {
        PC_Real lower=iref[r]>=(PC_Real)0?(PC_Real)0:-low1;
        PC_Real upper=iref[r]>=(PC_Real)0?up1:(PC_Real)0;
        lo=PC_MAX(lo,lower-uref[r]);hi=PC_MIN(hi,upper-uref[r]);
    }
    out->voltage_margin_V=hi-lo;
    if(!pf_finite(out->voltage_margin_V)){out->status=PC_ERR_NUMERIC;return out->status;}
    out->active=(uint16_t)(out->valid && out->requested && amp>=(PC_Real)0.1 &&
        PC_MIN(PC_ABS(iref[0]),PC_MIN(PC_ABS(iref[1]),PC_ABS(iref[2])))<=amp*PC_SIN(cfg->zero_window_rad) &&
        (out->voltage_margin_V<-(PC_Real)1e-6 || out->first_interval.blocked || out->blocked_candidate[pcOff]));
    chosen=pcOff;
    if(out->active) {
        for(j=0U;j<8U;j++) if(cfg->diagnostic_all_angles || (mask & (uint16_t)(1U<<j)))
            out->gz[j]=pf_angle_cost(in->id_ref_A,in->iq_ref_A,out->idq2_A[j]);
        for(k=0U;k<8U;k++) {j=oi[k];if((mask & (uint16_t)(1U<<j)) && out->gz[j]<out->gz[chosen]) chosen=j;}
    }
    gzLo=out->gz[0];gzHi=out->gz[0];spreadLo=(PC_Real)FLT_MAX;spreadHi=-(PC_Real)FLT_MAX;
    for(j=0U;j<8U;j++) {
        gzLo=PC_MIN(gzLo,out->gz[j]);gzHi=PC_MAX(gzHi,out->gz[j]);
        if(mask & (uint16_t)(1U<<j)) {spreadLo=PC_MIN(spreadLo,out->gz[j]);spreadHi=PC_MAX(spreadHi,out->gz[j]);}
        out->order_i[j]=(uint16_t)(oi[j]+1U);out->order_u[j]=(uint16_t)(ou[j]+1U);
    }
    out->selected_id=(uint16_t)(chosen+1U);out->hw_state=PC_id_to_hw(out->selected_id);
    out->zcdc_diag[0]=(PC_Real)out->valid;out->zcdc_diag[1]=(PC_Real)out->requested;
    out->zcdc_diag[2]=(PC_Real)out->active;out->zcdc_diag[3]=(PC_Real)7;
    out->zcdc_diag[4]=cfg->diagnostic_all_angles?(gzHi-gzLo):(PC_Real)-1;
    out->zcdc_diag[5]=spreadHi-spreadLo;out->zcdc_diag[6]=(PC_Real)out->pc_off_id;
    out->zcdc_diag[7]=(PC_Real)out->selected_id;out->zcdc_diag[8]=(PC_Real)(chosen!=pcOff);
    out->zcdc_diag[9]=out->gz[chosen];out->status=PC_OK;
    PC_fast_output_summaries_available=1U;
    return PC_OK;
}
