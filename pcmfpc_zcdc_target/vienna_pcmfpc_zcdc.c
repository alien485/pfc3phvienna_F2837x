/* Mode 7 PCMFPC-ZCDC; SI units; no TI register or allocation dependency.
   Reference: pcmfpc_zcdc/vienna_pcmfpc_zcdc_complete.m, SHA256
   A77EA4DEA3267D82D444EFBF4A7437A39E15B7C48928931F40D6476E67503F4A.
   The two explicit intervals replace MATLAB's equal Ts only when configured.
   Upper/lower bus voltage magnitudes are positive; np = Ulow - Uup.
   Neither root optimization nor terminal disable restores weighted FCS. */
#include "vienna_pcmfpc_zcdc.h"
#include <math.h>
#include <string.h>
#include <float.h>

#ifdef __TI_COMPILER_VERSION__
/* Target linker and Device_init copy pcmfpc_code from FLASH to CPU1 RAM.
   Keep called helpers with the controller; do not assume O2 inlines loops. */
#pragma CODE_SECTION(PC_run, "pcmfpc_code")
#pragma CODE_SECTION(PC_predict_interval, "pcmfpc_code")
#pragma CODE_SECTION(PC_abc_to_dq, "pcmfpc_code")
#pragma CODE_SECTION(PC_dq_to_abc, "pcmfpc_code")
#pragma CODE_SECTION(PC_id_to_hw, "pcmfpc_code")
#pragma CODE_SECTION(PC_hw_to_id, "pcmfpc_code")
#pragma CODE_SECTION(pc_finite, "pcmfpc_code")
#pragma CODE_SECTION(pc_config_valid, "pcmfpc_code")
#pragma CODE_SECTION(pc_projection, "pcmfpc_code")
#pragma CODE_SECTION(pc_root, "pcmfpc_code")
#pragma CODE_SECTION(pc_less, "pcmfpc_code")
#pragma CODE_SECTION(pc_rank, "pcmfpc_code")
#pragma CODE_SECTION(pc_angle_cost, "pcmfpc_code")
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

static uint16_t pc_finite(PC_Real x)
{
    /* Bit test remains meaningful with TI relaxed floating-point options.
       Inputs intentionally have a float32 representable finite domain. */
    union { float f; uint32_t u; } v;
    v.f = (float)x;
    return (uint16_t)((v.u & (uint32_t)0x7f800000UL) != (uint32_t)0x7f800000UL);
}

void PC_default_config(PC_Config *cfg)
{
    cfg->first_duration_s = (PC_Real)0.000010;
    cfg->candidate_duration_s = (PC_Real)0.000020;
    cfg->L_H = (PC_Real)0.003;
    cfg->R_ohm = (PC_Real)0.2;
    cfg->C_half_F = (PC_Real)0.000440;
    cfg->delta_i_A = (PC_Real)0.02;
    cfg->zero_window_rad = PC_PI / (PC_Real)18;
    /* Reference default. Piecewise is explicit opt-in until its near-zero
       float32 phase-cost differences have been accepted for the application. */
    cfg->root_method = PC_ROOT_BISECTION32;
    cfg->diagnostic_all_angles = 1U;
}

void PC_abc_to_dq(const PC_Real abc[3], PC_Real theta, PC_Real dq[2])
{
    PC_Real a = ((PC_Real)2*abc[0]-abc[1]-abc[2])/(PC_Real)3;
    PC_Real b = (abc[1]-abc[2])*PC_C;
    PC_Real ct=PC_COS(theta), st=PC_SIN(theta);
    dq[0]=ct*a+st*b;
    dq[1]=-st*a+ct*b;
}

void PC_dq_to_abc(const PC_Real dq[2], PC_Real theta, PC_Real abc[3])
{
    PC_Real ct=PC_COS(theta), st=PC_SIN(theta);
    PC_Real a=ct*dq[0]-st*dq[1], b=st*dq[0]+ct*dq[1];
    abc[0]=a;
    abc[1]=-a/(PC_Real)2+PC_SQRT3_HALF*b;
    abc[2]=-a/(PC_Real)2-PC_SQRT3_HALF*b;
}

