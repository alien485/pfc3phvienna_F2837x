/* TI adapter. No automatic start or hardware release. SI core and shared
 * voltage loop are separate from the unchanged PWM/ADC/CMPSS/TZ setup. */
#include "vienna.h"
#include "vienna_pcmfpc_runtime.h"
#include <string.h>
#include <math.h>

#ifdef __TI_COMPILER_VERSION__
#pragma CODE_SECTION(VIENNA_PCMFPC_sample,"pcmfpc_code")
#pragma CODE_SECTION(VIENNA_PCMFPC_reset_control,"pcmfpc_code")
#pragma CODE_SECTION(VIENNA_PCMFPC_can_start,"pcmfpc_code")
#pragma CODE_SECTION(VIENNA_PCMFPC_make_refs,"pcmfpc_code")
#pragma CODE_SECTION(VIENNA_PCMFPC_select,"pcmfpc_code")
#pragma CODE_SECTION(VIENNA_PCMFPC_submitted,"pcmfpc_code")
#pragma CODE_SECTION(VIENNA_PCMFPC_outer,"pcmfpc_code")
#pragma CODE_SECTION(VIENNA_PCMFPC_post,"pcmfpc_code")
#pragma CODE_SECTION(pc_fault,"pcmfpc_code")
#pragma CODE_SECTION(pc_benchmark,"pcmfpc_code")
#pragma CODE_SECTION(pc_profile_clock,"pcmfpc_code")
#pragma FUNC_ALWAYS_INLINE(pc_finite)
#pragma FUNC_ALWAYS_INLINE(pc_elapsed)
#pragma FUNC_ALWAYS_INLINE(pc_run_selected)
#pragma DATA_SECTION(VIENNA_pcmRecords,"pcmfpc_trace")
#pragma DATA_SECTION(VIENNA_pcmWave,"pcmfpc_wave")
#endif
volatile uint16_t VIENNA_pcmModeRequest=0U,VIENNA_pcmModeActive=0U;
volatile uint16_t VIENNA_pcmHardwareRelease=0U,VIENNA_pcmShadowEnable=0U;
volatile uint16_t VIENNA_pcmFault=0U,VIENNA_pcmCoreStatus=0U;
volatile uint16_t VIENNA_pcmActualAppliedState=0U,VIENNA_pcmPendingState=0U;
volatile uint16_t VIENNA_pcmRootMethod=PC_ROOT_BISECTION32;
volatile uint16_t VIENNA_pcmRootMethodActive=PC_ROOT_BISECTION32,VIENNA_pcmInputsValid=0U;
volatile uint16_t VIENNA_pcmInputFaultMask=0U,VIENNA_pcmReferenceSaturation=0U;
volatile float VIENNA_pcmMeasuredDQ_A[2];
volatile uint16_t VIENNA_pcmOutputSource=0U,VIENNA_pcmOutputDetailValid=0U;
volatile uint16_t VIENNA_pcmOutputIntegralValid=0U;
volatile uint16_t VIENNA_pcmBenchRequest=0U,VIENNA_pcmBenchStatus=0U;
volatile uint16_t VIENNA_pcmBenchSelectedId=0U,VIENNA_pcmBenchHWState=0U;
volatile uint32_t VIENNA_pcmBenchCycles,VIENNA_pcmBenchCyclesMax,VIENNA_pcmBenchCount;
volatile uint32_t VIENNA_pcmTick,VIENNA_pcmAlgorithmCycles,VIENNA_pcmAlgorithmCyclesMax;
volatile uint32_t VIENNA_pcmWriteCycles,VIENNA_pcmWriteCyclesMax;
volatile uint32_t VIENNA_pcmBodyCycles,VIENNA_pcmBodyCyclesMax;
volatile uint32_t VIENNA_pcmRingCount,VIENNA_pcmRingOverflow,VIENNA_pcmWaveCount;
volatile uint16_t VIENNA_pcmRecordArm=0U,VIENNA_pcmWaveArm=0U;
volatile float VIENNA_pcmIdRef_A,VIENNA_pcmIqRef_A;
VG_State VIENNA_pcmGrid;
VO_State VIENNA_pcmObserver;
PC_Input VIENNA_pcmInput;
PC_Output VIENNA_pcmOutput;
volatile VIENNA_PC_Record VIENNA_pcmRecords[128];
volatile VIENNA_PC_Wave VIENNA_pcmWave[2000];
static PC_Config pc_config;
static PC_Config benchmark_config;
static PC_Input benchmark_input;
static VG_Config grid_config;
static VO_Config observer_config;
static VO_ReconstructInput reconstruct_input;
static VO_ReconstructOutput reconstruct_output;
static uint16_t history_valid,previous_hw,previous_trip;
static float previous_idq[2],previous_fhat[2],previous_theta,previous_omega;
static float previous_up,previous_low,outer_integral,outer_filtered;
static float wave_sum[6];
static uint16_t wave_divider;

