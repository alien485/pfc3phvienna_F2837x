#include "../vienna_pcmfpc_observer.h"
#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <string.h>

static double maxd(double a,double b){return a>b?a:b;}
/* Use the unchanged readable interval predictor for the complete executed
 * gate history. The optimized observer must retain projected pole data; a
 * CONTROL_ONLY zero placeholder would fail this nonzero-integral check. */
static void reference_segments(const PC_Config *cfg,const VO_ReconstructInput *in,float deltaU[2],float endpoint[2])
{
    PC_Real dq[2]={in->idq_start_A[0],in->idq_start_A[1]};
    PC_Real f[2]={in->fhat_A_s[0],in->fhat_A_s[1]};
    PC_Real up=in->up_V,low=in->low_V,dc=up+low,theta=in->theta_start_rad;
    const float duration[2]={in->duration_before_sec,in->duration_after_sec};
    const uint16_t gate[2]={in->gate_before_hw,in->gate_after_hw};
    PC_Interval interval;unsigned segment,k,step;float pole[3],integral[2],dt;
    deltaU[0]=deltaU[1]=0.0f;
    for(segment=0;segment<2;segment++){
        assert(PC_predict_interval(cfg,dq,up,low,gate[segment],theta,in->omega_rad_s,f,duration[segment],&interval)==PC_OK);
        dt=duration[segment]*0.5f;
        for(step=0;step<2;step++){
            for(k=0;k<3;k++)pole[k]=interval.substep[step].pole_abc_V[k];
            VO_integrate_pole_segment(pole,(float)theta+(float)step*in->omega_rad_s*dt,in->omega_rad_s,dt,integral);
            for(k=0;k<2;k++)deltaU[k]+=integral[k];
        }
        dq[0]=interval.idq_A[0];dq[1]=interval.idq_A[1];
        theta+=in->omega_rad_s*duration[segment];
        up=(dc-interval.np_V)*0.5f;low=(dc+interval.np_V)*0.5f;
    }
    endpoint[0]=dq[0];endpoint[1]=dq[1];
}
int main(void)
{
    VO_Config c;VO_State s;PC_Config pc;
    VO_ReconstructInput in;VO_ReconstructOutput out;
    float i[2],e[2]={80.0f,0.0f},du[2],u[3]={85.0f,-80.0f,0.0f};
    float integral[2],zeroRot[2];
    double ih[2],fh[2],cum[2]={0.0,0.0},previous[2]={0.0,0.0};
    double rho,ki,kf,prior,innovation,maxI=0.0,maxF=0.0,delta,angle;
    double numerical[2]={0.0,0.0},alpha,beta,dt;
    unsigned k,j,nonzeroIntegral=0;uint16_t hw,method;float expectedDelta[2],expectedEnd[2];
    assert(VO_configure(&c,20e-6f,0.003f,3141.592653589793f));VO_reset(&s);
    rho=exp(-(double)c.omega_eso_rad_s*(double)c.sample_sec);
    ki=1.0-rho*rho;kf=(1.0-rho)*(1.0-rho)/(double)c.sample_sec;
    i[0]=1.0f;i[1]=0.2f;
    assert(VO_update_delta(&c,&s,i,e,NULL,0,VO_SOURCE_MEASURED_INTEGRAL));
    ih[0]=i[0];ih[1]=i[1];fh[0]=(double)e[0]/c.inductance_H;fh[1]=0.0;
    assert(s.innovation_A[0]==0.0f && s.innovation_A[1]==0.0f);
    for(k=1;k<10000;k++){
        i[0]=(float)(1.0+0.3*sin(k*0.003));i[1]=(float)(0.2*cos(k*0.007));
        du[0]=(float)(0.0015+0.0003*cos(k*0.005));
        du[1]=(float)(0.0001*sin(k*0.009));
        assert(VO_update_delta(&c,&s,i,e,du,k,VO_SOURCE_MEASURED_INTEGRAL));
        for(j=0;j<2;j++){
            cum[j]+=(double)du[j];delta=cum[j]-previous[j];previous[j]=cum[j];
            prior=ih[j]-delta/(double)c.inductance_H+(double)c.sample_sec*fh[j];
            innovation=(double)i[j]-prior;
            ih[j]=prior+ki*innovation;fh[j]+=kf*innovation;
            maxI=maxd(maxI,fabs((double)s.i_hat_A[j]-ih[j]));
            maxF=maxd(maxF,fabs((double)s.f_hat_A_s[j]-fh[j]));
        }
    }
    assert(maxI<2e-5);assert(maxF<0.3);
    printf("deltaU_vs_independent_cumulative_double_oracle max_i_A=%.9g max_f_A_s=%.9g\n",maxI,maxF);
    assert(!VO_update_delta(&c,&s,i,e,du,9999,VO_SOURCE_MEASURED_INTEGRAL));
    assert(s.faults==VO_FAULT_SEQUENCE && !s.initialized);
    assert(VO_update_delta(&c,&s,i,e,NULL,UINT32_MAX,VO_SOURCE_MEASURED_INTEGRAL));
    assert(VO_update_delta(&c,&s,i,e,du,0,VO_SOURCE_MEASURED_INTEGRAL));
    assert(!VO_update_delta(&c,&s,i,e,du,1,VO_SOURCE_MODEL_RECONSTRUCTED));
    assert(s.faults==VO_FAULT_SEQUENCE);
    VO_reset(&s);i[0]=NAN;assert(!VO_update_delta(&c,&s,i,e,NULL,2,VO_SOURCE_MEASURED_INTEGRAL));
    i[0]=1.0f;assert(s.faults==VO_FAULT_INVALID);
    /* An independent midpoint quadrature verifies the analytical rotating
     * integral, including a zero-omega limit. */
    VO_integrate_pole_segment(u,0.3f,314.159265f,20e-6f,integral);
    alpha=(2.0*(double)u[0]-u[1]-u[2])/3.0;beta=((double)u[1]-u[2])/sqrt(3.0);
    dt=(double)20e-6f/20000.0;
    for(k=0;k<20000;k++){
        angle=(double)0.3f+(double)314.159265f*((double)k+0.5)*dt;
        numerical[0]+=dt*(cos(angle)*alpha+sin(angle)*beta);
        numerical[1]+=dt*(-sin(angle)*alpha+cos(angle)*beta);
    }
    assert(fabs(integral[0]-numerical[0])<3e-10);
    assert(fabs(integral[1]-numerical[1])<3e-10);
    VO_integrate_pole_segment(u,0.3f,0.0f,20e-6f,zeroRot);
    assert(fabs((double)zeroRot[0]-20e-6*(cos((double)0.3f)*alpha+sin((double)0.3f)*beta))<3e-10);
    printf("analytic_rotation_vs_20000_midpoint_integral error_V_s=[%.9g,%.9g]\n",
           fabs(integral[0]-numerical[0]),fabs(integral[1]-numerical[1]));
    PC_default_config(&pc);
    memset(&in,0,sizeof(in));in.idq_start_A[0]=2.0f;in.fhat_A_s[0]=25000.0f;
    in.up_V=85.0f;in.low_V=85.0f;in.theta_start_rad=0.4f;in.omega_rad_s=314.159265f;
    in.duration_before_sec=10e-6f;in.duration_after_sec=10e-6f;in.sequence=1;
    for(method=PC_ROOT_BISECTION32;method<=PC_ROOT_PIECEWISE;method++){
        /* Exercise both dispatch routes: readable bisection32 and the new
         * fast FULL_SUBSTEPS interval used by piecewise reconstruction. */
        pc.root_method=method;in.duration_before_sec=10e-6f;
        in.idq_start_A[0]=2.0f;in.fhat_A_s[0]=25000.0f;
        for(hw=0;hw<8;hw++){
            in.gate_before_hw=hw;in.gate_after_hw=(uint16_t)(7-hw);
            assert(VO_reconstruct(&pc,&in,&out));assert(out.valid && out.source==VO_SOURCE_MODEL_RECONSTRUCTED);
            assert(out.duration_sec==20e-6f);
            reference_segments(&pc,&in,expectedDelta,expectedEnd);
            for(j=0;j<2;j++){
                assert(out.delta_u_dq_V_s[j]==expectedDelta[j]);
                assert(out.model_end_idq_A[j]==expectedEnd[j]);
            }
            if(fabsf(expectedDelta[0])+fabsf(expectedDelta[1])>1e-7f)nonzeroIntegral++;
        }
        in.idq_start_A[0]=0.0f;in.fhat_A_s[0]=0.0f;
        in.gate_before_hw=in.gate_after_hw=0;
        assert(VO_reconstruct(&pc,&in,&out));assert(out.blocked);
        assert(fabsf(out.model_end_idq_A[0])<1e-5f);
        assert(fabsf(out.delta_u_dq_V_s[0])<1e-7f);
        in.duration_before_sec=-1.0f;assert(!VO_reconstruct(&pc,&in,&out));assert(!out.valid);
    }
    printf("two_executed_gate_segments_all_states_zero_blocking_sequence_reset_both_roots=PASS\n");
    assert(nonzeroIntegral>0);
    printf("full_executed_history_vs_unchanged_readable_predictor=PASS nonzero_integral_cases=%u\n",nonzeroIntegral);
    return 0;
}