uint16_t PC_id_to_hw(uint16_t id)
{
    uint16_t x;
    if(id<1U || id>8U) return 0U;
    x=(uint16_t)(id-1U);
    return (uint16_t)(((x&4U)>>2U) | (x&2U) | ((x&1U)<<2U));
}

uint16_t PC_hw_to_id(uint16_t hw)
{
    if(hw>7U) return 0U;
    return (uint16_t)(1U+((hw&1U)<<2U)+(hw&2U)+((hw&4U)>>2U));
}

static uint16_t pc_config_valid(const PC_Config *c)
{
    return (uint16_t)(c && pc_finite(c->L_H) && c->L_H>(PC_Real)0 &&
        pc_finite(c->C_half_F) && c->C_half_F>(PC_Real)0 &&
        pc_finite(c->first_duration_s) && c->first_duration_s>(PC_Real)0 &&
        pc_finite(c->candidate_duration_s) && c->candidate_duration_s>(PC_Real)0 &&
        pc_finite(c->R_ohm) && c->R_ohm>=(PC_Real)0 &&
        pc_finite(c->delta_i_A) && c->delta_i_A>=(PC_Real)0 &&
        pc_finite(c->zero_window_rad) && c->zero_window_rad>(PC_Real)0 &&
        c->zero_window_rad<PC_PI/(PC_Real)6 && c->root_method<=PC_ROOT_PIECEWISE);
}

static PC_Real pc_projection(const PC_Real q[3], uint16_t hw,
    PC_Real c, PC_Real up, PC_Real low, PC_Real mu, PC_Real next[3])
{
    uint16_t r;
    PC_Real sum=(PC_Real)0;
    for(r=0U;r<3U;r++) {
        PC_Real z=q[r]+c*mu;
        if(hw & (uint16_t)(1U<<r)) next[r]=z;
        else next[r]=PC_MAX(z-c*up,(PC_Real)0)+PC_MIN(z+c*low,(PC_Real)0);
        sum+=next[r];
    }
    return sum;
}

/* H(mu) is continuous piecewise affine. OFF phase breakpoints are
   -Ulow-q/c and Uup-q/c; ON contributes slope c everywhere. There are at most
   six internal breakpoints, hence at most seven affine segments. A flat zero
   segment has nonunique mu but identical projected currents. The piecewise
   solver performs bounded sorting and no iterative root search. It solves
   the SAME ideal diode model; float32 decision ties are separately tested. */
