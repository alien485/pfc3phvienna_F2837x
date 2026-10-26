#include "vienna_pcmfpc_observer.h"
#include "vienna_pcmfpc_fast.h"

#ifdef __TI_COMPILER_VERSION__
#pragma CODE_SECTION(VO_configure,"pcmfpc_code")
#pragma CODE_SECTION(VO_reset,"pcmfpc_code")
#pragma CODE_SECTION(vo_fail,"pcmfpc_code")
#pragma CODE_SECTION(VO_update_delta,"pcmfpc_code")
#pragma CODE_SECTION(VO_integrate_pole_segment,"pcmfpc_code")
#pragma CODE_SECTION(VO_reconstruct,"pcmfpc_code")
#pragma FUNC_ALWAYS_INLINE(vo_finite)
#endif
#include <math.h>
#include <stddef.h>

static uint16_t vo_finite(float x)
{
    union { float f; uint32_t u; } v;
    v.f=x;
    return (uint16_t)((v.u & UINT32_C(0x7f800000)) != UINT32_C(0x7f800000));
}
uint16_t VO_configure(VO_Config *c,float dt,float L,float bandwidth)
{
    float rho,t;
    if(c==NULL || !vo_finite(dt) || !vo_finite(L) || !vo_finite(bandwidth) ||
       dt<0.0000001f || dt>0.001f || L<=0.0f || bandwidth<=0.0f)return 0U;
    rho=expf(-bandwidth*dt);t=1.0f-rho;
    c->sample_sec=dt;c->inductance_H=L;c->omega_eso_rad_s=bandwidth;
    c->k_current=1.0f-rho*rho;c->k_disturbance=t*t/dt;
    return 1U;
}
void VO_reset(VO_State *s)
{
    uint16_t k;
    if(s==NULL)return;
    for(k=0U;k<2U;k++){
        s->i_hat_A[k]=0.0f;s->f_hat_A_s[k]=0.0f;s->innovation_A[k]=0.0f;
    }
    s->last_sequence=0U;s->initialized=0U;s->valid=0U;
    s->source=VO_SOURCE_NONE;s->faults=VO_FAULT_NONE;
}
static uint16_t vo_fail(VO_State *s,uint16_t fault)
{
    VO_reset(s);s->faults=fault;return 0U;
}
uint16_t VO_update_delta(const VO_Config *c,VO_State *s,
    const float current[2],const float grid[2],const float delta[2],
    uint32_t sequence,uint16_t source)
{
    uint16_t k;
    float nextI[2],nextF[2],innovation[2],prior;
    if(c==NULL || s==NULL || current==NULL || grid==NULL)return 0U;
    if(!vo_finite(c->sample_sec) || !vo_finite(c->inductance_H) ||
       !vo_finite(c->k_current) || !vo_finite(c->k_disturbance) ||
       c->sample_sec<=0.0f || c->inductance_H<=0.0f ||
       (source!=VO_SOURCE_MEASURED_INTEGRAL && source!=VO_SOURCE_MODEL_RECONSTRUCTED))
        return vo_fail(s,VO_FAULT_INVALID);
    for(k=0U;k<2U;k++)if(!vo_finite(current[k]) || !vo_finite(grid[k]))
        return vo_fail(s,VO_FAULT_INVALID);
    if(!s->initialized){
        for(k=0U;k<2U;k++){
            nextF[k]=grid[k]/c->inductance_H;
            if(!vo_finite(nextF[k]))return vo_fail(s,VO_FAULT_INVALID);
        }
        for(k=0U;k<2U;k++){
            s->i_hat_A[k]=current[k];s->f_hat_A_s[k]=nextF[k];
            s->innovation_A[k]=0.0f;
        }
        s->last_sequence=sequence;s->initialized=1U;s->valid=1U;
        s->source=source;s->faults=VO_FAULT_NONE;return 1U;
    }
    /* Do not silently bridge a missing interval or change the definition of
     * the known input while retaining the old disturbance history. */
    if((uint32_t)(sequence-s->last_sequence)!=UINT32_C(1) || source!=s->source)
        return vo_fail(s,VO_FAULT_SEQUENCE);
    if(delta==NULL)return vo_fail(s,VO_FAULT_INTERVAL);
    for(k=0U;k<2U;k++){
        if(!vo_finite(delta[k]))return vo_fail(s,VO_FAULT_INVALID);
        prior=s->i_hat_A[k]-delta[k]/c->inductance_H+c->sample_sec*s->f_hat_A_s[k];
        innovation[k]=current[k]-prior;
        nextI[k]=prior+c->k_current*innovation[k];
        nextF[k]=s->f_hat_A_s[k]+c->k_disturbance*innovation[k];
        if(!vo_finite(nextI[k]) || !vo_finite(nextF[k]))return vo_fail(s,VO_FAULT_INVALID);
    }
    for(k=0U;k<2U;k++){
        s->i_hat_A[k]=nextI[k];s->f_hat_A_s[k]=nextF[k];s->innovation_A[k]=innovation[k];
    }
    s->last_sequence=sequence;s->valid=1U;s->faults=VO_FAULT_NONE;return 1U;
}
void VO_integrate_pole_segment(const float pole[3],float theta,float omega,
                               float dt,float integral[2])
{
    float alpha,beta,x,x2,sinc,ct,st,gain;
    alpha=(2.0f*pole[0]-pole[1]-pole[2])*(1.0f/3.0f);
    beta=(pole[1]-pole[2])*0.5773502691896258f;
    x=0.5f*omega*dt;x2=x*x;
    /* Exact integral for constant alpha/beta and omega. Small-angle series
     * avoids cancellation or 0/0 at zero rotational frequency. */
    sinc=fabsf(x)<0.001f?(1.0f-x2*(1.0f/6.0f)+x2*x2*(1.0f/120.0f)):sinf(x)/x;
    ct=cosf(theta+x);st=sinf(theta+x);gain=dt*sinc;
    integral[0]=gain*(ct*alpha+st*beta);
    integral[1]=gain*(-st*alpha+ct*beta);
}
uint16_t VO_reconstruct(const PC_Config *cfg,const VO_ReconstructInput *in,
                       VO_ReconstructOutput *out)
{
    PC_Real dq[2],fhat[2],up,low,theta,omega,duration[2],dc;
    uint16_t gates[2],segment,k,step,status;
    PC_Interval interval;
    float dt,thetaStep,pole[3],integral[2];
    if(out==NULL)return 0U;
    for(k=0U;k<2U;k++){
        out->delta_u_dq_V_s[k]=0.0f;out->endpoint_quadrature_dq_V_s[k]=0.0f;
        out->model_end_idq_A[k]=0.0f;
    }
    out->model_end_n_V=0.0f;out->duration_sec=0.0f;out->sequence=0U;
    out->valid=0U;out->blocked=0U;out->source=VO_SOURCE_MODEL_RECONSTRUCTED;
    out->faults=VO_FAULT_INVALID;
    if(cfg==NULL || in==NULL)return 0U;
    if(!vo_finite(in->up_V) || !vo_finite(in->low_V) || in->up_V<=0.0f || in->low_V<=0.0f ||
       !vo_finite(in->theta_start_rad) || !vo_finite(in->omega_rad_s) ||
       !vo_finite(in->duration_before_sec) || !vo_finite(in->duration_after_sec) ||
       in->duration_before_sec<0.0f || in->duration_after_sec<0.0f ||
       in->duration_before_sec+in->duration_after_sec<=0.0f ||
       in->duration_before_sec+in->duration_after_sec>0.001f ||
       in->gate_before_hw>7U || in->gate_after_hw>7U)return 0U;
    for(k=0U;k<2U;k++){
        if(!vo_finite(in->idq_start_A[k]) || !vo_finite(in->fhat_A_s[k]))return 0U;
        dq[k]=(PC_Real)in->idq_start_A[k];fhat[k]=(PC_Real)in->fhat_A_s[k];
    }
    up=(PC_Real)in->up_V;low=(PC_Real)in->low_V;dc=up+low;
    theta=(PC_Real)in->theta_start_rad;omega=(PC_Real)in->omega_rad_s;
    duration[0]=(PC_Real)in->duration_before_sec;duration[1]=(PC_Real)in->duration_after_sec;
    gates[0]=in->gate_before_hw;gates[1]=in->gate_after_hw;
    for(segment=0U;segment<2U;segment++){
        if(duration[segment]<=0.0f)continue;
        /* Fast piecewise prediction must provide actual substep pole values:
         * summary-only output is never accepted for executed-gate DeltaU. */
        if(cfg->root_method==PC_ROOT_PIECEWISE)
            status=PC_fast_predict_interval(cfg,dq,up,low,gates[segment],theta,omega,
                fhat,duration[segment],&interval,PC_FAST_FULL_SUBSTEPS);
        else
            status=PC_predict_interval(cfg,dq,up,low,gates[segment],theta,omega,
                fhat,duration[segment],&interval);
        if(status!=PC_OK){out->faults=VO_FAULT_RECONSTRUCTION;return 0U;}
        dt=(float)duration[segment]*0.5f;
        for(step=0U;step<2U;step++){
            thetaStep=(float)theta+(float)step*(float)omega*dt;
            for(k=0U;k<3U;k++)pole[k]=(float)interval.substep[step].pole_abc_V[k];
            VO_integrate_pole_segment(pole,thetaStep,(float)omega,dt,integral);
            for(k=0U;k<2U;k++)out->delta_u_dq_V_s[k]+=integral[k];
        }
        for(k=0U;k<2U;k++){
            out->endpoint_quadrature_dq_V_s[k]+=(float)interval.u_integral_dq_V_s[k];
            dq[k]=interval.idq_A[k];
        }
        out->blocked|=interval.blocked;
        theta+=omega*duration[segment];up=(dc-interval.np_V)*0.5f;low=(dc+interval.np_V)*0.5f;
    }
    for(k=0U;k<2U;k++)out->model_end_idq_A[k]=(float)dq[k];
    out->model_end_n_V=(float)(low-up);
    out->duration_sec=in->duration_before_sec+in->duration_after_sec;
    out->sequence=in->sequence;out->faults=VO_FAULT_NONE;out->valid=1U;
    return 1U;
}
