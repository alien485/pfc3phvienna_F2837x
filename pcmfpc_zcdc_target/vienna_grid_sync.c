#include "vienna_grid_sync.h"

#ifdef __TI_COMPILER_VERSION__
#pragma CODE_SECTION(vg_finite,"pcmfpc_code")
#pragma CODE_SECTION(vg_wrap,"pcmfpc_code")
#pragma CODE_SECTION(vg_limit,"pcmfpc_code")
#pragma CODE_SECTION(VG_configure,"pcmfpc_code")
#pragma CODE_SECTION(VG_reset,"pcmfpc_code")
#pragma CODE_SECTION(VG_run,"pcmfpc_code")
#endif
#include <math.h>
#include <stddef.h>

#define VG_PI 3.14159265358979323846f
#define VG_TWO_PI 6.28318530717958647692f

/* Bit test remains meaningful with a target relaxed floating-point mode. */
static uint16_t vg_finite(float x)
{
    union { float f; uint32_t u; } v;
    v.f=x;
    return (uint16_t)((v.u & UINT32_C(0x7f800000)) != UINT32_C(0x7f800000));
}
static float vg_wrap(float x)
{
    if(x>=VG_TWO_PI) x-=VG_TWO_PI;
    if(x<0.0f) x+=VG_TWO_PI;
    return x;
}
static float vg_limit(float x,float lo,float hi)
{
    return x<lo?lo:(x>hi?hi:x);
}
uint16_t VG_configure(VG_Config *c,float dt,float hz,float minV)
{
    const float wn=VG_TWO_PI*20.0f;
    if(c==NULL || !vg_finite(dt) || !vg_finite(hz) || !vg_finite(minV) ||
       dt<0.000001f || dt>0.001f || hz<40.0f || hz>70.0f || minV<=0.0f) return 0U;
    c->sample_sec=dt;c->nominal_hz=hz;c->min_magnitude_V=minV;
    c->kp_rad_s=2.0f*0.7071067811865475f*wn;
    c->ki_rad_s2=wn*wn;
    c->omega_min_rad_s=VG_TWO_PI*40.0f;
    c->omega_max_rad_s=VG_TWO_PI*70.0f;
    c->lock_phase_sin_max=0.05f;
    c->lock_samples=(uint16_t)(0.02f/dt+0.5f);
    c->reverse_samples=16U;
    if(c->lock_samples<1U)c->lock_samples=1U;
    return 1U;
}
void VG_reset(VG_State *s)
{
    if(s==NULL)return;
    s->theta_rad=0.0f;s->next_theta_rad=0.0f;s->omega_rad_s=0.0f;
    s->ed_V=0.0f;s->eq_V=0.0f;s->magnitude_V=0.0f;s->frequency_hz=0.0f;
    s->phase_error=0.0f;s->integrator_rad_s=0.0f;
    s->previous_alpha_V=0.0f;s->previous_beta_V=0.0f;
    s->initialized=0U;s->locked=0U;s->faults=VG_FAULT_NONE;
    s->lock_count=0U;s->reverse_count=0U;
}
uint16_t VG_run(const VG_Config *c,VG_State *s,const float v[3])
{
    float alpha,beta,mag,ct,st,error,omega,rotation;
    if(c==NULL || s==NULL || v==NULL)return 0U;
    if(!vg_finite(v[0]) || !vg_finite(v[1]) || !vg_finite(v[2])){
        VG_reset(s);s->faults=VG_FAULT_INVALID;return 0U;
    }
    alpha=(2.0f*v[0]-v[1]-v[2])*(1.0f/3.0f);
    beta=(v[1]-v[2])*0.5773502691896258f;
    mag=sqrtf(alpha*alpha+beta*beta);
    if(!vg_finite(mag) || mag<c->min_magnitude_V){
        VG_reset(s);s->magnitude_V=mag;s->faults=VG_FAULT_LOW_VOLTAGE;return 0U;
    }
    s->faults=VG_FAULT_NONE;s->magnitude_V=mag;
    if(!s->initialized){
        s->theta_rad=vg_wrap(atan2f(beta,alpha));s->initialized=1U;
        s->omega_rad_s=VG_TWO_PI*c->nominal_hz;
    }else{
        s->theta_rad=s->next_theta_rad;
        /* Cross product is positive for the defined a,b,c phase order.
         * Count only a sustained reverse rotation; tiny/noisy samples do not
         * alter the phase-order guard in either direction. */
        rotation=s->previous_alpha_V*beta-s->previous_beta_V*alpha;
        if(rotation < -0.05f*c->sample_sec*VG_TWO_PI*40.0f*mag*mag){
            if(s->reverse_count<c->reverse_samples)s->reverse_count++;
        }else if(rotation > 0.05f*c->sample_sec*VG_TWO_PI*40.0f*mag*mag){
            s->reverse_count=0U;
        }
    }
    ct=cosf(s->theta_rad);st=sinf(s->theta_rad);
    s->ed_V=ct*alpha+st*beta;s->eq_V=-st*alpha+ct*beta;
    error=s->eq_V/mag;s->phase_error=error;
    s->integrator_rad_s+=c->ki_rad_s2*c->sample_sec*error;
    s->integrator_rad_s=vg_limit(s->integrator_rad_s,
        c->omega_min_rad_s-VG_TWO_PI*c->nominal_hz,
        c->omega_max_rad_s-VG_TWO_PI*c->nominal_hz);
    omega=VG_TWO_PI*c->nominal_hz+s->integrator_rad_s+c->kp_rad_s*error;
    if(omega<c->omega_min_rad_s || omega>c->omega_max_rad_s)
        s->faults|=VG_FAULT_FREQUENCY;
    if(s->reverse_count>=c->reverse_samples)s->faults|=VG_FAULT_REVERSE_SEQUENCE;
    s->omega_rad_s=vg_limit(omega,c->omega_min_rad_s,c->omega_max_rad_s);
    s->frequency_hz=s->omega_rad_s/VG_TWO_PI;
    if(s->faults==VG_FAULT_NONE && s->ed_V>0.0f &&
       fabsf(error)<c->lock_phase_sin_max){
        if(s->lock_count<c->lock_samples)s->lock_count++;
        s->locked=(uint16_t)(s->lock_count>=c->lock_samples);
    }else{s->lock_count=0U;s->locked=0U;}
    s->next_theta_rad=vg_wrap(s->theta_rad+s->omega_rad_s*c->sample_sec);
    s->previous_alpha_V=alpha;s->previous_beta_V=beta;
    return (uint16_t)(s->faults==VG_FAULT_NONE);
}