static uint16_t pc_root(const PC_Real q[3],uint16_t hw,PC_Real c,
    PC_Real up,PC_Real low,uint16_t method,PC_Real *mu,PC_Real *width,
    uint16_t *iterations,PC_Real next[3],PC_Real *residual)
{
    PC_Real lo=-low,hi=up,hl,hh,work[3];
    PC_Real qscale=PC_ABS(q[0])+PC_ABS(q[1])+PC_ABS(q[2])+c*(up+low);
    PC_Real tolerance=(PC_Real)32*PC_EPS*PC_MAX(qscale,(PC_Real)1);
    uint16_t k;
    hl=pc_projection(q,hw,c,up,low,lo,work);
    hh=pc_projection(q,hw,c,up,low,hi,work);
    if(!pc_finite(hl) || !pc_finite(hh) || hl>tolerance || hh<-tolerance)
        return PC_ERR_ROOT;
    *iterations=0U;
    if(method==PC_ROOT_BISECTION32) {
        for(k=0U;k<32U;k++) {
            PC_Real mid=(lo+hi)/(PC_Real)2;
            PC_Real h=pc_projection(q,hw,c,up,low,mid,work);
            /* Match MATLAB's fixed 32 evaluations, including float stagnation. */
            if(h>(PC_Real)0) hi=mid; else lo=mid;
            *iterations=(uint16_t)(k+1U);
        }
        *mu=(lo+hi)/(PC_Real)2;
        *width=hi-lo;
    } else {
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
            PC_Real hb=pc_projection(q,hw,c,up,low,b,work);
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
    *residual=pc_projection(q,hw,c,up,low,*mu,next);
    /* Finite bisection has a nonzero numerical bracket even in double.
       H has slope <=3*c, so its midpoint residual is bounded by 1.5*c*W. */
    if(method==PC_ROOT_BISECTION32) tolerance+=(PC_Real)1.5*c*(*width);
    if(!pc_finite(*residual) || PC_ABS(*residual)>tolerance) return PC_ERR_ROOT;
    return PC_OK;
}

uint16_t PC_predict_interval(const PC_Config *cfg,const PC_Real dq0[2],
    PC_Real up,PC_Real low,uint16_t hw,PC_Real theta,PC_Real omega,
    const PC_Real f[2],PC_Real duration,PC_Interval *out)
{
    PC_Real dq[2],np=low-up,dc=up+low,h=duration/(PC_Real)2,c;
    uint16_t step,r,status;
    if(!out) return PC_ERR_INPUT;
    memset(out,0,sizeof(*out));
    if(!pc_config_valid(cfg)) return PC_ERR_CONFIG;
    if(!dq0 || !f || hw>7U || !pc_finite(duration) || duration<=(PC_Real)0 ||
       !pc_finite(up) || !pc_finite(low) || up<=(PC_Real)0 || low<=(PC_Real)0 ||
       !pc_finite(dq0[0]) || !pc_finite(dq0[1]) || !pc_finite(f[0]) ||
       !pc_finite(f[1]) || !pc_finite(theta) || !pc_finite(omega)) return PC_ERR_INPUT;
    c=h/cfg->L_H;dq[0]=dq0[0];dq[1]=dq0[1];
    if(!pc_finite(c) || c<=(PC_Real)0 || !pc_finite(dc)) return PC_ERR_NUMERIC;
    for(step=0U;step<2U;step++) {
        PC_Substep *s=&out->substep[step];
        PC_Real th0=theta+(PC_Real)step*omega*h;
        PC_Real th1=theta+(PC_Real)(step+1U)*omega*h;
        PC_Real free_dq[2],pole_dq[2],neutral=(PC_Real)0;
        up=(dc-np)/(PC_Real)2;low=(dc+np)/(PC_Real)2;
        if(up<=(PC_Real)0 || low<=(PC_Real)0 || !pc_finite(up) || !pc_finite(low))
            return PC_ERR_MIDPOINT;
        PC_dq_to_abc(dq,th0,s->old_abc_A);
        free_dq[0]=dq[0]+h*f[0];free_dq[1]=dq[1]+h*f[1];
        PC_dq_to_abc(free_dq,th1,s->free_abc_A);
        status=pc_root(s->free_abc_A,hw,c,up,low,cfg->root_method,&s->mu_V,
            &s->root_bracket_width_V,&s->root_iterations,s->next_abc_A,&s->root_residual_A);
        if(status!=PC_OK) return status;
        for(r=0U;r<3U;r++) {
            PC_Real z=s->free_abc_A[r]+c*s->mu_V;
            s->pole_abc_V[r]=(z-s->next_abc_A[r])/c;
            if(hw & (uint16_t)(1U<<r)) {
                /* ON pole is physically zero, avoiding subtraction residue. */
                s->pole_abc_V[r]=(PC_Real)0;
                neutral+=(s->old_abc_A[r]+s->next_abc_A[r])/(PC_Real)2;
            } else if(PC_ABS(s->next_abc_A[r])<(PC_Real)1e-12) s->blocked=1U;
        }
        out->blocked=(uint16_t)(out->blocked || s->blocked);
        PC_abc_to_dq(s->pole_abc_V,th1,pole_dq);
        out->u_integral_dq_V_s[0]+=h*pole_dq[0];
        out->u_integral_dq_V_s[1]+=h*pole_dq[1];
        PC_abc_to_dq(s->next_abc_A,th1,dq);
        np+=h/cfg->C_half_F*neutral;
        s->idq_A[0]=dq[0];s->idq_A[1]=dq[1];s->np_V=np;s->theta_end_rad=th1;
        if(!pc_finite(np) || !pc_finite(dq[0]) || !pc_finite(dq[1])) return PC_ERR_NUMERIC;
    }
    out->idq_A[0]=dq[0];out->idq_A[1]=dq[1];out->np_V=np;
    if(PC_ABS(np)>=dc) return PC_ERR_MIDPOINT;
    return PC_OK;
}

static uint16_t pc_less(uint16_t x,uint16_t y,const PC_Real a[8],
    const PC_Real b[8],const uint16_t sw[8])
{
    return (uint16_t)(a[x]<a[y] || (a[x]==a[y] &&
        (b[x]<b[y] || (b[x]==b[y] && (sw[x]<sw[y] || (sw[x]==sw[y] && x<y))))));
}

static void pc_rank(const PC_Real a[8],const PC_Real b[8],const uint16_t sw[8],uint16_t order[8])
{
    uint16_t k,j,key;
    for(k=0U;k<8U;k++) order[k]=k;
    for(k=1U;k<8U;k++) {
        key=order[k];j=k;
        while(j>0U && pc_less(key,order[j-1U],a,b,sw)) {order[j]=order[j-1U];j--;}
        order[j]=key;
    }
}

static PC_Real pc_angle_cost(PC_Real rd,PC_Real rq,const PC_Real dq[2])
{
    PC_Real a;
    if(PC_SQRT(dq[0]*dq[0]+dq[1]*dq[1])<(PC_Real)1e-12) return PC_PI*PC_PI;
    a=PC_ATAN2(rd*dq[1]-rq*dq[0],rd*dq[0]+rq*dq[1]);
    return a*a;
}

uint16_t PC_run(const PC_Config *cfg,const PC_Input *in,PC_Output *out)
{
    PC_Real dq[2],edq[2],dc,up1,low1,theta1,theta2,amp,iref[3],uref[3],udq[2];
    PC_Real lo,hi,budget,minI,spreadLo,spreadHi,gzLo,gzHi;
    uint16_t status,j,k,r,m,n,chosen,pcOff,oi[8],ou[8],mask=0U,cmask=0U,iteration;
    if(!out) return PC_ERR_INPUT;
    memset(out,0,sizeof(*out));
    /* Safe output on failure is all-OFF hardware state 0, MATLAB ID 1. */
    out->selected_id=1U;out->pc_off_id=1U;out->status=PC_ERR_INPUT;
    if(!pc_config_valid(cfg)) {out->status=PC_ERR_CONFIG;return out->status;}
    if(!in || in->applied_hw_state>7U || !pc_finite(in->up_V) || !pc_finite(in->low_V) ||
       in->up_V<=(PC_Real)0 || in->low_V<=(PC_Real)0 || !pc_finite(in->theta_rad) ||
       !pc_finite(in->omega_rad_s) || !pc_finite(in->id_ref_A) || !pc_finite(in->iq_ref_A) ||
       !pc_finite(in->fhat_A_s[0]) || !pc_finite(in->fhat_A_s[1])) return out->status;
    for(r=0U;r<3U;r++) if(!pc_finite(in->iabc_A[r]) || !pc_finite(in->eabc_V[r])) return out->status;
    PC_abc_to_dq(in->iabc_A,in->theta_rad,dq);
    PC_abc_to_dq(in->eabc_V,in->theta_rad,edq);
    dc=in->up_V+in->low_V;
    status=PC_predict_interval(cfg,dq,in->up_V,in->low_V,in->applied_hw_state,
        in->theta_rad,in->omega_rad_s,in->fhat_A_s,cfg->first_duration_s,&out->first_interval);
    if(status!=PC_OK) {out->status=status;return status;}
    out->idq1_A[0]=out->first_interval.idq_A[0];out->idq1_A[1]=out->first_interval.idq_A[1];
    out->np1_V=out->first_interval.np_V;
    theta1=in->theta_rad+in->omega_rad_s*cfg->first_duration_s;
    theta2=theta1+in->omega_rad_s*cfg->candidate_duration_s;
    up1=(dc-out->np1_V)/(PC_Real)2;low1=(dc+out->np1_V)/(PC_Real)2;
    for(j=0U;j<8U;j++) {
        uint16_t hw=PC_id_to_hw((uint16_t)(j+1U));
        PC_Real e0,e1;
        status=PC_predict_interval(cfg,out->idq1_A,up1,low1,hw,theta1,in->omega_rad_s,
            in->fhat_A_s,cfg->candidate_duration_s,&out->candidate_interval[j]);
        if(status!=PC_OK) {out->status=status;return status;}
        out->idq2_A[j][0]=out->candidate_interval[j].idq_A[0];
        out->idq2_A[j][1]=out->candidate_interval[j].idq_A[1];
        out->np2_V[j]=out->candidate_interval[j].np_V;
        out->blocked_candidate[j]=out->candidate_interval[j].blocked;
        e0=out->idq2_A[j][0]-in->id_ref_A;e1=out->idq2_A[j][1]-in->iq_ref_A;
        out->gi[j]=e0*e0+e1*e1;out->gu[j]=out->np2_V[j]*out->np2_V[j];
        for(r=0U;r<3U;r++) out->switch_count[j]+=(uint16_t)(((hw>>r)&1U)!=((in->applied_hw_state>>r)&1U));
        if(!pc_finite(out->gi[j]) || !pc_finite(out->gu[j])) {out->status=PC_ERR_NUMERIC;return out->status;}
    }
    pc_rank(out->gi,out->gu,out->switch_count,oi);
    pc_rank(out->gu,out->gi,out->switch_count,ou);
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
    udq[0]=in->id_ref_A;udq[1]=in->iq_ref_A;PC_dq_to_abc(udq,theta2,iref);
    udq[0]=edq[0]-cfg->R_ohm*in->id_ref_A+in->omega_rad_s*cfg->L_H*in->iq_ref_A;
    udq[1]=edq[1]-cfg->R_ohm*in->iq_ref_A-in->omega_rad_s*cfg->L_H*in->id_ref_A;
    PC_dq_to_abc(udq,theta2,uref);
    lo=-(PC_Real)FLT_MAX;hi=(PC_Real)FLT_MAX;
    for(r=0U;r<3U;r++) {
        PC_Real lower=iref[r]>=(PC_Real)0?(PC_Real)0:-low1;
        PC_Real upper=iref[r]>=(PC_Real)0?up1:(PC_Real)0;
        lo=PC_MAX(lo,lower-uref[r]);hi=PC_MIN(hi,upper-uref[r]);
    }
    out->voltage_margin_V=hi-lo;
    out->active=(uint16_t)(out->valid && out->requested && amp>=(PC_Real)0.1 &&
        PC_MIN(PC_ABS(iref[0]),PC_MIN(PC_ABS(iref[1]),PC_ABS(iref[2])))<=amp*PC_SIN(cfg->zero_window_rad) &&
        (out->voltage_margin_V<-(PC_Real)1e-6 || out->first_interval.blocked || out->blocked_candidate[pcOff]));
    chosen=pcOff;
    if(out->active) {
        for(j=0U;j<8U;j++) if(cfg->diagnostic_all_angles || (mask & (uint16_t)(1U<<j)))
            out->gz[j]=pc_angle_cost(in->id_ref_A,in->iq_ref_A,out->idq2_A[j]);
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
    return PC_OK;
}
