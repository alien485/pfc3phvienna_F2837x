#include "core_runtime_stub.h"
#include "../vienna_pcmfpc_runtime.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

volatile float VIENNA_iL1Meas_pu,VIENNA_iL2Meas_pu,VIENNA_iL3Meas_pu;
volatile float VIENNA_v1Meas_pu,VIENNA_v2Meas_pu,VIENNA_v3Meas_pu;
volatile float VIENNA_vBusPMMeas_pu,VIENNA_vBusMNMeas_pu,VIENNA_vBusMeas_pu;
volatile float VIENNA_vBusRefSlewed_pu,VIENNA_iL1Ref_pu,VIENNA_iL2Ref_pu,VIENNA_iL3Ref_pu;
volatile float VIENNA_iLRef_pu,VIENNA_gv_out,VIENNA_voltage_error_pu;
volatile int16_t VIENNA_closeGiLoop,VIENNA_closeGvLoop,VIENNA_closeGsLoop;
volatile int16_t VIENNA_firstTimeGvLoop,VIENNA_clearTrip;
volatile uint16_t VIENNA_fcsSwitchState;
static unsigned tests,trip_calls;
static uint16_t trip_flags[3]={EPWM_TZ_FLAG_OST,EPWM_TZ_FLAG_OST,EPWM_TZ_FLAG_OST};
static uint32_t timer_count=1900000U;
static uint32_t timer_step=10U;
uint32_t CPUTimer_getTimerCount(uint32_t base){(void)base;timer_count-=timer_step;return timer_count;}
uint16_t EPWM_getTripZoneFlagStatus(uint32_t base){return trip_flags[base-1U];}
void VIENNA_HAL_forceOSTPWMTrip(uint32_t base){trip_flags[base-1U]|=EPWM_TZ_FLAG_OST;trip_calls++;}
void VIENNA_resetFCSLoops(void)
{
    VIENNA_closeGiLoop=VIENNA_closeGvLoop=VIENNA_closeGsLoop=0;
    VIENNA_firstTimeGvLoop=1;VIENNA_fcsSwitchState=0U;
    VIENNA_iLRef_pu=VIENNA_gv_out=0.0f;
    VIENNA_PCMFPC_reset_control();
}
static void req(int ok,const char *name){tests++;if(!ok){fprintf(stderr,"FAIL %s\n",name);exit(1);}}
static void measurement(float theta)
{
    const float amp=81.6496581f,cur=1.0f,shift=2.09439510239f;
    VIENNA_v1Meas_pu=amp*cosf(theta)/454.0f;
    VIENNA_v2Meas_pu=amp*cosf(theta-shift)/454.0f;
    VIENNA_v3Meas_pu=amp*cosf(theta+shift)/454.0f;
    VIENNA_iL1Meas_pu=cur*cosf(theta)/12.0f;
    VIENNA_iL2Meas_pu=cur*cosf(theta-shift)/12.0f;
    VIENNA_iL3Meas_pu=cur*cosf(theta+shift)/12.0f;
    VIENNA_vBusPMMeas_pu=VIENNA_vBusMNMeas_pu=85.0f/454.0f;
    VIENNA_vBusMeas_pu=170.0f/454.0f;
}
static void post(void){timer_count=1900000U;VIENNA_PCMFPC_post(timer_count);}
static void reject_benchmark(uint16_t request,uint16_t expected)
{
    uint32_t count=VIENNA_pcmBenchCount;
    uint16_t actual=VIENNA_pcmActualAppliedState,pending=VIENNA_pcmPendingState;
    PC_Input before=VIENNA_pcmInput;VG_State grid=VIENNA_pcmGrid;VO_State observer=VIENNA_pcmObserver;
    VIENNA_pcmBenchRequest=request;post();
    req(VIENNA_pcmBenchStatus==expected && !VIENNA_pcmBenchRequest && VIENNA_pcmBenchCount==count,"benchmark rejects once without numeric call");
    req(!VIENNA_pcmBenchSelectedId && !VIENNA_pcmBenchHWState,"rejected benchmark exposes no gate");
    req(VIENNA_pcmActualAppliedState==actual && VIENNA_pcmPendingState==pending,"rejected benchmark preserves gate history");
    req(!memcmp(&before,&VIENNA_pcmInput,sizeof(before)) && !memcmp(&grid,&VIENNA_pcmGrid,sizeof(grid)) &&
        !memcmp(&observer,&VIENNA_pcmObserver,sizeof(observer)),"rejected benchmark preserves core/PLL/ESO states");
}
static void benchmark_checks(void)
{
    unsigned j;uint16_t root;
    PC_Input before;VG_State grid;VO_State observer;uint32_t tick,count;
    float adc_before[9];
    VIENNA_closeGiLoop=VIENNA_closeGvLoop=VIENNA_closeGsLoop=0;
    VIENNA_pcmRecordArm=VIENNA_pcmWaveArm=0U;VIENNA_PCMFPC_init();measurement(.7f);
    VIENNA_PCMFPC_sample(EPWM_TZ_FLAG_OST);
    for(j=0U;j<3U;j++)trip_flags[j]=EPWM_TZ_FLAG_OST;
    adc_before[0]=VIENNA_iL1Meas_pu;adc_before[1]=VIENNA_iL2Meas_pu;adc_before[2]=VIENNA_iL3Meas_pu;
    adc_before[3]=VIENNA_v1Meas_pu;adc_before[4]=VIENNA_v2Meas_pu;adc_before[5]=VIENNA_v3Meas_pu;
    adc_before[6]=VIENNA_vBusPMMeas_pu;adc_before[7]=VIENNA_vBusMNMeas_pu;adc_before[8]=VIENNA_vBusMeas_pu;
    before=VIENNA_pcmInput;grid=VIENNA_pcmGrid;observer=VIENNA_pcmObserver;tick=VIENNA_pcmTick;
    for(root=1U;root<=2U;root++){
        count=VIENNA_pcmBenchCount;VIENNA_pcmBenchRequest=root;post();
        req(VIENNA_pcmBenchStatus==1U && !VIENNA_pcmBenchRequest && VIENNA_pcmBenchCount==count+1U,"safe all-OFF benchmark one numeric run");
        req(VIENNA_pcmOutputSource==3U && VIENNA_pcmOutputDetailValid==(root==1U),"benchmark source and reference/fast detail flags");
        req(VIENNA_pcmOutputIntegralValid==(root==1U),"benchmark distinguishes unavailable fast pole integral");
        req(VIENNA_pcmBenchSelectedId>=1U && VIENNA_pcmBenchSelectedId<=8U && VIENNA_pcmBenchHWState==PC_id_to_hw(VIENNA_pcmBenchSelectedId),"benchmark diagnostics hold valid numerical gate only");
        req(!VIENNA_pcmActualAppliedState && !VIENNA_pcmPendingState && VIENNA_pcmTick==tick,"benchmark does not submit gate or advance sample");
        req(!memcmp(&before,&VIENNA_pcmInput,sizeof(before)) && !memcmp(&grid,&VIENNA_pcmGrid,sizeof(grid)) &&
            !memcmp(&observer,&VIENNA_pcmObserver,sizeof(observer)),"completed benchmark never injects fixture into live input/PLL/ESO");
        post();req(VIENNA_pcmBenchCount==count+1U,"cleared request never repeats benchmark");
    }
    req(adc_before[0]==VIENNA_iL1Meas_pu && adc_before[1]==VIENNA_iL2Meas_pu && adc_before[2]==VIENNA_iL3Meas_pu &&
        adc_before[3]==VIENNA_v1Meas_pu && adc_before[4]==VIENNA_v2Meas_pu && adc_before[5]==VIENNA_v3Meas_pu &&
        adc_before[6]==VIENNA_vBusPMMeas_pu && adc_before[7]==VIENNA_vBusMNMeas_pu && adc_before[8]==VIENNA_vBusMeas_pu,"benchmark preserves all ADC variables");
    reject_benchmark(3U,3U);reject_benchmark(65535U,3U);
    VIENNA_pcmHardwareRelease=1U;reject_benchmark(1U,2U);VIENNA_pcmHardwareRelease=0U;
    VIENNA_closeGiLoop=1;reject_benchmark(2U,2U);VIENNA_closeGiLoop=0;
    VIENNA_closeGvLoop=1;reject_benchmark(1U,2U);VIENNA_closeGvLoop=0;
    VIENNA_closeGsLoop=1;reject_benchmark(2U,2U);VIENNA_closeGsLoop=0;
    VIENNA_pcmActualAppliedState=4U;reject_benchmark(1U,2U);VIENNA_pcmActualAppliedState=0U;
    VIENNA_pcmPendingState=2U;reject_benchmark(2U,2U);VIENNA_pcmPendingState=0U;
    for(j=0U;j<3U;j++){
        trip_flags[j]=0U;reject_benchmark(1U,2U);
        trip_flags[j]=1U;reject_benchmark(2U,2U); /* another trip bit is not OST */
        trip_flags[j]=EPWM_TZ_FLAG_OST;
    }
    /* The fixture stays isolated, but the unchanged full-body budget still
       fails/reset history if a numerical benchmark itself exceeds 20 us. */
    VIENNA_pcmObserver.valid=VIENNA_pcmObserver.initialized=1U;
    VIENNA_pcmObserver.f_hat_A_s[0]=1234.0f;VIENNA_pcmFault=0U;trip_calls=0U;
    VIENNA_pcmBenchRequest=1U;timer_step=5000U;post();timer_step=10U;
    req(VIENNA_pcmBenchStatus==1U && (VIENNA_pcmFault&VIENNA_PC_PERIOD) && trip_calls==3U,"completed numerical benchmark retains full-body overrun guard");
    req(!VIENNA_pcmObserver.valid && !VIENNA_pcmActualAppliedState && !VIENNA_pcmPendingState,"period fault invalidates ESO history while all gates remain OFF");
    req(!memcmp(&before,&VIENNA_pcmInput,sizeof(before)),"overrun guard does not inject benchmark fixture into live input");
    VIENNA_pcmFault=0U;
    /* source=3 is never a real ADC decision; neither is stale source=0. */
    VIENNA_pcmRecordArm=1U;VIENNA_pcmRingCount=0U;
    VIENNA_pcmCoreStatus=PC_OK;VIENNA_pcmOutput.selected_id=1U;VIENNA_pcmOutput.gi[0]=987.0f;
    VIENNA_pcmOutput.idq2_A[0][0]=123.0f;VIENNA_pcmOutputSource=3U;post();
    req(VIENNA_pcmRecords[0].output_source==3U && !VIENNA_pcmRecords[0].selected_id &&
        !VIENNA_pcmRecords[0].pred_dq_A[0] && !VIENNA_pcmRecords[0].gi,"benchmark source record explicitly lacks live prediction");
    VIENNA_pcmOutputSource=0U;post();
    req(!VIENNA_pcmRecords[1].output_source && !VIENNA_pcmRecords[1].selected_id && !VIENNA_pcmRecords[1].gi,"unavailable source cannot expose stale prediction");
    VIENNA_pcmOutputSource=1U;VIENNA_pcmCoreStatus=PC_ERR_INPUT;post();
    req(VIENNA_pcmRecords[2].core_status==PC_ERR_INPUT && !VIENNA_pcmRecords[2].selected_id,"failed control output record remains invalid");
    VIENNA_pcmCoreStatus=PC_OK;VIENNA_pcmOutput.selected_id=9U;post();
    req(!VIENNA_pcmRecords[3].selected_id && !VIENNA_pcmRecords[3].pred_dq_A[0],"invalid selected ID never indexes outside candidate array");
    VIENNA_pcmRecordArm=0U;
    VIENNA_PCMFPC_sample(EPWM_TZ_FLAG_OST);
    req(!VIENNA_pcmOutputSource && !VIENNA_pcmOutputDetailValid && !VIENNA_pcmOutputIntegralValid,"next sample invalidates output provenance and detail availability");
}
static void diagnostic_checks(void)
{
    VIENNA_closeGiLoop=VIENNA_closeGvLoop=VIENNA_closeGsLoop=0;
    measurement(.7f);VIENNA_iL1Meas_pu=NAN;VIENNA_v2Meas_pu=INFINITY;
    VIENNA_vBusPMMeas_pu=INFINITY;VIENNA_vBusMNMeas_pu=0.0f;
    VIENNA_PCMFPC_sample(EPWM_TZ_FLAG_OST);
    req(VIENNA_pcmInputFaultMask==(1U|16U|64U|128U) && !VIENNA_pcmInputsValid,"input fault mask identifies current grid and bus channels");
    req(!VIENNA_pcmGrid.locked && !VIENNA_pcmObserver.valid &&
        VIENNA_pcmMeasuredDQ_A[0]==0.0f && VIENNA_pcmMeasuredDQ_A[1]==0.0f,"invalid input clears lock observer and measured DQ validity");
    measurement(.7f);VIENNA_PCMFPC_sample(EPWM_TZ_FLAG_OST);
    req(!VIENNA_pcmInputFaultMask && VIENNA_pcmInputsValid,"finite restored input clears diagnostic mask");
    VIENNA_PCMFPC_reset_control();VIENNA_firstTimeGvLoop=0;
    VIENNA_vBusRefSlewed_pu=0.0f;VIENNA_PCMFPC_outer();
    req(VIENNA_pcmReferenceSaturation==1U && VIENNA_pcmIdRef_A==0.0f,"outer lower saturation diagnostic");
    VIENNA_vBusRefSlewed_pu=1000000.0f/VIENNA_V_MAX_SENSE_VOLTS;VIENNA_PCMFPC_outer();
    req(VIENNA_pcmReferenceSaturation==2U && VIENNA_pcmIdRef_A==VIENNA_FCS_REF_LIMIT_PU*VIENNA_I_MAX_SENSE_AMPS,"outer upper saturation diagnostic and bound");
}
int main(void)
{
    unsigned k;uint16_t selected;float theta=0.0f,edq[2],idq[2];
    VIENNA_PCMFPC_init();measurement(theta);
    req(!VIENNA_pcmHardwareRelease && !VIENNA_pcmShadowEnable,"default hardware and shadow OFF");
    req(!VIENNA_PCMFPC_can_start() && (VIENNA_pcmFault&VIENNA_PC_NOT_RELEASED),"release blocks startup");
    VIENNA_pcmHardwareRelease=1U;
    req(!VIENNA_PCMFPC_can_start() && (VIENNA_pcmFault&VIENNA_PC_GRID),"unlocked PLL blocks startup");
    VIENNA_pcmGrid.locked=1U;VIENNA_pcmGrid.faults=0U;
    req(!VIENNA_PCMFPC_can_start(),"invalid inputs block startup");
    VIENNA_pcmInputsValid=1U;
    VIENNA_pcmModeRequest=9U;req(!VIENNA_PCMFPC_can_start(),"invalid mode blocks startup");
    VIENNA_pcmModeRequest=VIENNA_PC_TERMINAL_OFF;
    VIENNA_vBusMeas_pu=(VIENNA_VBUS_TRIP_LIMIT_VOLTS+1.0f)/454.0f;
    req(!VIENNA_PCMFPC_can_start() && (VIENNA_pcmFault&VIENNA_PC_OVERVOLTAGE),"instantaneous startup OV blocks");
    VIENNA_vBusMeas_pu=170.0f/454.0f;
    req(VIENNA_PCMFPC_can_start() && !VIENNA_pcmFault,"valid guarded startup permission");
    VIENNA_pcmActualAppliedState=5U;VIENNA_pcmPendingState=7U;
    VIENNA_PCMFPC_reset_control();
    req(VIENNA_pcmActualAppliedState==5U && VIENNA_pcmPendingState==7U,"normal reset does not relabel pre-ZERO ON state OFF");
    req(!VIENNA_pcmObserver.valid && VIENNA_pcmIdRef_A==0.0f,"reset observer/reference state");
    VIENNA_PCMFPC_init();VIENNA_pcmModeRequest=VIENNA_PC_TERMINAL_OFF;
    for(k=0U;k<6000U;k++){
        theta=6.28318530718f*50.0f*(float)k*20e-6f;
        measurement(theta);VIENNA_PCMFPC_sample(4U);
    }
    req(VIENNA_pcmGrid.locked && !VIENNA_pcmGrid.faults,"real PLL acquires 50 Hz while stopped/tripped");
    req(VIENNA_pcmObserver.valid,"real ESO initializes with success return convention");
    PC_abc_to_dq(VIENNA_pcmInput.eabc_V,VIENNA_pcmInput.theta_rad,edq);
    req(fabsf(VIENNA_pcmInput.fhat_A_s[0]-edq[0]/.003f)<.01f,"stopped first Fhat copied into core input");
    req(fabsf(VIENNA_pcmInput.fhat_A_s[1]-edq[1]/.003f)<.01f,"stopped q Fhat copied into core input");
    PC_abc_to_dq(VIENNA_pcmInput.iabc_A,VIENNA_pcmInput.theta_rad,idq);
    req(fabsf(VIENNA_pcmMeasuredDQ_A[0]-idq[0])<1e-6f && fabsf(VIENNA_pcmMeasuredDQ_A[1]-idq[1])<1e-6f,"locked measured DQ matches physical input transform");
    VIENNA_pcmHardwareRelease=1U;VIENNA_closeGiLoop=1;VIENNA_closeGvLoop=1;VIENNA_closeGsLoop=1;
    VIENNA_PCMFPC_reset_control();
    theta+=6.28318530718f*50.0f*20e-6f;measurement(theta);VIENNA_PCMFPC_sample(0U);
    req(VIENNA_pcmObserver.valid && VIENNA_pcmObserver.innovation_A[0]==0.0f,"missing history initializes instead of invented zero integral");
    req(VIENNA_pcmObserver.innovation_A[1]==0.0f,"missing history q innovation zero");
    req(!VIENNA_pcmFault,"first live observer does not spuriously trip");
    VIENNA_PCMFPC_submitted(4U,100U);
    req(VIENNA_pcmPendingState==4U && VIENNA_pcmActualAppliedState==0U,"submit stores pending but not actual gate");
    theta+=6.28318530718f*50.0f*20e-6f;measurement(theta);VIENNA_PCMFPC_sample(0U);
    req(VIENNA_pcmActualAppliedState==4U && VIENNA_pcmInput.applied_hw_state==4U,"next post-ZERO ISR promotes pending to actual");
    req(VIENNA_pcmObserver.valid && !VIENNA_pcmFault,"reconstruction successful return does not trip runtime");
    VIENNA_pcmIdRef_A=2.0f;VIENNA_pcmIqRef_A=.1f;VIENNA_PCMFPC_make_refs();
    req(VIENNA_pcmInput.id_ref_A==2.0f && VIENNA_pcmInput.iq_ref_A==.1f,"frozen actual reference contract");
    req(fabsf(VIENNA_iL1Ref_pu+VIENNA_iL2Ref_pu+VIENNA_iL3Ref_pu)<2e-6f,"generated abc references zero sum");
    selected=VIENNA_PCMFPC_select();
    req(VIENNA_pcmCoreStatus==PC_OK && selected<=7U && selected==VIENNA_pcmOutput.hw_state,"real select calls core with valid result");
    req(!VIENNA_pcmInput.zcdc_enable && VIENNA_pcmInput.terminal_enable,"terminal OFF mode preserves explicit core contract");
    req(VIENNA_pcmAlgorithmCycles>0U && VIENNA_pcmAlgorithmCyclesMax>=VIENNA_pcmAlgorithmCycles,"algorithm counter records stub elapsed ticks");
    req(VIENNA_pcmOutputSource==1U && VIENNA_pcmOutputDetailValid,"reference dispatch marks real control and full substeps");
    req(VIENNA_pcmOutputIntegralValid,"reference control integral is valid");
    VIENNA_pcmRecordArm=1U;VIENNA_pcmRingCount=0U;
    VIENNA_pcmInput.id_ref_A=1.25f;VIENNA_pcmInput.iq_ref_A=-.25f;
    VIENNA_pcmIdRef_A=2.5f;VIENNA_pcmIqRef_A=.5f;
    timer_count=1900000U;VIENNA_PCMFPC_post(timer_count);
    req(VIENNA_pcmRingCount==1U && VIENNA_pcmRecords[0].ref_dq_A[0]==1.25f && VIENNA_pcmRecords[0].ref_dq_A[1]==-.25f,"record uses decision reference before later outer update");
    VIENNA_pcmRecordArm=0U;
    VIENNA_pcmModeRequest=VIENNA_PC_TERMINAL_ON;trip_calls=0U;
    theta+=6.28318530718f*50.0f*20e-6f;measurement(theta);VIENNA_PCMFPC_sample(0U);
    req((VIENNA_pcmFault&VIENNA_PC_MODE) && trip_calls==3U && !VIENNA_closeGiLoop,"running mode change trips all three phases");
    req(VIENNA_pcmActualAppliedState==0U && VIENNA_pcmPendingState==0U,"trip overrides pending and actual state");
    /* Pure supervisor tests: counts are deliberately injected, not a target
       timing measurement. No PWM/TZ registers are accessed by this test. */
    VIENNA_pcmRecordArm=1U;VIENNA_pcmRingCount=128U;VIENNA_pcmRingOverflow=0U;
    timer_count=1900000U;VIENNA_PCMFPC_post(timer_count);
    req(!VIENNA_pcmRecordArm && VIENNA_pcmRingCount==128U && VIENNA_pcmRingOverflow==1U,"full record buffer disarms without out of bounds write");
    VIENNA_pcmWaveArm=1U;VIENNA_pcmWaveCount=0U;
    VIENNA_pcmInput.id_ref_A=1.5f;VIENNA_pcmInput.iq_ref_A=-.5f;
    VIENNA_pcmIdRef_A=99.0f;VIENNA_pcmIqRef_A=99.0f;
    for(k=0U;k<5U;k++){timer_count=1900000U;VIENNA_PCMFPC_post(timer_count);}
    req(VIENNA_pcmWaveCount==1U && fabsf(VIENNA_pcmWave[0].ref_dq_A[0]-1.5f)<1e-6f &&
        fabsf(VIENNA_pcmWave[0].ref_dq_A[1]+.5f)<1e-6f,"decimated waveform averages frozen core references");
    VIENNA_pcmWaveArm=0U;VIENNA_pcmFault=0U;trip_calls=0U;
    timer_count=1900000U;VIENNA_PCMFPC_post(timer_count+5000U);
    req((VIENNA_pcmFault&VIENNA_PC_PERIOD) && trip_calls==3U,"injected body period overrun trips all three phases");
    req(VIENNA_pcmBodyCycles>VIENNA_CPU_SYS_CLOCK_FREQ_HZ*VIENNA_FCS_TS_SEC,"body overrun uses configured period budget");
    VIENNA_pcmFault=0U;VIENNA_pcmHardwareRelease=0U;trip_calls=0U;
    VIENNA_pcmOutputIntegralValid=VIENNA_pcmOutputDetailValid=1U;
    req(VIENNA_PCMFPC_select()==0U && (VIENNA_pcmFault&VIENNA_PC_OBSERVER) && trip_calls==3U,"release revoked blocks select with OFF trip");
    req(!VIENNA_pcmOutputIntegralValid && !VIENNA_pcmOutputDetailValid,"failed select invalidates stale integral and detail flags");
    VIENNA_pcmHardwareRelease=1U;VIENNA_pcmModeRequest=VIENNA_PC_TERMINAL_ON;
    VIENNA_pcmRootMethod=PC_ROOT_PIECEWISE;
    theta+=6.28318530718f*50.0f*20e-6f;measurement(theta);VIENNA_PCMFPC_sample(4U);
    req(VIENNA_pcmModeActive==VIENNA_PC_TERMINAL_ON && VIENNA_pcmRootMethodActive==PC_ROOT_PIECEWISE,"stopped mode and root request may become active");
    VIENNA_closeGiLoop=1;VIENNA_pcmRootMethod=PC_ROOT_BISECTION32;trip_calls=0U;
    theta+=6.28318530718f*50.0f*20e-6f;measurement(theta);VIENNA_PCMFPC_sample(0U);
    req((VIENNA_pcmFault&VIENNA_PC_MODE) && trip_calls==3U && !VIENNA_closeGiLoop,"running root-method change trips all phases");
    /* Independently reacquire grid and exercise integrated fast select. */
    VIENNA_closeGiLoop=VIENNA_closeGvLoop=VIENNA_closeGsLoop=0;VIENNA_PCMFPC_init();
    VIENNA_pcmModeRequest=VIENNA_PC_TERMINAL_ON;VIENNA_pcmRootMethod=PC_ROOT_PIECEWISE;
    for(k=0U;k<6000U;k++){
        theta=6.28318530718f*50.0f*(float)k*20e-6f;measurement(theta);VIENNA_PCMFPC_sample(EPWM_TZ_FLAG_OST);
    }
    VIENNA_pcmHardwareRelease=1U;VIENNA_closeGiLoop=1;VIENNA_PCMFPC_reset_control();
    theta+=6.28318530718f*50.0f*20e-6f;measurement(theta);VIENNA_PCMFPC_sample(0U);
    VIENNA_pcmIdRef_A=2.0f;VIENNA_pcmIqRef_A=0.0f;VIENNA_PCMFPC_make_refs();
    selected=VIENNA_PCMFPC_select();
    req(VIENNA_pcmCoreStatus==PC_OK && selected==VIENNA_pcmOutput.hw_state && !VIENNA_pcmFault,"integrated fast dispatch succeeds");
    req(VIENNA_pcmOutputSource==1U && !VIENNA_pcmOutputDetailValid && PC_fast_output_summaries_available,"fast dispatch marks summary-only output");
    req(!VIENNA_pcmOutputIntegralValid && !PC_fast_output_integrals_available,"fast control integral is invalid placeholder");
    req(VIENNA_pcmOutput.first_interval.substep[0].root_iterations==PC_FAST_SUBSTEP_UNAVAILABLE,"fast dispatch does not mislabel old substeps valid");
    VIENNA_PCMFPC_submitted(selected,100U);
    theta+=6.28318530718f*50.0f*20e-6f;measurement(theta);VIENNA_PCMFPC_sample(0U);
    req(VIENNA_pcmObserver.valid && !VIENNA_pcmFault && !VIENNA_pcmOutputSource,"fast FULL_SUBSTEPS observer reconstruction remains valid next tick");
    benchmark_checks();
    diagnostic_checks();
    printf("runtime_host_checks=%u real_PLL_ESO_core_with_stub_timer_and_trip=PASS\n",tests);
    printf("No target execution: next sample assumes one ZERO crossed; analog ADC, ISR latency, AQ and hardware trip paths require bench tests.\n");
    return 0;
}