static uint16_t pc_finite(float value)
{
    union {float f;uint32_t u;} bits;bits.f=value;
    return (bits.u & 0x7f800000UL)!=0x7f800000UL;
}
static uint32_t pc_elapsed(uint32_t start)
{
    uint32_t end=CPUTimer_getTimerCount(CPUTIMER0_BASE);
    uint32_t period=(uint32_t)(VIENNA_CPU_SYS_CLOCK_FREQ_HZ/VIENNA_CPU_TIMER0_FREQ_HZ);
    return start>=end?start-end:start+period-end;
}
/* Read the already-running timer only. No timer/ADC/PWM configuration writes.
 * The callback is used exclusively by an explicitly armed numeric benchmark. */
static uint32_t pc_profile_clock(void)
{
    return CPUTimer_getTimerCount(CPUTIMER0_BASE);
}
static uint16_t pc_run_selected(const PC_Config *cfg,const PC_Input *in,PC_Output *out)
{
    uint16_t status;
    if(cfg->root_method==PC_ROOT_PIECEWISE){
        status=PC_run_fast(cfg,in,out);VIENNA_pcmOutputDetailValid=0U;
        VIENNA_pcmOutputIntegralValid=(status==PC_OK && PC_fast_output_integrals_available);
    }else{
        status=PC_run(cfg,in,out);VIENNA_pcmOutputDetailValid=(status==PC_OK);
        VIENNA_pcmOutputIntegralValid=(status==PC_OK);
    }
    return status;
}
static void pc_benchmark(void)
{
    uint16_t request=VIENNA_pcmBenchRequest;
    uint32_t begin;
    if(!request)return;
    VIENNA_pcmBenchRequest=0U;
    /* Reject/cancelled requests cannot present an older profile as this run. */
    (void)PC_fast_profile_arm(0U);
    VIENNA_pcmBenchSelectedId=0U;VIENNA_pcmBenchHWState=0U;
    if(request>4U){VIENNA_pcmBenchStatus=3U;return;}
    if(VIENNA_pcmHardwareRelease || VIENNA_closeGiLoop || VIENNA_closeGvLoop ||
       VIENNA_closeGsLoop || VIENNA_pcmActualAppliedState || VIENNA_pcmPendingState ||
       !(EPWM_getTripZoneFlagStatus(VIENNA_HIGH_FREQ_PWM1_BASE)&EPWM_TZ_FLAG_OST) ||
       !(EPWM_getTripZoneFlagStatus(VIENNA_HIGH_FREQ_PWM2_BASE)&EPWM_TZ_FLAG_OST) ||
       !(EPWM_getTripZoneFlagStatus(VIENNA_HIGH_FREQ_PWM3_BASE)&EPWM_TZ_FLAG_OST)){
        VIENNA_pcmBenchStatus=2U;return;
    }
    /* Fixed numerical fixture only. It is never copied into the measured
     * input/PLL/ESO history and the returned gate is never submitted to HAL. */
    benchmark_config=pc_config;
    benchmark_config.root_method=request==1U?PC_ROOT_BISECTION32:PC_ROOT_PIECEWISE;
    /* Keep reference diagnostics; fast control needs only intersection angles. */
    benchmark_config.diagnostic_all_angles=(uint16_t)(request==1U);
    benchmark_input.iabc_A[0]=-0.05f;benchmark_input.iabc_A[1]=3.9221143f;
    benchmark_input.iabc_A[2]=-3.8721143f;
    benchmark_input.eabc_V[0]=0.0f;benchmark_input.eabc_V[1]=70.710678f;
    benchmark_input.eabc_V[2]=-70.710678f;
    benchmark_input.up_V=86.0f;benchmark_input.low_V=84.0f;
    benchmark_input.id_ref_A=4.8f;benchmark_input.iq_ref_A=0.0f;
    benchmark_input.theta_rad=1.57079632679f;benchmark_input.omega_rad_s=314.159265359f;
    benchmark_input.fhat_A_s[0]=26916.0f;benchmark_input.fhat_A_s[1]=-1417.0f;
    benchmark_input.applied_hw_state=3U;
    benchmark_input.zcdc_enable=1U;benchmark_input.terminal_enable=1U;
    if(request>=3U){
        VIENNA_pcmCoreStatus=PC_fast_profile_arm((uint16_t)(request-2U));
        if(VIENNA_pcmCoreStatus!=PC_OK){VIENNA_pcmBenchStatus=4U;return;}
    }
    begin=CPUTimer_getTimerCount(CPUTIMER0_BASE);
    VIENNA_pcmCoreStatus=pc_run_selected(&benchmark_config,&benchmark_input,&VIENNA_pcmOutput);
    VIENNA_pcmBenchCycles=pc_elapsed(begin);
    if(VIENNA_pcmBenchCycles>VIENNA_pcmBenchCyclesMax)VIENNA_pcmBenchCyclesMax=VIENNA_pcmBenchCycles;
    VIENNA_pcmBenchCount++;
    VIENNA_pcmOutputSource=3U;
    if(VIENNA_pcmCoreStatus==PC_OK){
        VIENNA_pcmBenchSelectedId=VIENNA_pcmOutput.selected_id;
        VIENNA_pcmBenchHWState=VIENNA_pcmOutput.hw_state;
        VIENNA_pcmBenchStatus=1U;
    }else VIENNA_pcmBenchStatus=4U;
}
static void pc_fault(uint16_t reason)
{
    VIENNA_pcmFault|=reason;
    VIENNA_HAL_forceOSTPWMTrip(VIENNA_HIGH_FREQ_PWM1_BASE);
    VIENNA_HAL_forceOSTPWMTrip(VIENNA_HIGH_FREQ_PWM2_BASE);
    VIENNA_HAL_forceOSTPWMTrip(VIENNA_HIGH_FREQ_PWM3_BASE);
    VIENNA_pcmActualAppliedState=0U;
    VIENNA_pcmPendingState=0U;
    VIENNA_resetFCSLoops();
    VIENNA_clearTrip=0;
}
void VIENNA_PCMFPC_init(void)
{
    PC_default_config(&pc_config);
    /* Existing HAL loads PRD=SYSCLK/TIMER0_FREQ; the downcounter includes 0.
     * Pass its inclusive span without changing PRD, prescale or emulation. */
    PC_fast_profile_configure(pc_profile_clock,
        (uint32_t)(VIENNA_CPU_SYS_CLOCK_FREQ_HZ/VIENNA_CPU_TIMER0_FREQ_HZ)+1U);
    (void)PC_fast_profile_arm(0U);
    pc_config.first_duration_s=VIENNA_FCS_DELAY_SEC;
    pc_config.candidate_duration_s=VIENNA_FCS_TS_SEC;
    pc_config.L_H=VIENNA_PFC_INDUCTOR_VALUE;
    pc_config.R_ohm=VIENNA_FCS_R_OHM;
    pc_config.C_half_F=VIENNA_FCS_C_HALF_F;
    pc_config.delta_i_A=VIENNA_PCMFPC_DELTA_I_A;
    pc_config.root_method=PC_ROOT_BISECTION32;
    VG_configure(&grid_config,VIENNA_FCS_TS_SEC,VIENNA_PCMFPC_NOMINAL_HZ,VIENNA_PCMFPC_GRID_MIN_V);
    VO_configure(&observer_config,VIENNA_FCS_TS_SEC,VIENNA_PFC_INDUCTOR_VALUE,
                 6.28318530718f*VIENNA_PCMFPC_ESO_HZ);
    VG_reset(&VIENNA_pcmGrid);VO_reset(&VIENNA_pcmObserver);
    VIENNA_pcmModeRequest=VIENNA_PC_OLD_FCS;VIENNA_pcmModeActive=VIENNA_PC_OLD_FCS;
    VIENNA_pcmHardwareRelease=0U;VIENNA_pcmShadowEnable=0U;
    VIENNA_pcmOutputSource=0U;VIENNA_pcmOutputDetailValid=0U;
    VIENNA_pcmOutputIntegralValid=0U;
    VIENNA_pcmBenchRequest=0U;VIENNA_pcmBenchStatus=0U;
    VIENNA_pcmBenchCycles=0U;VIENNA_pcmBenchCyclesMax=0U;VIENNA_pcmBenchCount=0U;
    VIENNA_pcmBenchSelectedId=0U;VIENNA_pcmBenchHWState=0U;
    VIENNA_pcmActualAppliedState=0U;VIENNA_pcmPendingState=0U;
    history_valid=0U;previous_trip=0U;previous_hw=0U;
    VIENNA_pcmRootMethod=PC_ROOT_BISECTION32;VIENNA_pcmRootMethodActive=PC_ROOT_BISECTION32;VIENNA_pcmInputsValid=0U;
    VIENNA_pcmInputFaultMask=0U;VIENNA_pcmReferenceSaturation=0U;
    VIENNA_pcmMeasuredDQ_A[0]=0.0f;VIENNA_pcmMeasuredDQ_A[1]=0.0f;
    VIENNA_pcmRingCount=0U;VIENNA_pcmRingOverflow=0U;VIENNA_pcmWaveCount=0U;
    VIENNA_pcmTick=0U;VIENNA_pcmFault=0U;
    outer_integral=0.0f;outer_filtered=0.0f;
}
void VIENNA_PCMFPC_reset_control(void)
{
    /* A normal stopped controller must still allow the PLL to acquire lock.
     * Do not label an ON gate as OFF before the next ZERO actually occurs. */
    VO_reset(&VIENNA_pcmObserver);history_valid=0U;
    VIENNA_pcmOutputDetailValid=0U;VIENNA_pcmOutputIntegralValid=0U;
    outer_integral=0.0f;outer_filtered=VIENNA_vBusMeas_pu*VIENNA_V_MAX_SENSE_VOLTS;
    VIENNA_pcmIdRef_A=0.0f;VIENNA_pcmIqRef_A=0.0f;
    VIENNA_pcmReferenceSaturation=0U;
}
void VIENNA_PCMFPC_sample(uint16_t trip)
{
    float idq[2],edq[2],delta[2]={0.0f,0.0f};
    uint16_t j,active;
    VIENNA_pcmTick++;
    VIENNA_pcmOutputSource=0U;VIENNA_pcmOutputDetailValid=0U;
    VIENNA_pcmOutputIntegralValid=0U;
    for(j=0U;j<3U;j++){
        VIENNA_pcmInput.iabc_A[j]=0.0f;VIENNA_pcmInput.eabc_V[j]=0.0f;
    }
    VIENNA_pcmInput.iabc_A[0]=VIENNA_iL1Meas_pu*VIENNA_I_MAX_SENSE_AMPS;
    VIENNA_pcmInput.iabc_A[1]=VIENNA_iL2Meas_pu*VIENNA_I_MAX_SENSE_AMPS;
    VIENNA_pcmInput.iabc_A[2]=VIENNA_iL3Meas_pu*VIENNA_I_MAX_SENSE_AMPS;
    VIENNA_pcmInput.eabc_V[0]=VIENNA_v1Meas_pu*VIENNA_V_MAX_SENSE_VOLTS;
    VIENNA_pcmInput.eabc_V[1]=VIENNA_v2Meas_pu*VIENNA_V_MAX_SENSE_VOLTS;
    VIENNA_pcmInput.eabc_V[2]=VIENNA_v3Meas_pu*VIENNA_V_MAX_SENSE_VOLTS;
    VIENNA_pcmInput.up_V=VIENNA_vBusPMMeas_pu*VIENNA_V_MAX_SENSE_VOLTS;
    VIENNA_pcmInput.low_V=VIENNA_vBusMNMeas_pu*VIENNA_V_MAX_SENSE_VOLTS;
    VIENNA_pcmInputFaultMask=0U;
    VIENNA_pcmMeasuredDQ_A[0]=0.0f;VIENNA_pcmMeasuredDQ_A[1]=0.0f;
    for(j=0U;j<3U;j++){
        if(!pc_finite(VIENNA_pcmInput.iabc_A[j]))VIENNA_pcmInputFaultMask|=(uint16_t)(1U<<j);
        if(!pc_finite(VIENNA_pcmInput.eabc_V[j]))VIENNA_pcmInputFaultMask|=(uint16_t)(1U<<(j+3U));
    }
    if(!pc_finite(VIENNA_pcmInput.up_V) || VIENNA_pcmInput.up_V<=0.0f)VIENNA_pcmInputFaultMask|=64U;
    if(!pc_finite(VIENNA_pcmInput.low_V) || VIENNA_pcmInput.low_V<=0.0f)VIENNA_pcmInputFaultMask|=128U;
    VIENNA_pcmInputsValid=(VIENNA_pcmInputFaultMask==0U);
    if(!VIENNA_pcmInputsValid){
        VG_reset(&VIENNA_pcmGrid);history_valid=0U;VO_reset(&VIENNA_pcmObserver);
        if(VIENNA_closeGiLoop==1)pc_fault(VIENNA_PC_CORE);
        return;
    }
    if(trip && !previous_trip)VG_reset(&VIENNA_pcmGrid);
    VG_run(&grid_config,&VIENNA_pcmGrid,VIENNA_pcmInput.eabc_V);
    active=trip?0U:VIENNA_pcmPendingState;
    VIENNA_pcmActualAppliedState=active;
    if(VIENNA_closeGiLoop!=1){
        if(VIENNA_pcmModeRequest<=VIENNA_PC_TERMINAL_ON){
            if(VIENNA_pcmModeActive!=VIENNA_pcmModeRequest)VIENNA_PCMFPC_reset_control();
            VIENNA_pcmModeActive=VIENNA_pcmModeRequest;
        }else VIENNA_pcmFault|=VIENNA_PC_MODE;
        if(VIENNA_pcmRootMethod<=PC_ROOT_PIECEWISE){
            if(VIENNA_pcmRootMethodActive!=VIENNA_pcmRootMethod)VIENNA_PCMFPC_reset_control();
            VIENNA_pcmRootMethodActive=VIENNA_pcmRootMethod;pc_config.root_method=VIENNA_pcmRootMethodActive;
        }else VIENNA_pcmFault|=VIENNA_PC_MODE;
    }else if(VIENNA_pcmModeRequest!=VIENNA_pcmModeActive ||
             VIENNA_pcmRootMethod!=VIENNA_pcmRootMethodActive){pc_fault(VIENNA_PC_MODE);}
    if(trip){history_valid=0U;VO_reset(&VIENNA_pcmObserver);}
    previous_trip=(trip!=0U);
    VIENNA_pcmInput.theta_rad=VIENNA_pcmGrid.theta_rad;
    VIENNA_pcmInput.omega_rad_s=VIENNA_pcmGrid.omega_rad_s;
    VIENNA_pcmInput.applied_hw_state=active;
    if(!VIENNA_pcmGrid.locked){
        if(VIENNA_closeGiLoop==1)pc_fault(VIENNA_PC_GRID);
        return;
    }
    PC_abc_to_dq(VIENNA_pcmInput.iabc_A,VIENNA_pcmInput.theta_rad,idq);
    VIENNA_pcmMeasuredDQ_A[0]=idq[0];VIENNA_pcmMeasuredDQ_A[1]=idq[1];
    PC_abc_to_dq(VIENNA_pcmInput.eabc_V,VIENNA_pcmInput.theta_rad,edq);
    if(!VIENNA_pcmModeActive && !VIENNA_pcmShadowEnable)return;
    if(history_valid && VIENNA_closeGiLoop==1){
        for(j=0U;j<2U;j++){
            reconstruct_input.idq_start_A[j]=previous_idq[j];
            reconstruct_input.fhat_A_s[j]=previous_fhat[j];
        }
        reconstruct_input.up_V=previous_up;reconstruct_input.low_V=previous_low;
        reconstruct_input.theta_start_rad=previous_theta;reconstruct_input.omega_rad_s=previous_omega;
        reconstruct_input.gate_before_hw=previous_hw;reconstruct_input.gate_after_hw=active;
        reconstruct_input.duration_before_sec=VIENNA_FCS_DELAY_SEC;
        reconstruct_input.duration_after_sec=VIENNA_FCS_TS_SEC-VIENNA_FCS_DELAY_SEC;
        reconstruct_input.sequence=VIENNA_pcmTick;
        if(VO_reconstruct(&pc_config,&reconstruct_input,&reconstruct_output)){
            delta[0]=reconstruct_output.delta_u_dq_V_s[0];
            delta[1]=reconstruct_output.delta_u_dq_V_s[1];
        }else{pc_fault(VIENNA_PC_OBSERVER);return;}
    }else{
        /* No complete executed interval is known. Initialize; never fabricate
         * deltaU=0 as if it described a real previous control interval. */
        VO_reset(&VIENNA_pcmObserver);
    }
    if(!VO_update_delta(&observer_config,&VIENNA_pcmObserver,idq,edq,delta,
                       VIENNA_pcmTick,VO_SOURCE_MODEL_RECONSTRUCTED)){
        pc_fault(VIENNA_PC_OBSERVER);return;
    }
    for(j=0U;j<2U;j++){
        VIENNA_pcmInput.fhat_A_s[j]=VIENNA_pcmObserver.f_hat_A_s[j];
        previous_idq[j]=idq[j];previous_fhat[j]=VIENNA_pcmObserver.f_hat_A_s[j];
    }
    previous_theta=VIENNA_pcmInput.theta_rad;previous_omega=VIENNA_pcmInput.omega_rad_s;
    previous_up=VIENNA_pcmInput.up_V;previous_low=VIENNA_pcmInput.low_V;
    previous_hw=active;history_valid=1U;
}
uint16_t VIENNA_PCMFPC_can_start(void)
{
    /* User/bench validation latch defaults OFF, including legacy mode in this
     * experimental target. It is not an assertion that timing was measured. */
    if(!VIENNA_pcmHardwareRelease){VIENNA_pcmFault|=VIENNA_PC_NOT_RELEASED;return 0U;}
    if(!VIENNA_pcmGrid.locked || VIENNA_pcmGrid.faults){VIENNA_pcmFault|=VIENNA_PC_GRID;return 0U;}
    if(VIENNA_pcmModeRequest>2U || VIENNA_pcmRootMethod>PC_ROOT_PIECEWISE || !VIENNA_pcmInputsValid)return 0U;
    if(VIENNA_vBusMeas_pu*VIENNA_V_MAX_SENSE_VOLTS>=VIENNA_VBUS_TRIP_LIMIT_VOLTS){
        VIENNA_pcmFault|=VIENNA_PC_OVERVOLTAGE;return 0U;
    }
    VIENNA_pcmFault=0U;return 1U;
}
void VIENNA_PCMFPC_make_refs(void)
{
    float ref[2],abc[3];
    ref[0]=VIENNA_pcmIdRef_A;ref[1]=VIENNA_pcmIqRef_A;
    PC_dq_to_abc(ref,VIENNA_pcmGrid.theta_rad,abc);
    VIENNA_iL1Ref_pu=abc[0]/VIENNA_I_MAX_SENSE_AMPS;
    VIENNA_iL2Ref_pu=abc[1]/VIENNA_I_MAX_SENSE_AMPS;
    VIENNA_iL3Ref_pu=abc[2]/VIENNA_I_MAX_SENSE_AMPS;
    VIENNA_pcmInput.id_ref_A=ref[0];VIENNA_pcmInput.iq_ref_A=ref[1];
}
uint16_t VIENNA_PCMFPC_select(void)
{
    uint32_t begin=CPUTimer_getTimerCount(CPUTIMER0_BASE);
    if(!VIENNA_pcmGrid.locked || !VIENNA_pcmHardwareRelease || !VIENNA_pcmObserver.valid){
        pc_fault(VIENNA_PC_OBSERVER);return 0U;
    }
    pc_config.root_method=VIENNA_pcmRootMethodActive;
    pc_config.diagnostic_all_angles=(uint16_t)(pc_config.root_method!=PC_ROOT_PIECEWISE);
    VIENNA_pcmInput.zcdc_enable=(VIENNA_pcmModeActive==VIENNA_PC_TERMINAL_ON);
    VIENNA_pcmInput.terminal_enable=1U;
    VIENNA_pcmCoreStatus=pc_run_selected(&pc_config,&VIENNA_pcmInput,&VIENNA_pcmOutput);
    VIENNA_pcmOutputSource=1U;
    VIENNA_pcmAlgorithmCycles=pc_elapsed(begin);
    if(VIENNA_pcmAlgorithmCycles>VIENNA_pcmAlgorithmCyclesMax)VIENNA_pcmAlgorithmCyclesMax=VIENNA_pcmAlgorithmCycles;
    if(VIENNA_pcmCoreStatus!=PC_OK){pc_fault(VIENNA_PC_CORE);return 0U;}
    return VIENNA_pcmOutput.hw_state;
}
void VIENNA_PCMFPC_submitted(uint16_t state,uint32_t elapsed)
{
    VIENNA_pcmPendingState=state;
    VIENNA_pcmWriteCycles=elapsed;
    if(elapsed>VIENNA_pcmWriteCyclesMax)VIENNA_pcmWriteCyclesMax=elapsed;
}
void VIENNA_PCMFPC_outer(void)
{
    const float kp=0.0212260143f,ki=4.82220535f,tau=0.00440172344f,kaw=227.183741f;
    const float dt=VIENNA_FCS_TS_SEC;
    float v=VIENNA_vBusMeas_pu*VIENNA_V_MAX_SENSE_VOLTS;
    float target=VIENNA_vBusRefSlewed_pu*VIENNA_V_MAX_SENSE_VOLTS;
    float error,unsat,limited,maxref=VIENNA_FCS_REF_LIMIT_PU*VIENNA_I_MAX_SENSE_AMPS;
    if(VIENNA_firstTimeGvLoop){
        VIENNA_firstTimeGvLoop=0;VIENNA_vBusRefSlewed_pu=VIENNA_vBusMeas_pu;
        target=v;outer_filtered=v;outer_integral=0.0f;
    }
    outer_filtered+=dt/(tau+dt)*(target-outer_filtered);
    error=outer_filtered-v;unsat=kp*error+outer_integral;
    limited=fminf(fmaxf(unsat,0.0f),maxref);
    VIENNA_pcmReferenceSaturation=(unsat<0.0f)?1U:((unsat>maxref)?2U:0U);
    outer_integral+=dt*(ki*error+kaw*(limited-unsat));
    VIENNA_pcmIdRef_A=limited;VIENNA_pcmIqRef_A=0.0f;
    VIENNA_iLRef_pu=limited/(1.41421356237f*VIENNA_I_MAX_SENSE_AMPS);
    VIENNA_gv_out=limited; /* In this target SI peak A; script labels explicitly. */
    VIENNA_voltage_error_pu=error/VIENNA_V_MAX_SENSE_VOLTS;
}
void VIENNA_PCMFPC_post(uint32_t start_count)
{
    uint16_t j,output_valid;
    uint32_t k;
    if(VIENNA_pcmShadowEnable && VIENNA_pcmModeActive==VIENNA_PC_OLD_FCS &&
       VIENNA_pcmGrid.locked && VIENNA_pcmObserver.valid){
        uint32_t begin=CPUTimer_getTimerCount(CPUTIMER0_BASE);
        pc_config.root_method=VIENNA_pcmRootMethodActive;
        pc_config.diagnostic_all_angles=(uint16_t)(pc_config.root_method!=PC_ROOT_PIECEWISE);
        VIENNA_pcmInput.zcdc_enable=1U;VIENNA_pcmInput.terminal_enable=1U;
        VIENNA_pcmCoreStatus=pc_run_selected(&pc_config,&VIENNA_pcmInput,&VIENNA_pcmOutput);
        VIENNA_pcmOutputSource=2U;
        VIENNA_pcmAlgorithmCycles=pc_elapsed(begin);
        if(VIENNA_pcmAlgorithmCycles>VIENNA_pcmAlgorithmCyclesMax)VIENNA_pcmAlgorithmCyclesMax=VIENNA_pcmAlgorithmCycles;
    }
    if(VIENNA_pcmRecordArm){
        output_valid=(VIENNA_pcmOutputSource==1U || VIENNA_pcmOutputSource==2U) &&
            VIENNA_pcmCoreStatus==PC_OK && VIENNA_pcmOutput.selected_id>=1U && VIENNA_pcmOutput.selected_id<=8U;
        k=VIENNA_pcmRingCount;
        if(k<128U){
            VIENNA_pcmRecords[k].tick=VIENNA_pcmTick;
            VIENNA_pcmRecords[k].write_cycles=VIENNA_pcmWriteCycles;
            VIENNA_pcmRecords[k].body_cycles=pc_elapsed(start_count);
            for(j=0U;j<3U;j++)VIENNA_pcmRecords[k].iabc_A[j]=VIENNA_pcmInput.iabc_A[j];
            for(j=0U;j<2U;j++){
                VIENNA_pcmRecords[k].ref_dq_A[j]=j?VIENNA_pcmInput.iq_ref_A:VIENNA_pcmInput.id_ref_A;
                VIENNA_pcmRecords[k].pred_dq_A[j]=output_valid?VIENNA_pcmOutput.idq2_A[VIENNA_pcmOutput.selected_id-1U][j]:0.0f;
                VIENNA_pcmRecords[k].fhat_A_s[j]=VIENNA_pcmObserver.f_hat_A_s[j];
                VIENNA_pcmRecords[k].innovation_A[j]=VIENNA_pcmObserver.innovation_A[j];
            }
            VIENNA_pcmRecords[k].theta_rad=VIENNA_pcmGrid.theta_rad;
            VIENNA_pcmRecords[k].omega_rad_s=VIENNA_pcmGrid.omega_rad_s;
            VIENNA_pcmRecords[k].up_V=VIENNA_pcmInput.up_V;VIENNA_pcmRecords[k].low_V=VIENNA_pcmInput.low_V;
            j=output_valid?VIENNA_pcmOutput.selected_id-1U:0U;
            VIENNA_pcmRecords[k].np_V=output_valid?VIENNA_pcmOutput.np2_V[j]:0.0f;
            VIENNA_pcmRecords[k].gi=output_valid?VIENNA_pcmOutput.gi[j]:0.0f;
            VIENNA_pcmRecords[k].gu=output_valid?VIENNA_pcmOutput.gu[j]:0.0f;
            VIENNA_pcmRecords[k].gz=output_valid?VIENNA_pcmOutput.gz[j]:0.0f;
            VIENNA_pcmRecords[k].mode=VIENNA_pcmModeActive;
            VIENNA_pcmRecords[k].pc_off_id=output_valid?VIENNA_pcmOutput.pc_off_id:0U;
            VIENNA_pcmRecords[k].selected_id=output_valid?VIENNA_pcmOutput.selected_id:0U;
            VIENNA_pcmRecords[k].active=output_valid?VIENNA_pcmOutput.active:0U;
            VIENNA_pcmRecords[k].changed=output_valid?(VIENNA_pcmOutput.pc_off_id!=VIENNA_pcmOutput.selected_id):0U;
            VIENNA_pcmRecords[k].intersection=output_valid?VIENNA_pcmOutput.intersection_count:0U;
            VIENNA_pcmRecords[k].prefix=output_valid?VIENNA_pcmOutput.midpoint_prefix:0U;
            VIENNA_pcmRecords[k].actual_hw=VIENNA_pcmActualAppliedState;VIENNA_pcmRecords[k].pending_hw=VIENNA_pcmPendingState;
            VIENNA_pcmRecords[k].output_source=VIENNA_pcmOutputSource;VIENNA_pcmRecords[k].core_status=VIENNA_pcmCoreStatus;
            VIENNA_pcmRecords[k].fault=VIENNA_pcmFault;VIENNA_pcmRingCount=k+1U;
        }else{VIENNA_pcmRecordArm=0U;VIENNA_pcmRingOverflow++;}
    }
    if(VIENNA_pcmWaveArm){
        if(!wave_divider)for(j=0U;j<6U;j++)wave_sum[j]=0.0f;
        for(j=0U;j<3U;j++)wave_sum[j]+=VIENNA_pcmInput.iabc_A[j];
        wave_sum[3]+=VIENNA_pcmInput.id_ref_A;wave_sum[4]+=VIENNA_pcmInput.iq_ref_A;
        wave_divider++;
        if(wave_divider==5U){
            k=VIENNA_pcmWaveCount;
            if(k<2000U){
                for(j=0U;j<3U;j++)VIENNA_pcmWave[k].iabc_A[j]=wave_sum[j]*0.2f;
                VIENNA_pcmWave[k].ref_dq_A[0]=wave_sum[3]*0.2f;VIENNA_pcmWave[k].ref_dq_A[1]=wave_sum[4]*0.2f;
                VIENNA_pcmWave[k].theta_rad=VIENNA_pcmGrid.theta_rad-
                    2.0f*VIENNA_FCS_TS_SEC*VIENNA_pcmGrid.omega_rad_s;
                if(VIENNA_pcmWave[k].theta_rad<0.0f)VIENNA_pcmWave[k].theta_rad+=6.28318530718f;
                VIENNA_pcmWaveCount=k+1U;
            }else VIENNA_pcmWaveArm=0U;
            wave_divider=0U;
        }
    }else wave_divider=0U;
    pc_benchmark();
    VIENNA_pcmBodyCycles=pc_elapsed(start_count);
    if(VIENNA_pcmBodyCycles>VIENNA_pcmBodyCyclesMax)VIENNA_pcmBodyCyclesMax=VIENNA_pcmBodyCycles;
    /* This is the C body only. GPIO/vector entry/exit remain bench measurements. */
    if(VIENNA_pcmBodyCycles>(uint32_t)(VIENNA_CPU_SYS_CLOCK_FREQ_HZ*VIENNA_FCS_TS_SEC))pc_fault(VIENNA_PC_PERIOD);
}
