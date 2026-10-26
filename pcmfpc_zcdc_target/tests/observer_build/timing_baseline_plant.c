/* Independent small-step abc plant for the TI-parameter port. No hardware I/O.
 * The physical plant does not call PC_predict_interval or the observer model.
 * CLI: mode(0 old FCS,1 PC-OFF,2 PC-ON) Rload sensitivity output_prefix [scenario].
 * scenario: 0 original, 1 actual ADC1us early, 2 device drops,
 * 3 reversible100->50->100ohm at0.30/0.45s (simulation only).
 */
#include "../../vienna_pcmfpc_zcdc.h"
#include "../../vienna_pcmfpc_fast.h"
#include "../../vienna_pcmfpc_observer.h"
#include "../../vienna_grid_sync.h"
#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef float float32_t;
#define VIENNA_FCS_SIGN_EPS_PU 0.005f
#define VIENNA_FCS_TS_SEC 0.000020f
#define VIENNA_FCS_DELAY_SEC 0.000010f
#define VIENNA_FCS_R_OHM 0.2f
#define VIENNA_PFC_INDUCTOR_VALUE 0.003f
#define VIENNA_V_MAX_SENSE_VOLTS 454.0f
#define VIENNA_I_MAX_SENSE_AMPS 12.0f
#define VIENNA_FCS_C_HALF_F 0.000440f
#define VIENNA_FCS_W_NP 100.0f
#define VIENNA_FCS_W_SWITCH 0.00001f
#include "../../vienna_fcs_mpc.h"

#define PI 3.14159265358979323846
/* Default preserves the original readable bisection32 simulation. The
 * explicit compile-time option exercises the actual optimized controller. */
#ifndef TI_CLOSED_LOOP_FAST
#define TI_CLOSED_LOOP_FAST 0
#endif
#ifndef SIM_PLANT_STEP_SEC
#define SIM_PLANT_STEP_SEC 0.0000005
#endif
#define DT SIM_PLANT_STEP_SEC
#define TS 0.000020
#define CONTROL_TICKS ((unsigned)(TS/DT+0.5))
#define ISR_TICK ((unsigned)(12e-6/DT+0.5)-1U)
#define DURATION 0.8
#define STEADY_BEGIN 0.6
#define STEPS ((unsigned)(DURATION/DT+0.5))
#define HISTORY 128U
#define HARMONICS 40U
#define REF_LIMIT 5.5
#define TRIP_CURRENT 7.0
#define OVERVOLTAGE 204.0

typedef struct {double i[3],up,low,L,R,Rload,diode_drop,switch_drop,filtered[8],history[HISTORY][8];unsigned head;} Plant;
typedef struct {
    double kcl_residual_max,power,irms[3],error2[3],zero_error2[3],zero_error_peak[3];
    double zero_count[3],peak_current,bus_sum,bus_sq,bus_min,bus_max,np_sum,np_sq,np_peak;
    double cosine[3][HARMONICS+1],sine[3][HARMONICS+1];
    double hcos[HARMONICS+1],hsin[HARMONICS+1],dcos[HARMONICS+1],dsin[HARMONICS+1];
    double samples,control_samples,innovation2,reference_saturated,terminal_active,terminal_changed,intersection_two;
    double executed_residual2,midpoint_prediction_residual2,pll_phase_error2;
    unsigned switches[3],steady_switches[3],core_errors,observer_errors,pll_unlocked;
    double peak_all,old_trip_first,new_trip_first,voltage_trip_first,enable_time;
    unsigned hard_trip;
} Metrics;
static PC_Output output;
static uint32_t rng=UINT32_C(1729);
static double uniform_noise(void)
{rng^=rng<<13;rng^=rng>>17;rng^=rng<<5;return ((double)rng/4294967295.0)*2.0-1.0;}
static double clip(double x,double lo,double hi){return x<lo?lo:(x>hi?hi:x);}
static void grid(double t,double e[3])
{unsigned j;for(j=0;j<3;j++)e[j]=100.0*sqrt(2.0/3.0)*cos(2.0*PI*50.0*t-2.0*PI*j/3.0);}
static double project(double z,double c,double up,double low,unsigned on)
{return on?z:fmax(z-c*up,0.0)+fmin(z+c*low,0.0);}
static double physical_project(const Plant *p,double z,double c,unsigned on)
{
    /* Original ideal plant follows exactly the previous arithmetic path.
     * Added constant voltage drops oppose the actual branch current:
     * ON: sign(i)*Vswitch, OFF: Up+Vdiode / -Low-Vdiode. The interval
     * around zero is set-valued and solved with the same independent KCL.
     * This is a piecewise ideal device approximation, not a vendor model. */
    if(p->diode_drop==0.0 && p->switch_drop==0.0)return project(z,c,p->up,p->low,on);
    if(on)return fmax(z-c*p->switch_drop,0.0)+fmin(z+c*p->switch_drop,0.0);
    return project(z,c,p->up+p->diode_drop,p->low+p->diode_drop,0U);
}
static void plant_step(Plant *p,unsigned gate,double t,double mid_i[3],double *kcl)
{
    double e[3],free_i[3],next[3],old[3],mu,lo=-p->low,hi=p->up,sum,c=DT/p->L;
    double pos=0.0,neg=0.0,load=(p->up+p->low)/p->Rload,values[8];
    unsigned j,k;grid(t+0.5*DT,e);
    lo-=p->diode_drop+p->switch_drop;hi+=p->diode_drop+p->switch_drop;
    for(j=0;j<3;j++){old[j]=p->i[j];free_i[j]=old[j]+c*(e[j]-p->R*old[j]);}
    /* Independent physical KCL solve: fixed 36 double bisections. Unlike the
     * control predictor this free current uses actual abc grid and actual R,L. */
    for(k=0;k<36;k++){
        mu=0.5*(lo+hi);sum=0.0;
        for(j=0;j<3;j++)sum+=physical_project(p,free_i[j]+c*mu,c,(gate>>j)&1U);
        if(sum>0.0)hi=mu;else lo=mu;
    }
    mu=0.5*(lo+hi);sum=0.0;
    for(j=0;j<3;j++){
        next[j]=physical_project(p,free_i[j]+c*mu,c,(gate>>j)&1U);
        mid_i[j]=0.5*(old[j]+next[j]);sum+=next[j];
        if(!((gate>>j)&1U)){pos+=fmax(mid_i[j],0.0);neg+=fmax(-mid_i[j],0.0);}
        p->i[j]=next[j];
    }
    *kcl=fabs(sum);
    p->up+=DT*(pos-load)/0.000440;
    p->low+=DT*(neg-load)/0.000440;
    grid(t+DT,e);
    for(j=0;j<3;j++){values[j]=p->i[j];values[3+j]=e[j];}
    values[6]=p->up;values[7]=p->low;
    p->head=(p->head+1U)%HISTORY;
    for(j=0;j<8;j++){
        /* Rfltr*Cfltr=6.8us is modelled as one explicit first-order pole.
         * This is a sensor-chain hypothesis, not a measured transfer function. */
        p->filtered[j]+=(1.0-exp(-DT/6.8e-6))*(values[j]-p->filtered[j]);
        p->history[p->head][j]=p->filtered[j];
    }
}
static double at_history(const Plant *p,unsigned channel,double now,double wanted)
{
    double age=(now-wanted)/DT;unsigned back;double fraction;
    if(age<0.0)age=0.0;back=(unsigned)floor(age);fraction=age-(double)back;
    if(back+1>=HISTORY){back=HISTORY-2;fraction=1.0;}
    return (1.0-fraction)*p->history[(p->head+HISTORY-back)%HISTORY][channel]
         +fraction*p->history[(p->head+HISTORY-back-1U)%HISTORY][channel];
}
static void adc_sample(const Plant *p,double now,double cycle_start,unsigned noisy,double actual_shift,
                       float current[3],float voltage[3],float *up,float *low)
{
    unsigned phase,tap;double si,sv,tI,tV,x,cap[2]={0.0,0.0};
    static const unsigned vslot[3][4]={{0,1,2,3},{0,2,4,6},{1,3,5,7}};
    for(phase=0;phase<3;phase++){
        si=0.0;sv=0.0;
        for(tap=0;tap<4;tap++){
            /* 100ns acquisition end, 210ns nominal conversion; held samples.
             * Nominal common timestamp remains 10us, matching the port. */
            tI=cycle_start+8.24e-6+(double)(phase+3U*tap)*0.31e-6+actual_shift;
            tV=cycle_start+8.24e-6+(double)vslot[phase][tap]*0.31e-6+actual_shift;
            x=at_history(p,phase,now,tI)+(noisy?0.010*uniform_noise():0.0);
            si+=nearbyint(x/(12.0/2048.0))*(12.0/2048.0);
            x=at_history(p,phase+3U,now,tV)+(noisy?0.10*uniform_noise():0.0);
            sv+=nearbyint(x/(454.0/2048.0))*(454.0/2048.0);
        }
        current[phase]=(float)(si*0.25);voltage[phase]=(float)(sv*0.25);
    }
    for(phase=0;phase<2;phase++)for(tap=0;tap<4;tap++){
        tV=cycle_start+8.24e-6+(double)(phase+2U*tap)*0.31e-6+actual_shift;
        x=at_history(p,phase+6U,now,tV);
        cap[phase]+=nearbyint(x/(717.79/4096.0))*(717.79/4096.0);
    }
    *up=(float)(cap[0]*0.25);*low=(float)(cap[1]*0.25);
}
static void harmonic_init(Metrics *m,double time)
{
    unsigned h;for(h=1;h<=HARMONICS;h++){
        m->hcos[h]=cos(2.0*PI*50.0*h*time);m->hsin[h]=sin(2.0*PI*50.0*h*time);
        m->dcos[h]=cos(2.0*PI*50.0*h*DT);m->dsin[h]=sin(2.0*PI*50.0*h*DT);
    }
}
static void accumulate(Metrics *m,const Plant *p,const double mid[3],double t,
                       double idref,double theta,double omega,double sample_time)
{
    double e[3],reference,error,phase,ct,st,bus=p->up+p->low,np=p->low-p->up;
    unsigned j,h;grid(t,e);
    m->samples++;m->bus_sum+=bus;m->bus_sq+=bus*bus;
    if(bus<m->bus_min)m->bus_min=bus;if(bus>m->bus_max)m->bus_max=bus;
    m->np_sum+=np;m->np_sq+=np*np;if(fabs(np)>m->np_peak)m->np_peak=fabs(np);
    for(j=0;j<3;j++){
        phase=theta+omega*(t-sample_time)-2.0*PI*j/3.0;
        reference=idref*cos(phase);error=mid[j]-reference;
        m->irms[j]+=mid[j]*mid[j];m->error2[j]+=error*error;m->power+=e[j]*mid[j];
        if(fabs(p->i[j])>m->peak_current)m->peak_current=fabs(p->i[j]);
        if(idref>=0.1 && fabs(cos(phase))<=sin(10.0*PI/180.0)){
            m->zero_error2[j]+=error*error;m->zero_count[j]++;
            if(fabs(error)>m->zero_error_peak[j])m->zero_error_peak[j]=fabs(error);
        }
        for(h=1;h<=HARMONICS;h++){
            m->cosine[j][h]+=mid[j]*m->hcos[h];m->sine[j][h]+=mid[j]*m->hsin[h];
        }
    }
    for(h=1;h<=HARMONICS;h++){
        ct=m->hcos[h]*m->dcos[h]-m->hsin[h]*m->dsin[h];
        st=m->hsin[h]*m->dcos[h]+m->hcos[h]*m->dsin[h];
        m->hcos[h]=ct;m->hsin[h]=st;
    }
}
int main(int argc,char **argv)
{
    Plant plant;Metrics m;PC_Config pc;PC_Input input;VG_Config vg;VG_State pll;
    VO_Config vo;VO_State eso;VO_ReconstructInput reconstruction;VO_ReconstructOutput reconstructed;
    float current[3],voltage[3],up,low,idq[2],edq[2],rabc[3],rdq[2],du[2]={0.0f,0.0f};
    float prevCurrentDQ[2]={0.0f,0.0f},prevFhat[2]={0.0f,0.0f},prevUp=70.0f,prevLow=70.0f,prevTheta=0.0f,prevOmega=314.159265f;
    unsigned step,j,h,mode,noisy,scenario,gate=0,pending=0,prevGate=0,enabled=0,hasHistory=0,seq=0,control=0;
    double t,now,mid[3],kcl,loadR,idref=0.0,reference_used=0.0,integral=0.0,rslew=0.0,rfilter=0.0,unsat,error;
    double kp=0.02122601433380058,ki=4.822205351961461,tau=0.00440172344074206,kaw=227.18374142820204;
    double guiBus=141.4213562373095,angles[3],irms[3],amp[3][HARMONICS+1],thd[3],track[3],zerorms[3],allRMS=0.0,pf,lastSampleTime=0.0;
    char fileName[1024];FILE *trace,*json;
    if(argc!=5 && argc!=6){fprintf(stderr,"usage: ti_closed_loop mode Rload sensitivity output_prefix [scenario0..3]\n");return 2;}
    mode=(unsigned)atoi(argv[1]);loadR=atof(argv[2]);noisy=(unsigned)atoi(argv[3]);
    scenario=argc==6?(unsigned)atoi(argv[5]):0U;
    if(mode>2 || loadR<=0.0 || scenario>3U)return 2;
    memset(&plant,0,sizeof(plant));memset(&m,0,sizeof(m));memset(&input,0,sizeof(input));
    plant.up=71.71067811865;plant.low=69.71067811865;plant.L=noisy?0.0021:0.003;
    plant.R=noisy?0.26:0.2;plant.Rload=loadR;m.bus_min=1e30;
    if(scenario==2U){plant.diode_drop=0.8;plant.switch_drop=0.2;}
    m.old_trip_first=m.new_trip_first=m.voltage_trip_first=m.enable_time=-1.0;
    grid(0.0,angles);
    for(j=0;j<3;j++){plant.filtered[j]=0;plant.filtered[j+3]=angles[j];}
    plant.filtered[6]=plant.up;plant.filtered[7]=plant.low;
    for(step=0;step<HISTORY;step++)for(j=0;j<8;j++)plant.history[step][j]=plant.filtered[j];
    PC_default_config(&pc);
#if TI_CLOSED_LOOP_FAST
    pc.root_method=PC_ROOT_PIECEWISE;
#else
    pc.root_method=PC_ROOT_BISECTION32;
#endif
    VG_configure(&vg,(float)TS,50.0f,20.0f);VG_reset(&pll);
    VO_configure(&vo,(float)TS,0.003f,3141.592653589793f);VO_reset(&eso);
    snprintf(fileName,sizeof(fileName),"%s.csv",argv[4]);trace=fopen(fileName,"w");if(!trace)return 3;
    fprintf(trace,"t_s,enabled,gate,pending,ia_A,ib_A,ic_A,up_V,low_V,idref_A,idref_used_A,theta_rad,omega_rad_s,Fd_A_s,Fq_A_s,innovation_d_A,innovation_q_A,active,changed,intersection,core_status,ref_saturated,trip,actual_load_ohm,actual_ADC_shift_us\n");
    for(step=0;step<STEPS;step++){
        t=(double)step*DT;
        if(scenario==3U)plant.Rload=t>=0.30 && t<0.45?50.0:100.0;
        if(step%CONTROL_TICKS==0U){
            if(!m.hard_trip){for(j=0;j<3;j++)if(((gate^pending)>>j)&1U){m.switches[j]++;if(t>=STEADY_BEGIN)m.steady_switches[j]++;}gate=pending;}
            else gate=pending=0;
        }
        /* Model the shared target's instrumentation task at an explicitly
         * chosen 10kHz phase. Real Timer2/ISR nesting phase is not reproduced. */
        if(step%(5U*CONTROL_TICKS)==0U && enabled)
            rslew+=clip(170.0-rslew,-150.0*0.0001,150.0*0.0001);
        plant_step(&plant,gate,t,mid,&kcl);now=t+DT;
        if(kcl>m.kcl_residual_max)m.kcl_residual_max=kcl;
        for(j=0;j<3;j++){
            if(fabs(plant.i[j])>m.peak_all)m.peak_all=fabs(plant.i[j]);
            if(fabs(plant.i[j])>=4.0 && m.old_trip_first<0)m.old_trip_first=now;
            if(fabs(plant.i[j])>=TRIP_CURRENT && m.new_trip_first<0){m.new_trip_first=now;m.hard_trip=1U;gate=pending=0;enabled=0;hasHistory=0;VO_reset(&eso);}
        }
        if(step%CONTROL_TICKS==ISR_TICK){
            double cycle_start=(double)(step/CONTROL_TICKS)*TS;
            lastSampleTime=cycle_start+10e-6;
            adc_sample(&plant,now,cycle_start,noisy,scenario==1U?-1e-6:0.0,current,voltage,&up,&low);
            VG_run(&vg,&pll,voltage);PC_abc_to_dq(current,pll.theta_rad,idq);PC_abc_to_dq(voltage,pll.theta_rad,edq);
            guiBus+=(double)0.0001056223*((double)up+low-guiBus); /* same ~189ms bandwidth at50kHz */
            if(guiBus>OVERVOLTAGE && m.voltage_trip_first<0){m.voltage_trip_first=now;m.hard_trip=1U;gate=pending=0;enabled=0;}
            if(!enabled && !m.hard_trip && pll.locked && now>0.060){
                enabled=1U;m.enable_time=now;integral=0.0;rslew=rfilter=(double)up+low;VO_reset(&eso);hasHistory=0;
            }
            if(!pll.locked){m.pll_unlocked++;if(enabled){enabled=0;pending=0;hasHistory=0;VO_reset(&eso);}}
            if(hasHistory){
                memset(&reconstruction,0,sizeof(reconstruction));
                for(j=0;j<2;j++){reconstruction.idq_start_A[j]=prevCurrentDQ[j];reconstruction.fhat_A_s[j]=prevFhat[j];}
                reconstruction.up_V=prevUp;reconstruction.low_V=prevLow;
                reconstruction.theta_start_rad=prevTheta;reconstruction.omega_rad_s=prevOmega;
                reconstruction.duration_before_sec=10e-6f;reconstruction.duration_after_sec=10e-6f;
                reconstruction.gate_before_hw=(uint16_t)prevGate;reconstruction.gate_after_hw=(uint16_t)gate;reconstruction.sequence=seq;
                if(!VO_reconstruct(&pc,&reconstruction,&reconstructed)){m.observer_errors++;VO_reset(&eso);du[0]=du[1]=0.0f;}
                else {du[0]=reconstructed.delta_u_dq_V_s[0];du[1]=reconstructed.delta_u_dq_V_s[1];}
            }
            if(!VO_update_delta(&vo,&eso,idq,edq,du,seq,VO_SOURCE_MODEL_RECONSTRUCTED)){m.observer_errors++;}
            if(enabled){
                reference_used=idref;
                rdq[0]=(float)idref;rdq[1]=0.0f;PC_dq_to_abc(rdq,pll.theta_rad,rabc);
                if(mode==0){
                    pending=VIENNA_FCS_run(current[0]/12.0f,current[1]/12.0f,current[2]/12.0f,
                        voltage[0]/454.0f,voltage[1]/454.0f,voltage[2]/454.0f,
                        rabc[0]/12.0f,rabc[1]/12.0f,rabc[2]/12.0f,up/454.0f,low/454.0f,(uint16_t)gate,1U);
                    memset(&output,0,sizeof(output));
                }else{
                    for(j=0;j<3;j++){input.iabc_A[j]=current[j];input.eabc_V[j]=voltage[j];}
                    input.up_V=up;input.low_V=low;input.id_ref_A=(float)idref;input.iq_ref_A=0.0f;
                    input.theta_rad=pll.theta_rad;input.omega_rad_s=pll.omega_rad_s;
                    input.fhat_A_s[0]=eso.f_hat_A_s[0];input.fhat_A_s[1]=eso.f_hat_A_s[1];
                    input.applied_hw_state=(uint16_t)gate;input.zcdc_enable=(uint16_t)(mode==2);input.terminal_enable=1U;
#if TI_CLOSED_LOOP_FAST
                    if(PC_run_fast(&pc,&input,&output)!=PC_OK){m.core_errors++;pending=0;}
#else
                    if(PC_run(&pc,&input,&output)!=PC_OK){m.core_errors++;pending=0;}
#endif
                    else pending=output.hw_state;
                }
                /* Same order as target: submit the next gate first, then
                 * update the voltage PI output for the following invocation. */
                rfilter+=TS/(tau+TS)*(rslew-rfilter);
                error=rfilter-(double)up-low;unsat=kp*error+integral;
                idref=clip(unsat,0.0,REF_LIMIT);
                integral+=TS*(ki*error+kaw*(idref-unsat));
            }else{idref=0.0;reference_used=0.0;pending=0;}
            for(j=0;j<2;j++){prevCurrentDQ[j]=idq[j];prevFhat[j]=eso.f_hat_A_s[j];}
            prevUp=up;prevLow=low;prevTheta=pll.theta_rad;prevOmega=pll.omega_rad_s;prevGate=gate;hasHistory=1U;seq++;control++;
            if(now>=STEADY_BEGIN){
                m.control_samples++;m.reference_saturated+=(idref>=REF_LIMIT-1e-7);
                m.terminal_active+=output.active;m.terminal_changed+=(output.selected_id!=output.pc_off_id);
                m.intersection_two+=(output.intersection_count==2);
                m.innovation2+=(double)eso.innovation_A[0]*eso.innovation_A[0]+(double)eso.innovation_A[1]*eso.innovation_A[1];
                if(reconstructed.valid){
                    for(j=0;j<2;j++)m.executed_residual2+=((double)idq[j]-reconstructed.model_end_idq_A[j])*((double)idq[j]-reconstructed.model_end_idq_A[j]);
                    m.midpoint_prediction_residual2+=((double)low-up-reconstructed.model_end_n_V)*((double)low-up-reconstructed.model_end_n_V);
                }
                m.pll_phase_error2+=(double)pll.phase_error*pll.phase_error;
            }
            if(control%10U==0U || now>=STEADY_BEGIN)
                fprintf(trace,"%.9g,%u,%u,%u,%.8g,%.8g,%.8g,%.8g,%.8g,%.8g,%.8g,%.8g,%.8g,%.8g,%.8g,%.8g,%.8g,%u,%u,%u,%u,%u,%u,%.8g,%.8g\n",
                    cycle_start+10e-6,enabled,gate,pending,current[0],current[1],current[2],up,low,idref,reference_used,pll.theta_rad,pll.omega_rad_s,
                    eso.f_hat_A_s[0],eso.f_hat_A_s[1],eso.innovation_A[0],eso.innovation_A[1],output.active,
                    output.selected_id!=output.pc_off_id,output.intersection_count,output.status,(unsigned)(idref>=REF_LIMIT-1e-7),m.hard_trip,plant.Rload,scenario==1U?-1.0:0.0);
        }
        if(step==(unsigned)(STEADY_BEGIN/DT+0.5))harmonic_init(&m,t+0.5*DT);
        if(step>=(unsigned)(STEADY_BEGIN/DT+0.5))accumulate(&m,&plant,mid,t+0.5*DT,idref,pll.theta_rad,pll.omega_rad_s,lastSampleTime);
        if(!isfinite(plant.up+plant.low) || plant.up<=0 || plant.low<=0){fprintf(stderr,"plant rail invalid\n");fclose(trace);return 5;}
    }
    fclose(trace);
    for(j=0;j<3;j++){
        double total=0.0;irms[j]=sqrt(m.irms[j]/m.samples);track[j]=sqrt(m.error2[j]/m.samples);
        zerorms[j]=sqrt(m.zero_error2[j]/fmax(m.zero_count[j],1.0));allRMS+=m.error2[j];
        for(h=1;h<=HARMONICS;h++){
            amp[j][h]=2.0*hypot(m.cosine[j][h],m.sine[j][h])/m.samples;
            if(h>1)total+=amp[j][h]*amp[j][h];
        }
        thd[j]=sqrt(total)/fmax(amp[j][1],1e-20)*100.0;
    }
    pf=(m.power/m.samples)/((100.0/sqrt(3.0))*(irms[0]+irms[1]+irms[2]));
    snprintf(fileName,sizeof(fileName),"%s.json",argv[4]);json=fopen(fileName,"w");if(!json)return 3;
    fprintf(json,"{\n\"mode\":%u,\"load_ohm\":%.9g,\"sensitivity\":%u,\"plant_L_H\":%.9g,\"plant_R_ohm\":%.9g,\n",mode,loadR,noisy,plant.L,plant.R);
    fprintf(json,"\"scenario\":%u,\"actual_ADC_shift_s\":%.9g,\"diode_drop_V\":%.9g,\"switch_on_drop_V\":%.9g,\"dynamic_load_100_50_100ohm\":%u,\n",scenario,scenario==1U?-1e-6:0.0,plant.diode_drop,plant.switch_drop,scenario==3U);
    fprintf(json,"\"plant_step_s\":%.9g,\"control_step_s\":%.9g,\"duration_s\":%.9g,\"steady_window_s\":[%.9g,%.9g],\"THD_samples\":%.0f,\n",DT,TS,DURATION,STEADY_BEGIN,DURATION,m.samples);
    fprintf(json,"\"outer_kp_A_V\":%.12g,\"outer_ki_A_V_s\":%.12g,\"reference_limit_peak_A\":%.9g,\"proposed_trip_A\":%.9g,\"proposed_software_OV_V\":%.9g,\n",kp,ki,REF_LIMIT,TRIP_CURRENT,OVERVOLTAGE);
    fprintf(json,"\"bus_mean_V\":%.12g,\"bus_ripple_Vpp\":%.12g,\"np_mean_V\":%.12g,\"np_RMS_V\":%.12g,\"np_peak_V\":%.12g,\n",m.bus_sum/m.samples,m.bus_max-m.bus_min,m.np_sum/m.samples,sqrt(m.np_sq/m.samples),m.np_peak);
    fprintf(json,"\"tracking_RMS_A\":%.12g,\"tracking_per_phase_RMS_A\":[%.12g,%.12g,%.12g],\"zero_window_RMS_A\":[%.12g,%.12g,%.12g],\"zero_window_peak_A\":[%.12g,%.12g,%.12g],\n",sqrt(allRMS/(3*m.samples)),track[0],track[1],track[2],zerorms[0],zerorms[1],zerorms[2],m.zero_error_peak[0],m.zero_error_peak[1],m.zero_error_peak[2]);
    fprintf(json,"\"phase_RMS_A\":[%.12g,%.12g,%.12g],\"THD_2_40_percent\":[%.12g,%.12g,%.12g],\"true_PF\":%.12g,\"input_power_W\":%.12g,\n",irms[0],irms[1],irms[2],thd[0],thd[1],thd[2],pf,m.power/m.samples);
    fprintf(json,"\"current_peak_steady_A\":%.12g,\"current_peak_all_A\":%.12g,\"first_original_4A_exceedance_s\":%.9g,\"first_proposed_7A_trip_s\":%.9g,\"first_proposed_OV_trip_s\":%.9g,\"hard_trip\":%u,\n",m.peak_current,m.peak_all,m.old_trip_first,m.new_trip_first,m.voltage_trip_first,m.hard_trip);
    fprintf(json,"\"reference_saturation_fraction\":%.12g,\"terminal_active_fraction\":%.12g,\"same_state_terminal_gate_change_fraction\":%.12g,\"intersection_two_fraction\":%.12g,\"innovation_dq_RMS_A\":%.12g,\n",m.reference_saturated/m.control_samples,m.terminal_active/m.control_samples,m.terminal_changed/m.control_samples,m.intersection_two/m.control_samples,sqrt(m.innovation2/m.control_samples));
    fprintf(json,"\"executed_model_prediction_residual_dq_RMS_A\":%.12g,\"midpoint_prediction_residual_RMS_V\":%.12g,\"pll_normalized_q_RMS\":%.12g,\"switch_frequency_steady_Hz\":[%.12g,%.12g,%.12g],\n",sqrt(m.executed_residual2/m.control_samples),sqrt(m.midpoint_prediction_residual2/m.control_samples),sqrt(m.pll_phase_error2/m.control_samples),m.steady_switches[0]/(2.0*(DURATION-STEADY_BEGIN)),m.steady_switches[1]/(2.0*(DURATION-STEADY_BEGIN)),m.steady_switches[2]/(2.0*(DURATION-STEADY_BEGIN)));
    fprintf(json,"\"switch_frequency_whole_run_Hz\":[%.12g,%.12g,%.12g],\"core_errors\":%u,\"observer_errors\":%u,\"pll_unlocked_samples\":%u,\"control_enable_s\":%.9g,\"plant_KCL_residual_max_A\":%.12g,\n",m.switches[0]/(2.0*DURATION),m.switches[1]/(2.0*DURATION),m.switches[2]/(2.0*DURATION),m.core_errors,m.observer_errors,m.pll_unlocked,m.enable_time,m.kcl_residual_max);
    fprintf(json,"\"harmonic_peak_amplitudes_A\":[");
    for(j=0;j<3;j++){fprintf(json,"%s[",j?",":"");for(h=1;h<=HARMONICS;h++)fprintf(json,"%s%.10g",h>1?",":"",amp[j][h]);fprintf(json,"]");}
    fprintf(json,"]\n}\n");fclose(json);
    printf("mode=%u R=%.0f sensitivity=%u bus=%.5f tracking=%.6g THD=[%.4g %.4g %.4g] npRMS=%.5g peak=%.5g trip=%u errors=%u/%u\n",mode,loadR,noisy,m.bus_sum/m.samples,sqrt(allRMS/(3*m.samples)),thd[0],thd[1],thd[2],sqrt(m.np_sq/m.samples),m.peak_all,m.hard_trip,m.core_errors,m.observer_errors);
    return 0;
}
