#include "core_runtime_stub.h"
#include "../vienna_pcmfpc_runtime.h"
#include "../vienna_pcmfpc_engineering.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <float.h>

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
static void req(int ok,const char *name){tests++;if(!ok){fprintf(stderr,"FAIL %s core=%u fault=%u eng=%u firstI=%.8g NP=%.8g masks=%x/%x/%x\n",name,(unsigned)VIENNA_pcmCoreStatus,(unsigned)VIENNA_pcmFault,(unsigned)PC_engineering_diag.status,(double)PC_engineering_diag.first_hard_peak_A,(double)PC_engineering_diag.first_np_peak_V,(unsigned)PC_engineering_diag.hard7_mask,(unsigned)PC_engineering_diag.future65_mask,(unsigned)PC_engineering_diag.soft_pool_mask);exit(1);}}
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
static void terminal_dispatch_check(void)
{
    if(VIENNA_pcmCoreStatus==PC_OK && VIENNA_pcmOutput.active){
        uint16_t s=(uint16_t)(VIENNA_pcmOutput.selected_id-1U);
        uint16_t b=(uint16_t)(VIENNA_pcmOutput.pc_off_id-1U);
        float rd=VIENNA_pcmInput.id_ref_A,rq=VIENNA_pcmInput.iq_ref_A;
        float selected_projection=rd*VIENNA_pcmOutput.idq2_A[s][0]+rq*VIENNA_pcmOutput.idq2_A[s][1];
        float baseline_projection=rd*VIENNA_pcmOutput.idq2_A[b][0]+rq*VIENNA_pcmOutput.idq2_A[b][1];
        req(isfinite(selected_projection) && isfinite(baseline_projection) && selected_projection>=baseline_projection,
            "real live runtime dispatch preserves PC-OFF reference projection");
    }
}
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
    PC_Output pipeline_output;
    uint16_t pipeline_status=0U,pipeline_selected=0U,pipeline_hw=0U;
    float adc_before[9];
    memset(&pipeline_output,0,sizeof(pipeline_output));
    VIENNA_closeGiLoop=VIENNA_closeGvLoop=VIENNA_closeGsLoop=0;
    VIENNA_pcmRecordArm=VIENNA_pcmWaveArm=0U;VIENNA_PCMFPC_init();measurement(.7f);
    VIENNA_PCMFPC_sample(EPWM_TZ_FLAG_OST);
    for(j=0U;j<3U;j++)trip_flags[j]=EPWM_TZ_FLAG_OST;
    adc_before[0]=VIENNA_iL1Meas_pu;adc_before[1]=VIENNA_iL2Meas_pu;adc_before[2]=VIENNA_iL3Meas_pu;
    adc_before[3]=VIENNA_v1Meas_pu;adc_before[4]=VIENNA_v2Meas_pu;adc_before[5]=VIENNA_v3Meas_pu;
    adc_before[6]=VIENNA_vBusPMMeas_pu;adc_before[7]=VIENNA_vBusMNMeas_pu;adc_before[8]=VIENNA_vBusMeas_pu;
    before=VIENNA_pcmInput;grid=VIENNA_pcmGrid;observer=VIENNA_pcmObserver;tick=VIENNA_pcmTick;
    for(root=1U;root<=6U;root++){
        count=VIENNA_pcmBenchCount;VIENNA_pcmBenchRequest=root;post();
        req(VIENNA_pcmBenchStatus==1U && !VIENNA_pcmBenchRequest && VIENNA_pcmBenchCount==count+1U,"safe all-OFF benchmark one numeric run");
        req(VIENNA_pcmOutputSource==3U && VIENNA_pcmOutputDetailValid==(root==1U),"benchmark source and reference/fast detail flags");
        req(VIENNA_pcmOutputIntegralValid==(root==1U),"benchmark distinguishes unavailable fast pole integral");
        req(VIENNA_pcmBenchSelectedId>=1U && VIENNA_pcmBenchSelectedId<=8U && VIENNA_pcmBenchHWState==PC_id_to_hw(VIENNA_pcmBenchSelectedId),"benchmark diagnostics hold valid numerical gate only");
        req(!VIENNA_pcmActualAppliedState && !VIENNA_pcmPendingState && VIENNA_pcmTick==tick,"benchmark does not submit gate or advance sample");
        req(!memcmp(&before,&VIENNA_pcmInput,sizeof(before)) && !memcmp(&grid,&VIENNA_pcmGrid,sizeof(grid)) &&
            !memcmp(&observer,&VIENNA_pcmObserver,sizeof(observer)),"completed benchmark never injects fixture into live input/PLL/ESO");
        if(root==3U || root==4U){
            req(PC_fast_profile.valid && PC_fast_profile.completed &&
                PC_fast_profile.mode==(uint16_t)(root-2U) && PC_fast_profile.core_status==PC_OK,
                "safe profile benchmark publishes the requested one-shot mode");
            req(PC_fast_profile.root_calls==(root==4U?18U:0U),
                "fine profile counts every root while coarse profile omits nested timing");
            req(PC_fast_profile.angle_calls==(VIENNA_pcmOutput.active?VIENNA_pcmOutput.intersection_count:0U),
                "fast runtime computes only intersection angle diagnostics");
            req(PC_fast_profile.total_cycles>0U && !PC_fast_profile.clock_fault,
                "profile uses the configured existing downcounter callback");
        }else req(!PC_fast_profile.valid && !PC_fast_profile.completed,
                  "plain/reference/pipeline benchmark does not publish an instrumented profile");
        if(root==5U || root==6U)req(VIENNA_pcmBenchCycles>0U && !VIENNA_pcmFault,
                       "isolated initialized-ESO pipeline completes within the fake-clock budget");
        if(root==5U){
            pipeline_output=VIENNA_pcmOutput;pipeline_status=VIENNA_pcmCoreStatus;
            pipeline_selected=VIENNA_pcmBenchSelectedId;pipeline_hw=VIENNA_pcmBenchHWState;
        }else if(root==6U){
            req(!memcmp(&pipeline_output,&VIENNA_pcmOutput,sizeof(pipeline_output)),
                "prefetched benchmark6 matches benchmark5 whole output including unavailable bytes");
            req(VIENNA_pcmCoreStatus==pipeline_status && VIENNA_pcmBenchSelectedId==pipeline_selected &&
                VIENNA_pcmBenchHWState==pipeline_hw,"benchmark5 and6 expose the same mathematical status and gate");
            req(!VIENNA_pcmObserverPrefetch.ready && !VIENNA_pcmObserverPrefetch.hits &&
                !VIENNA_pcmObserverPrefetch.fallbacks,"numeric pipeline cache never becomes live observer history");
        }
        post();req(VIENNA_pcmBenchCount==count+1U,"cleared request never repeats benchmark");
        if(root==3U || root==4U)req(PC_fast_profile.valid && PC_fast_profile.completed,
                       "ordinary stopped tick preserves the completed profile for inspection");
    }
    req(adc_before[0]==VIENNA_iL1Meas_pu && adc_before[1]==VIENNA_iL2Meas_pu && adc_before[2]==VIENNA_iL3Meas_pu &&
        adc_before[3]==VIENNA_v1Meas_pu && adc_before[4]==VIENNA_v2Meas_pu && adc_before[5]==VIENNA_v3Meas_pu &&
        adc_before[6]==VIENNA_vBusPMMeas_pu && adc_before[7]==VIENNA_vBusMNMeas_pu && adc_before[8]==VIENNA_vBusMeas_pu,"benchmark preserves all ADC variables");
    reject_benchmark(7U,3U);reject_benchmark(65535U,3U);
    req(!PC_fast_profile.valid && !PC_fast_profile.completed,"bad benchmark request invalidates stale profile");
    for(root=1U;root<=6U;root++){
        VIENNA_pcmHardwareRelease=1U;reject_benchmark(root,2U);VIENNA_pcmHardwareRelease=0U;
        VIENNA_closeGiLoop=1;reject_benchmark(root,2U);VIENNA_closeGiLoop=0;
        VIENNA_closeGvLoop=1;reject_benchmark(root,2U);VIENNA_closeGvLoop=0;
        VIENNA_closeGsLoop=1;reject_benchmark(root,2U);VIENNA_closeGsLoop=0;
        VIENNA_pcmActualAppliedState=4U;reject_benchmark(root,2U);VIENNA_pcmActualAppliedState=0U;
        VIENNA_pcmPendingState=2U;reject_benchmark(root,2U);VIENNA_pcmPendingState=0U;
        for(j=0U;j<3U;j++){
            trip_flags[j]=0U;reject_benchmark(root,2U);
            trip_flags[j]=1U;reject_benchmark(root,2U); /* another trip bit is not OST */
            trip_flags[j]=EPWM_TZ_FLAG_OST;
        }
    }
    req(!PC_fast_profile.valid && !PC_fast_profile.completed,"unsafe requests cannot expose an old profile");
    /* The fixture stays isolated, but a benchmark exceeding the configured
       full-body period still fails and resets observer history. */
    for(root=1U;root<=6U;root+=5U){
        VIENNA_pcmObserver.valid=VIENNA_pcmObserver.initialized=1U;
        VIENNA_pcmObserver.f_hat_A_s[0]=1234.0f;VIENNA_pcmFault=0U;trip_calls=0U;
        VIENNA_pcmBenchRequest=root;
        timer_step=(uint32_t)(VIENNA_CPU_SYS_CLOCK_FREQ_HZ*VIENNA_FCS_TS_SEC)+1000U;
        post();timer_step=10U;
        req(VIENNA_pcmBenchStatus==1U && (VIENNA_pcmFault&VIENNA_PC_PERIOD) && trip_calls==3U,"completed numerical benchmark retains full-body overrun guard");
        req(!VIENNA_pcmObserver.valid && !VIENNA_pcmActualAppliedState && !VIENNA_pcmPendingState,"period fault invalidates ESO history while all gates remain OFF");
        req(!memcmp(&before,&VIENNA_pcmInput,sizeof(before)),"overrun guard does not inject benchmark fixture into live input");
    }
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
/* Continuous bench is still a stopped fixture. These frames deliberately
 * include the normal stopped reset that the real ISR runs before post. */
static void repeat_safe_begin(void)
{
    unsigned j;
    timer_step=10U;
    VIENNA_closeGiLoop=VIENNA_closeGvLoop=VIENNA_closeGsLoop=0;
    VIENNA_clearTrip=0;VIENNA_pcmRecordArm=VIENNA_pcmWaveArm=0U;
    VIENNA_PCMFPC_init();measurement(.7f);
    for(j=0U;j<3U;j++)trip_flags[j]=EPWM_TZ_FLAG_OST;
    VIENNA_PCMFPC_sample(EPWM_TZ_FLAG_OST);
    VIENNA_resetFCSLoops();
    VIENNA_PCMFPC_submitted(0U,30U);
}
static void repeat_adc_snapshot(float adc[9])
{
    adc[0]=VIENNA_iL1Meas_pu;adc[1]=VIENNA_iL2Meas_pu;adc[2]=VIENNA_iL3Meas_pu;
    adc[3]=VIENNA_v1Meas_pu;adc[4]=VIENNA_v2Meas_pu;adc[5]=VIENNA_v3Meas_pu;
    adc[6]=VIENNA_vBusPMMeas_pu;adc[7]=VIENNA_vBusMNMeas_pu;adc[8]=VIENNA_vBusMeas_pu;
}
static void repeat_post_preserves_live(void)
{
    PC_Input input=VIENNA_pcmInput;VG_State grid=VIENNA_pcmGrid;VO_State observer=VIENNA_pcmObserver;
    uint16_t actual=VIENNA_pcmActualAppliedState,pending=VIENNA_pcmPendingState;
    uint32_t tick=VIENNA_pcmTick;float before[9],after[9];
    repeat_adc_snapshot(before);post();repeat_adc_snapshot(after);
    req(!memcmp(before,after,sizeof(before)),"continuous bench preserves all nine ADC variables");
    req(!memcmp(&input,&VIENNA_pcmInput,sizeof(input)) && !memcmp(&grid,&VIENNA_pcmGrid,sizeof(grid)) &&
        !memcmp(&observer,&VIENNA_pcmObserver,sizeof(observer)),"continuous fixture never becomes live input PLL or ESO history");
    req(VIENNA_pcmActualAppliedState==actual && VIENNA_pcmPendingState==pending && VIENNA_pcmTick==tick,
        "continuous fixture neither submits a gate nor advances sample sequence");
}
static void repeat_stopped_frame(float theta)
{
    measurement(theta);VIENNA_PCMFPC_sample(EPWM_TZ_FLAG_OST);
    VIENNA_resetFCSLoops();VIENNA_PCMFPC_submitted(0U,30U);
    repeat_post_preserves_live();
}
static void continuous_benchmark_checks(void)
{
    unsigned mode,k,j,trip_before;uint32_t count,cycles;PC_Output expected2,expected5;
    req(VIENNA_PCMFPC_elapsed_counts(1000U,749U,1999999U)==251U,
        "CPU elapsed helper subtracts a monotonic downcount");
    req(VIENNA_PCMFPC_elapsed_counts(3U,9995U,9999U)==8U,
        "CPU elapsed helper includes zero before one period reload");
    req(VIENNA_PCMFPC_elapsed_counts(3U,UINT32_MAX-1U,UINT32_MAX)==5U,
        "CPU elapsed helper handles UINT32_MAX period without prd plus one overflow");
    req(VIENNA_PCMFPC_elapsed_counts(0U,UINT32_MAX,UINT32_MAX)==1U &&
        VIENNA_PCMFPC_elapsed_counts(123U,123U,UINT32_MAX)==0U,
        "CPU elapsed helper supports single wrap boundary and identical snapshots");
    for(mode=5U;mode<=6U;mode++){
        repeat_safe_begin();
        req(!VIENNA_pcmBenchRepeat,"continuous benchmark defaults disabled after init");
        VIENNA_pcmBenchRepeat=(uint16_t)mode;count=VIENNA_pcmBenchCount;
        repeat_stopped_frame(.71f);
        req(VIENNA_pcmBenchRepeat==mode && VIENNA_pcmBenchCount==count+1U &&
            VIENNA_pcmBenchStatus==1U && !VIENNA_pcmBenchRequest,
            "first stopped frame executes one repeated numerical trial");
        repeat_stopped_frame(.72f);
        req(VIENNA_pcmBenchRepeat==mode && VIENNA_pcmBenchCount==count+2U &&
            VIENNA_pcmBenchStatus==1U && VIENNA_pcmOutputSource==3U,
            "normal stopped reset preserves repeat and second frame executes exactly once");
        cycles=VIENNA_pcmBenchCycles;VIENNA_pcmBenchRepeat=0U;
        repeat_stopped_frame(.73f);
        req(VIENNA_pcmBenchCount==count+2U && VIENNA_pcmBenchCycles==cycles,
            "writing repeat zero stops subsequent trials and retains last benchmark result");
    }
    repeat_safe_begin();
    VIENNA_pcmBenchRequest=5U;repeat_post_preserves_live();expected5=VIENNA_pcmOutput;
    VIENNA_pcmBenchRequest=2U;repeat_post_preserves_live();expected2=VIENNA_pcmOutput;
    count=VIENNA_pcmBenchCount;VIENNA_pcmBenchRepeat=5U;VIENNA_pcmBenchRequest=2U;
    repeat_post_preserves_live();
    req(!VIENNA_pcmBenchRequest && VIENNA_pcmBenchRepeat==5U && VIENNA_pcmBenchCount==count+1U &&
        !memcmp(&expected2,&VIENNA_pcmOutput,sizeof(expected2)),
        "explicit single request has priority over continuous request and is consumed once");
    repeat_post_preserves_live();
    req(VIENNA_pcmBenchRepeat==5U && VIENNA_pcmBenchCount==count+2U &&
        !memcmp(&expected5,&VIENNA_pcmOutput,sizeof(expected5)),
        "continuous fixture resumes on the frame after an explicit request");
    VIENNA_pcmBenchRepeat=0U;

    for(k=0U;k<14U;k++){
        repeat_safe_begin();VIENNA_pcmBenchRepeat=5U;
        if(k==0U)VIENNA_pcmHardwareRelease=1U;
        else if(k==1U)VIENNA_closeGiLoop=1;
        else if(k==2U)VIENNA_closeGvLoop=1;
        else if(k==3U)VIENNA_closeGsLoop=1;
        else if(k==4U)VIENNA_pcmActualAppliedState=1U;
        else if(k==5U)VIENNA_pcmPendingState=1U;
        else if(k<9U)trip_flags[k-6U]=0U;
        else if(k<12U)trip_flags[k-9U]=1U; /* A different trip bit is not OST. */
        else if(k==12U)VIENNA_clearTrip=1;
        else VIENNA_pcmFault=VIENNA_PC_CORE;
        count=VIENNA_pcmBenchCount;repeat_post_preserves_live();
        req(!VIENNA_pcmBenchRepeat && VIENNA_pcmBenchStatus==2U && VIENNA_pcmBenchCount==count,
            "each unsafe continuous condition disarms before another numerical call");
        count=VIENNA_pcmBenchCount;repeat_post_preserves_live();
        req(VIENNA_pcmBenchCount==count,"unsafe rejection does not restart itself next frame");
    }
    for(k=0U;k<6U;k++){
        const uint16_t bad[]={1U,2U,3U,4U,7U,65535U};
        repeat_safe_begin();VIENNA_pcmBenchRepeat=bad[k];count=VIENNA_pcmBenchCount;
        repeat_post_preserves_live();
        req(!VIENNA_pcmBenchRepeat && VIENNA_pcmBenchStatus==3U && VIENNA_pcmBenchCount==count,
            "continuous request accepts only zero five or six");
    }
    repeat_safe_begin();VIENNA_pcmBenchRepeat=5U;VIENNA_pcmHardwareRelease=1U;
    VIENNA_pcmGrid.locked=1U;VIENNA_pcmGrid.faults=0U;VIENNA_pcmInputsValid=1U;
    VIENNA_pcmModeRequest=VIENNA_PC_TERMINAL_OFF;VIENNA_pcmRootMethod=PC_ROOT_PIECEWISE;
    VIENNA_clearTrip=1;trip_before=trip_calls;
    req(!VIENNA_PCMFPC_can_start() && !VIENNA_pcmBenchRepeat && VIENNA_pcmBenchStatus==2U &&
        (VIENNA_pcmFault&VIENNA_PC_MODE),"startup cannot clear trip while continuous benchmark is selected");
    req(trip_calls==trip_before,"startup repeat interlock itself performs no trip register write");
    for(j=0U;j<3U;j++)req(trip_flags[j]==EPWM_TZ_FLAG_OST,"startup repeat rejection leaves existing phase OST asserted");

    repeat_safe_begin();VIENNA_pcmBenchRepeat=5U;VIENNA_pcmHardwareRelease=1U;
    VIENNA_pcmGrid.locked=1U;VIENNA_pcmObserver.valid=1U;
    VIENNA_pcmModeActive=VIENNA_PC_TERMINAL_OFF;VIENNA_pcmRootMethodActive=PC_ROOT_PIECEWISE;
    VIENNA_pcmInput.iabc_A[0]=NAN;trip_before=trip_calls;
    (void)VIENNA_PCMFPC_select();
    req(!VIENNA_pcmBenchRepeat && (VIENNA_pcmFault&VIENNA_PC_CORE) && trip_calls==trip_before+3U,
        "real core numeric failure disarms continuous mode through fault supervisor");

    repeat_safe_begin();VIENNA_pcmBenchRepeat=5U;count=VIENNA_pcmBenchCount;trip_before=trip_calls;
    timer_step=(uint32_t)(VIENNA_CPU_SYS_CLOCK_FREQ_HZ*VIENNA_FCS_TS_SEC)+1000U;
    post();timer_step=10U;
    req(!VIENNA_pcmBenchRepeat && (VIENNA_pcmFault&VIENNA_PC_PERIOD) &&
        VIENNA_pcmBenchCount==count+1U && trip_calls==trip_before+3U,
        "continuous trial completing after body budget disarms and trips once");
    count=VIENNA_pcmBenchCount;post();
    req(VIENNA_pcmBenchCount==count,"period failure cannot repeat the test on the next tick");
    VIENNA_closeGiLoop=VIENNA_closeGvLoop=VIENNA_closeGsLoop=0;VIENNA_clearTrip=0;
    VIENNA_PCMFPC_init();
}
/* Synthetic terminal selections isolate the final guard from prediction and
 * ranking. They test a directional-progress constraint, not physical safety. */
static void terminal_fixture(PC_Input *in,PC_Output *out)
{
    unsigned j;
    memset(in,0,sizeof(*in));memset(out,0,sizeof(*out));
    in->id_ref_A=5.0f;in->iq_ref_A=0.0f;
    out->status=PC_OK;out->valid=out->requested=out->active=1U;
    out->selected_id=1U;out->pc_off_id=2U;out->hw_state=PC_id_to_hw(1U);
    out->current_count=out->intersection_count=2U;out->midpoint_prefix=3U;
    out->current_mask=out->intersection_mask=3U;
    out->budget_limit_A=.52f;out->voltage_margin_V=-.25f;
    out->idq1_A[0]=1.25f;out->idq1_A[1]=-.5f;out->np1_V=2.0f;
    for(j=0U;j<8U;j++){
        out->gi[j]=.25f+(float)j;out->gu[j]=4.0f+(float)j;
        out->gz[j]=.01f*(float)(j+1U);out->np2_V[j]=(float)j;
        out->order_i[j]=(uint16_t)(j+1U);out->order_u[j]=(uint16_t)(8U-j);
        out->switch_count[j]=(uint16_t)(j%4U);out->blocked_candidate[j]=(uint16_t)(j%2U);
        out->candidate_interval[j].idq_A[0]=10.0f+(float)j;
        out->candidate_interval[j].np_V=20.0f+(float)j;
    }
    out->idq2_A[0][0]=2.0f;out->idq2_A[0][1]=0.0f;
    out->idq2_A[1][0]=3.0f;out->idq2_A[1][1]=.2f;
    out->first_interval.blocked=1U;
    for(j=0U;j<10U;j++)out->zcdc_diag[j]=(float)j+.125f;
    out->zcdc_diag[7]=1.0f;out->zcdc_diag[8]=1.0f;out->zcdc_diag[9]=out->gz[0];
}
static void terminal_failure(PC_Input *in,PC_Output *out,uint16_t expected)
{
    PC_Output before=*out;uint16_t applied=99U;
    req(VIENNA_PCMFPC_terminal_guard(in,out,&applied)==expected,"terminal guard classifies invalid contract");
    req(!applied && !memcmp(out,&before,sizeof(before)),"terminal failure clears applied and never mutates output");
}
static void terminal_guard_checks(void)
{
    PC_Input in,saved_input;PC_Output out,before,expected;
    uint16_t applied,status;unsigned j;
    unsigned saved_trips=trip_calls;
    uint16_t actual=VIENNA_pcmActualAppliedState,pending=VIENNA_pcmPendingState;
    terminal_fixture(&in,&out);before=out;saved_input=in;expected=out;
    expected.selected_id=expected.pc_off_id;expected.hw_state=PC_id_to_hw(expected.pc_off_id);
    expected.zcdc_diag[7]=(float)expected.pc_off_id;expected.zcdc_diag[8]=0.0f;
    expected.zcdc_diag[9]=expected.gz[expected.pc_off_id-1U];applied=99U;
    req(VIENNA_PCMFPC_terminal_guard(&in,&out,&applied)==PC_OK && applied==1U,"terminal angle improvement cannot sacrifice reference projection");
    req(out.selected_id==2U && out.hw_state==4U,"terminal projection regression falls back to same-state PC-OFF");
    req(!memcmp(&out,&expected,sizeof(out)),"terminal fallback changes only selected hardware and diag7/8/9");
    req(!memcmp(&in,&saved_input,sizeof(in)),"terminal guard never mutates input");
    req(out.active==before.active && out.requested==before.requested && out.valid==before.valid &&
        out.intersection_mask==before.intersection_mask && out.budget_limit_A==before.budget_limit_A,
        "terminal fallback preserves joint trigger intersection and budget");
    applied=99U;before=out;
    req(VIENNA_PCMFPC_terminal_guard(&in,&out,&applied)==PC_OK && !applied && !memcmp(&out,&before,sizeof(out)),
        "terminal guard is idempotent after PC-OFF fallback");

    terminal_fixture(&in,&out);in.id_ref_A=2.0f;in.iq_ref_A=1.0f;
    out.idq2_A[0][0]=1.0f;out.idq2_A[0][1]=2.0f;
    out.idq2_A[1][0]=2.0f;out.idq2_A[1][1]=0.0f;before=out;applied=99U;
    req(VIENNA_PCMFPC_terminal_guard(&in,&out,&applied)==PC_OK && !applied && !memcmp(&out,&before,sizeof(out)),
        "equal reference projections retain strict-angle choice without tolerance");
    terminal_fixture(&in,&out);in.id_ref_A=3.0f;in.iq_ref_A=1.0f;
    out.idq2_A[0][0]=3.0f;out.idq2_A[0][1]=1.0f;
    out.idq2_A[1][0]=2.0f;out.idq2_A[1][1]=1.0f;before=out;applied=99U;
    req(VIENNA_PCMFPC_terminal_guard(&in,&out,&applied)==PC_OK && !applied && !memcmp(&out,&before,sizeof(out)),
        "increased reference projection preserves terminal selection");
    terminal_fixture(&in,&out);in.id_ref_A=-4.0f;
    out.idq2_A[0][0]=-1.0f;out.idq2_A[1][0]=-2.0f;applied=99U;
    req(VIENNA_PCMFPC_terminal_guard(&in,&out,&applied)==PC_OK && applied==1U && out.selected_id==2U,
        "negative reference uses signed dot instead of raw d current");
    terminal_fixture(&in,&out);in.id_ref_A=3.0f;in.iq_ref_A=-4.0f;
    out.idq2_A[0][0]=3.0f;out.idq2_A[0][1]=0.0f;
    out.idq2_A[1][0]=2.0f;out.idq2_A[1][1]=-2.0f;applied=99U;
    req(VIENNA_PCMFPC_terminal_guard(&in,&out,&applied)==PC_OK && applied==1U && out.selected_id==2U,
        "nonzero iq includes both reference components despite increased d current");
    terminal_fixture(&in,&out);out.selected_id=out.pc_off_id;out.hw_state=PC_id_to_hw(out.selected_id);
    before=out;applied=99U;
    req(VIENNA_PCMFPC_terminal_guard(&in,&out,&applied)==PC_OK && !applied && !memcmp(&out,&before,sizeof(out)),
        "unchanged PC-OFF choice is preserved");
    terminal_fixture(&in,&out);out.active=0U;in.id_ref_A=NAN;out.selected_id=0U;out.intersection_mask=0U;
    before=out;applied=99U;
    req(VIENNA_PCMFPC_terminal_guard(&in,&out,&applied)==PC_OK && !applied && !memcmp(&out,&before,sizeof(out)),
        "inactive terminal output is an exact no-op even for unused invalid fields");
    terminal_fixture(&in,&out);out.status=PC_ERR_ROOT;out.selected_id=0U;
    before=out;applied=99U;
    req(VIENNA_PCMFPC_terminal_guard(&in,&out,&applied)==PC_ERR_ROOT && !applied && !memcmp(&out,&before,sizeof(out)),
        "original core error is returned without reclassification or mutation");

    terminal_fixture(&in,&out);before=out;applied=99U;
    req(VIENNA_PCMFPC_terminal_guard(NULL,&out,&applied)==PC_ERR_INPUT && !applied && !memcmp(&out,&before,sizeof(out)),
        "NULL input rejects without output mutation");
    applied=99U;
    req(VIENNA_PCMFPC_terminal_guard(&in,NULL,&applied)==PC_ERR_INPUT && !applied,"NULL output rejects and clears applied");
    req(VIENNA_PCMFPC_terminal_guard(&in,&out,NULL)==PC_ERR_INPUT && !memcmp(&out,&before,sizeof(out)),
        "NULL applied pointer rejects without output mutation");
    for(j=0U;j<4U;j++){
        terminal_fixture(&in,&out);
        if(j<2U)out.selected_id=(uint16_t)(j?9U:0U);
        else out.pc_off_id=(uint16_t)(j==2U?0U:9U);
        terminal_failure(&in,&out,PC_ERR_INPUT);
    }
    terminal_fixture(&in,&out);out.hw_state=7U;
    terminal_failure(&in,&out,PC_ERR_INPUT);
    terminal_fixture(&in,&out);out.intersection_count=0U;
    terminal_failure(&in,&out,PC_ERR_INPUT);
    terminal_fixture(&in,&out);out.intersection_count=3U;
    terminal_failure(&in,&out,PC_ERR_INPUT);
    for(j=0U;j<4U;j++){
        terminal_fixture(&in,&out);
        out.intersection_mask=(uint16_t)(j==0U?0U:(j==1U?1U:(j==2U?2U:0x103U)));
        terminal_failure(&in,&out,PC_ERR_INPUT);
    }
    for(j=0U;j<6U;j++){
        terminal_fixture(&in,&out);
        if(j==0U)in.id_ref_A=NAN;
        else if(j==1U)in.iq_ref_A=INFINITY;
        else if(j==2U)out.idq2_A[0][0]=NAN;
        else if(j==3U)out.idq2_A[0][1]=-INFINITY;
        else if(j==4U)out.idq2_A[1][0]=INFINITY;
        else out.idq2_A[1][1]=NAN;
        terminal_failure(&in,&out,PC_ERR_NUMERIC);
    }
    terminal_fixture(&in,&out);in.id_ref_A=FLT_MAX;out.idq2_A[0][0]=FLT_MAX;
    terminal_failure(&in,&out,PC_ERR_NUMERIC);
    terminal_fixture(&in,&out);out.gz[out.pc_off_id-1U]=NAN;
    terminal_failure(&in,&out,PC_ERR_NUMERIC);
    terminal_fixture(&in,&out);in.id_ref_A=in.iq_ref_A=FLT_MAX/2.0f;
    out.idq2_A[0][0]=out.idq2_A[0][1]=1.5f;
    terminal_failure(&in,&out,PC_ERR_NUMERIC);
    terminal_fixture(&in,&out);out.status=PC_ERR_NUMERIC;before=out;applied=99U;
    status=VIENNA_PCMFPC_terminal_guard(&in,&out,&applied);
    req(status==PC_ERR_NUMERIC && !applied && !memcmp(&out,&before,sizeof(out)),"numeric core failure is not disguised as a guard application");
    req(saved_trips==trip_calls && actual==VIENNA_pcmActualAppliedState && pending==VIENNA_pcmPendingState,
        "pure terminal guard neither touches trip hardware nor live gate history");
}
static void terminal_active_dispatch_checks(void)
{
    unsigned root,j;float theta=1.57079632679f-314.159265359f*(VIENNA_FCS_DELAY_SEC+VIENNA_FCS_TS_SEC);
    /* HOST synthetic state deliberately has insufficient bus voltage, making
     * the common voltage condition active at the next reference zero. This is
     * not an ADC fixture to load on a board or a physical operating claim. */
    VIENNA_pcmGrid.locked=1U;VIENNA_pcmObserver.valid=1U;
    VIENNA_pcmHardwareRelease=1U;VIENNA_pcmModeActive=VIENNA_PC_TERMINAL_ON;
    memset(&VIENNA_pcmInput,0,sizeof(VIENNA_pcmInput));
    VIENNA_pcmInput.theta_rad=theta;VIENNA_pcmInput.omega_rad_s=314.159265359f;
    VIENNA_pcmInput.up_V=VIENNA_pcmInput.low_V=30.0f;
    VIENNA_pcmInput.id_ref_A=4.8f;VIENNA_pcmInput.iq_ref_A=.2f;
    VIENNA_pcmInput.fhat_A_s[0]=81.6496581f/.003f;
    for(j=0U;j<3U;j++){
        float phase=theta-2.09439510239f*(float)j;
        VIENNA_pcmInput.eabc_V[j]=81.6496581f*cosf(phase);
        VIENNA_pcmInput.iabc_A[j]=.1f*cosf(phase);
    }
    for(root=0U;root<2U;root++){
        VIENNA_pcmGrid.locked=1U;VIENNA_pcmObserver.valid=1U;
        VIENNA_pcmHardwareRelease=1U;VIENNA_pcmModeActive=VIENNA_PC_TERMINAL_ON;
        VIENNA_pcmRootMethodActive=(uint16_t)root;VIENNA_pcmFault=0U;
        (void)VIENNA_PCMFPC_select();
        if(!root){
            req((VIENNA_pcmFault&VIENNA_PC_MODE) && VIENNA_pcmCoreStatus==PC_ERR_CONFIG,
                "reference32 cannot bypass engineering feasibility in live control");
        }else if(VIENNA_pcmCoreStatus==PC_OK){
            req(VIENNA_pcmOutput.active && !VIENNA_pcmFault,"safe active terminal fast decision succeeds");
            terminal_dispatch_check();
        }else{
            req((VIENNA_pcmFault&VIENNA_PC_CORE) &&
                (VIENNA_pcmCoreStatus==PC_ENGINEERING_STOP_FIRST || VIENNA_pcmCoreStatus==PC_ENGINEERING_STOP_EMPTY),
                "low bus synthetic state is rejected when no safe engineering candidate exists");
        }
    }
}
static void engineering_selection_checks(void)
{
    unsigned j;uint16_t bit;float minimum=FLT_MAX;
    req(PC_fast_kernel_revision==12U && PC_engineering_diag.revision==12U &&
        PC_engineering_diag.valid && PC_engineering_diag.predicted_mask==255U,
        "engineering live output identifies complete kernel12 prediction");
    req(PC_engineering_diag.first_valid && PC_engineering_diag.first_hard_peak_A<7.0f &&
        PC_engineering_diag.first_np_peak_V<50.0f,"unavoidable first interval satisfies sampled hard guards");
    bit=(uint16_t)(1U<<(VIENNA_pcmOutput.selected_id-1U));
    req((bit&PC_engineering_diag.combined_mask) && (bit&PC_engineering_diag.soft_pool_mask) &&
        !(VIENNA_pcmOutput.current_mask&~PC_engineering_diag.soft_pool_mask),
        "current ranking and selected state belong to feasible soft pool");
    for(j=0U;j<8U;j++)if(PC_engineering_diag.combined_mask&(uint16_t)(1U<<j))
        if(PC_engineering_diag.violation_V[j]<minimum)minimum=PC_engineering_diag.violation_V[j];
    for(j=0U;j<8U;j++)if(PC_engineering_diag.soft_pool_mask&(uint16_t)(1U<<j)){
        req((PC_engineering_diag.combined_mask&(uint16_t)(1U<<j)) &&
            PC_engineering_diag.hard_peak_A[j]<7.0f && PC_engineering_diag.future_peak_A[j]<6.5f &&
            PC_engineering_diag.np_peak_V[j]<50.0f && PC_engineering_diag.violation_V[j]==minimum,
            "soft recovery preserves hard feasibility and exact least violation");
    }
}
static float prefetch_running_begin(void)
{
    unsigned k,j;float theta=0.0f;
    VIENNA_closeGiLoop=VIENNA_closeGvLoop=VIENNA_closeGsLoop=0;
    VIENNA_pcmRecordArm=VIENNA_pcmWaveArm=0U;VIENNA_PCMFPC_init();
    VIENNA_pcmModeRequest=VIENNA_PC_TERMINAL_OFF;
    for(j=0U;j<3U;j++)trip_flags[j]=EPWM_TZ_FLAG_OST;
    /* Lock acquisition alone is a sample unit test, not a complete ISR. */
    for(k=0U;k<6000U;k++){
        theta=6.28318530718f*50.0f*(float)k*VIENNA_FCS_TS_SEC;
        measurement(theta);VIENNA_PCMFPC_sample(EPWM_TZ_FLAG_OST);
    }
    req(VIENNA_pcmGrid.locked,"prefetch fixture acquires real PLL while stopped");
    for(j=0U;j<3U;j++)trip_flags[j]=0U;
    VIENNA_pcmHardwareRelease=1U;VIENNA_closeGiLoop=1;
    VIENNA_PCMFPC_reset_control();
    theta+=6.28318530718f*50.0f*VIENNA_FCS_TS_SEC;
    measurement(theta);VIENNA_PCMFPC_sample(0U);
    req(VIENNA_pcmObserver.valid && !VIENNA_pcmFault,"prefetch first live sample initializes observer");
    return theta;
}
static void prefetch_submit_post(VO_ReconstructOutput *expected,VO_State *before)
{
    PC_Config cfg;VO_ReconstructInput input;unsigned j;uint16_t selected;
    VIENNA_pcmIdRef_A=2.0f;VIENNA_pcmIqRef_A=.1f;VIENNA_PCMFPC_make_refs();
    selected=VIENNA_PCMFPC_select();
    req(VIENNA_pcmCoreStatus==PC_OK && !VIENNA_pcmFault,"prefetch frame selects a real mathematical gate");
    VIENNA_PCMFPC_submitted(selected,100U);
    if(expected && before){
        PC_default_config(&cfg);cfg.root_method=VIENNA_pcmRootMethodActive;
        cfg.first_duration_s=VIENNA_FCS_DELAY_SEC;cfg.candidate_duration_s=VIENNA_FCS_TS_SEC;
        cfg.L_H=VIENNA_PFC_INDUCTOR_VALUE;cfg.R_ohm=VIENNA_FCS_R_OHM;cfg.C_half_F=VIENNA_FCS_C_HALF_F;
        memset(&input,0,sizeof(input));
        for(j=0U;j<2U;j++){
            input.idq_start_A[j]=VIENNA_pcmMeasuredDQ_A[j];
            input.fhat_A_s[j]=VIENNA_pcmInput.fhat_A_s[j];
        }
        input.up_V=VIENNA_pcmInput.up_V;input.low_V=VIENNA_pcmInput.low_V;
        input.theta_start_rad=VIENNA_pcmInput.theta_rad;input.omega_rad_s=VIENNA_pcmInput.omega_rad_s;
        input.gate_before_hw=VIENNA_pcmActualAppliedState;input.gate_after_hw=selected;
        input.duration_before_sec=VIENNA_FCS_DELAY_SEC;
        input.duration_after_sec=VIENNA_FCS_TS_SEC-VIENNA_FCS_DELAY_SEC;
        input.sequence=VIENNA_pcmTick+1U;
        req(VO_reconstruct(&cfg,&input,expected),"independent executed-gate integral reconstruction succeeds");
        *before=VIENNA_pcmObserver;
    }
    post();
    req(VIENNA_pcmObserverPrefetch.ready==1U && VIENNA_pcmObserverPrefetch.status==1U &&
        VIENNA_pcmObserverPrefetch.sequence==VIENNA_pcmTick+1U,"post prepares the next sequence after the gate submission");
    req(VIENNA_pcmObserverPrefetch.cycles>0U &&
        VIENNA_pcmObserverPrefetch.cycles_max>=VIENNA_pcmObserverPrefetch.cycles,
        "prefetch exposes fake-clock stage counts without a target timing claim");
}
static void observer_prefetch_checks(void)
{
    float theta,idq[2],edq[2];VO_ReconstructOutput expected_delta;VO_State expected;
    VO_Config observer;uint32_t hits,fallbacks;unsigned k,j,trip_before;
    theta=prefetch_running_begin();
    req(VO_configure(&observer,VIENNA_FCS_TS_SEC,VIENNA_PFC_INDUCTOR_VALUE,
        6.28318530718f*VIENNA_PCMFPC_ESO_HZ),"independent observer configuration matches runtime");
    for(k=0U;k<2U;k++){
        prefetch_submit_post(&expected_delta,&expected);
        hits=VIENNA_pcmObserverPrefetch.hits;fallbacks=VIENNA_pcmObserverPrefetch.fallbacks;
        theta+=6.28318530718f*50.0f*VIENNA_FCS_TS_SEC;
        measurement(theta);VIENNA_PCMFPC_sample(0U);
        req(!VIENNA_pcmObserverPrefetch.ready && VIENNA_pcmObserverPrefetch.status==2U &&
            VIENNA_pcmObserverPrefetch.hits==hits+1U && VIENNA_pcmObserverPrefetch.fallbacks==fallbacks,
            "continuous complete ISR schedule consumes exactly one cached interval");
        PC_abc_to_dq(VIENNA_pcmInput.iabc_A,VIENNA_pcmInput.theta_rad,idq);
        PC_abc_to_dq(VIENNA_pcmInput.eabc_V,VIENNA_pcmInput.theta_rad,edq);
        req(expected_delta.sequence==VIENNA_pcmTick && expected_delta.valid,
            "independent integral has the consumed measurement sequence");
        req(VO_update_delta(&observer,&expected,idq,edq,expected_delta.delta_u_dq_V_s,
            VIENNA_pcmTick,VO_SOURCE_MODEL_RECONSTRUCTED),"independent observer consumes expected prior interval");
        req(!memcmp(&expected,&VIENNA_pcmObserver,sizeof(expected)),
            "prefetched interval consumption is byte-exact to direct reconstruction and observer update");
    }
    hits=VIENNA_pcmObserverPrefetch.hits;fallbacks=VIENNA_pcmObserverPrefetch.fallbacks;
    theta+=6.28318530718f*50.0f*VIENNA_FCS_TS_SEC;
    measurement(theta);VIENNA_PCMFPC_sample(0U);
    req(!VIENNA_pcmFault && VIENNA_pcmObserverPrefetch.status==3U &&
        VIENNA_pcmObserverPrefetch.hits==hits && VIENNA_pcmObserverPrefetch.fallbacks==fallbacks+1U,
        "sample-only unit schedule explicitly falls back instead of reusing a consumed cache");

    /* Deliberate state perturbations exercise private metadata matching through
     * public runtime state; no cache payload or target memory is edited. */
    for(k=0U;k<4U;k++){
        theta=prefetch_running_begin();prefetch_submit_post(NULL,NULL);
        hits=VIENNA_pcmObserverPrefetch.hits;trip_before=trip_calls;
        if(k==0U)VIENNA_pcmTick++;
        else if(k==1U)VIENNA_pcmPendingState^=1U;
        else if(k==2U)VIENNA_pcmModeRequest=VIENNA_pcmModeActive=VIENNA_PC_TERMINAL_ON;
        else VIENNA_pcmRootMethod=VIENNA_pcmRootMethodActive=PC_ROOT_BISECTION32;
        theta+=6.28318530718f*50.0f*VIENNA_FCS_TS_SEC;
        measurement(theta);VIENNA_PCMFPC_sample(0U);
        req((VIENNA_pcmFault&VIENNA_PC_OBSERVER) && !VIENNA_pcmObserverPrefetch.ready &&
            VIENNA_pcmObserverPrefetch.hits==hits && trip_calls==trip_before+3U,
            "sequence gate mode or root mismatch rejects cached history and trips all phases");
        req(!VIENNA_pcmObserver.valid && !VIENNA_pcmActualAppliedState && !VIENNA_pcmPendingState,
            "rejected expected cache cannot initialize or advance the observer");
    }
    theta=prefetch_running_begin();prefetch_submit_post(NULL,NULL);hits=VIENNA_pcmObserverPrefetch.hits;
    for(j=0U;j<3U;j++)trip_flags[j]=EPWM_TZ_FLAG_OST;
    theta+=6.28318530718f*50.0f*VIENNA_FCS_TS_SEC;
    measurement(theta);VIENNA_PCMFPC_sample(EPWM_TZ_FLAG_OST);
    req(!VIENNA_pcmObserverPrefetch.ready && VIENNA_pcmObserverPrefetch.hits==hits,
        "Trip discards a prepared interval before any cache consumption");

    theta=prefetch_running_begin();prefetch_submit_post(NULL,NULL);hits=VIENNA_pcmObserverPrefetch.hits;
    theta+=6.28318530718f*50.0f*VIENNA_FCS_TS_SEC;
    measurement(theta);VIENNA_iL1Meas_pu=NAN;VIENNA_PCMFPC_sample(0U);
    req((VIENNA_pcmFault&VIENNA_PC_CORE) && !VIENNA_pcmObserverPrefetch.ready &&
        VIENNA_pcmObserverPrefetch.hits==hits,"invalid ADC input invalidates prepared observer history");

    theta=prefetch_running_begin();prefetch_submit_post(NULL,NULL);hits=VIENNA_pcmObserverPrefetch.hits;
    VIENNA_PCMFPC_reset_control();
    req(!VIENNA_pcmObserverPrefetch.ready,"reset_control invalidates the prepared interval");
    theta+=6.28318530718f*50.0f*VIENNA_FCS_TS_SEC;
    measurement(theta);VIENNA_PCMFPC_sample(0U);
    req(VIENNA_pcmObserver.valid && !VIENNA_pcmFault && !VIENNA_pcmObserver.innovation_A[0] &&
        !VIENNA_pcmObserver.innovation_A[1] && VIENNA_pcmObserverPrefetch.hits==hits,
        "unknown history initializes observer after reset instead of consuming stale cache");
    prefetch_submit_post(NULL,NULL);VIENNA_closeGiLoop=0;post();
    req(!VIENNA_pcmObserverPrefetch.ready,"post eligibility loss invalidates cached continuation");
}
int main(void)
{
    unsigned k;uint16_t selected;float theta=0.0f,edq[2],idq[2];
    VIENNA_PCMFPC_init();measurement(theta);
    req(VIENNA_pcmRuntimeRevision==5U && VIENNA_pcmTerminalGuard.enabled==1U &&
        !VIENNA_pcmTerminalGuard.applied && !VIENNA_pcmTerminalGuard.block_count,
        "runtime revision5 initializes terminal projection guard diagnostics");
    req(!VIENNA_pcmObserverPrefetch.ready && !VIENNA_pcmObserverPrefetch.hits &&
        !VIENNA_pcmObserverPrefetch.fallbacks,"runtime initializes empty observer-prefetch diagnostics");
    req(!VIENNA_pcmHardwareRelease && !VIENNA_pcmShadowEnable,"default hardware and shadow OFF");
    req(VIENNA_pcmRootMethod==PC_ROOT_PIECEWISE && VIENNA_pcmRootMethodActive==PC_ROOT_PIECEWISE,
        "normal default uses optimized piecewise kernel without hardware release");
    req(VIENNA_pcmTiming.revision==2U && VIENNA_pcmTiming.control_hz==4000.0f &&
        fabsf(VIENNA_pcmTiming.sample_us-250.0f)<0.001f &&
        fabsf(VIENNA_pcmTiming.first_duration_us-125.0f)<0.001f &&
        VIENNA_pcmTiming.pwm_period_ticks==25000U && VIENNA_pcmTiming.tbprd_ticks==12500U &&
        VIENNA_pcmTiming.period_cycles==50000U,"compiled timing identity distinguishes the 4 kHz build");
    req(!VIENNA_PCMFPC_can_start() && (VIENNA_pcmFault&VIENNA_PC_NOT_RELEASED),"release blocks startup");
    VIENNA_pcmHardwareRelease=1U;
    req(!VIENNA_PCMFPC_can_start() && (VIENNA_pcmFault&VIENNA_PC_GRID),"unlocked PLL blocks startup");
    VIENNA_pcmGrid.locked=1U;VIENNA_pcmGrid.faults=0U;
    req(!VIENNA_PCMFPC_can_start(),"invalid inputs block startup");
    VIENNA_pcmInputsValid=1U;
    VIENNA_pcmModeRequest=VIENNA_PC_OLD_FCS;
    req(!VIENNA_PCMFPC_can_start() && (VIENNA_pcmFault&VIENNA_PC_MODE),"child legacy mode cannot bypass guarded control");
    VIENNA_pcmModeRequest=VIENNA_PC_TERMINAL_OFF;VIENNA_pcmRootMethod=PC_ROOT_BISECTION32;
    req(!VIENNA_PCMFPC_can_start() && (VIENNA_pcmFault&VIENNA_PC_MODE),"reference root is stopped numeric benchmark only");
    VIENNA_pcmRootMethod=PC_ROOT_PIECEWISE;
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
    /* Continuous live observer history uses the guarded engineering kernel.
       The preserved reference32 dispatcher is exercised by numeric bench1. */
    VIENNA_pcmRootMethod=PC_ROOT_PIECEWISE;
    for(k=0U;k<6000U;k++){
        theta=6.28318530718f*50.0f*(float)k*VIENNA_FCS_TS_SEC;
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
    theta+=6.28318530718f*50.0f*VIENNA_FCS_TS_SEC;measurement(theta);VIENNA_PCMFPC_sample(0U);
    req(VIENNA_pcmObserver.valid && VIENNA_pcmObserver.innovation_A[0]==0.0f,"missing history initializes instead of invented zero integral");
    req(VIENNA_pcmObserver.innovation_A[1]==0.0f,"missing history q innovation zero");
    req(!VIENNA_pcmFault,"first live observer does not spuriously trip");
    VIENNA_PCMFPC_submitted(4U,100U);
    req(VIENNA_pcmPendingState==4U && VIENNA_pcmActualAppliedState==0U,"submit stores pending but not actual gate");
    theta+=6.28318530718f*50.0f*VIENNA_FCS_TS_SEC;measurement(theta);VIENNA_PCMFPC_sample(0U);
    req(VIENNA_pcmActualAppliedState==4U && VIENNA_pcmInput.applied_hw_state==4U,"next post-ZERO ISR promotes pending to actual");
    req(VIENNA_pcmObserver.valid && !VIENNA_pcmFault,"reconstruction successful return does not trip runtime");
    VIENNA_pcmIdRef_A=2.0f;VIENNA_pcmIqRef_A=.1f;VIENNA_PCMFPC_make_refs();
    req(VIENNA_pcmInput.id_ref_A==2.0f && VIENNA_pcmInput.iq_ref_A==.1f,"frozen actual reference contract");
    req(fabsf(VIENNA_iL1Ref_pu+VIENNA_iL2Ref_pu+VIENNA_iL3Ref_pu)<2e-6f,"generated abc references zero sum");
    selected=VIENNA_PCMFPC_select();
    req(VIENNA_pcmCoreStatus==PC_OK && selected<=7U && selected==VIENNA_pcmOutput.hw_state,"real select calls core with valid result");
    req(!VIENNA_pcmInput.zcdc_enable && VIENNA_pcmInput.terminal_enable,"terminal OFF mode preserves explicit core contract");
    terminal_dispatch_check();
    req(VIENNA_pcmAlgorithmCycles>0U && VIENNA_pcmAlgorithmCyclesMax>=VIENNA_pcmAlgorithmCycles,"algorithm counter records stub elapsed ticks");
    req(VIENNA_pcmOutputSource==1U && !VIENNA_pcmOutputDetailValid,"guarded dispatch marks real control and summary-only substeps");
    req(!VIENNA_pcmOutputIntegralValid,"guarded control pole integral is an unavailable placeholder");
    VIENNA_pcmRecordArm=1U;VIENNA_pcmRingCount=0U;
    VIENNA_pcmInput.id_ref_A=1.25f;VIENNA_pcmInput.iq_ref_A=-.25f;
    VIENNA_pcmIdRef_A=2.5f;VIENNA_pcmIqRef_A=.5f;
    timer_count=1900000U;VIENNA_PCMFPC_post(timer_count);
    req(VIENNA_pcmRingCount==1U && VIENNA_pcmRecords[0].ref_dq_A[0]==1.25f && VIENNA_pcmRecords[0].ref_dq_A[1]==-.25f,"record uses decision reference before later outer update");
    VIENNA_pcmRecordArm=0U;
    VIENNA_pcmModeRequest=VIENNA_PC_TERMINAL_ON;trip_calls=0U;
    theta+=6.28318530718f*50.0f*VIENNA_FCS_TS_SEC;measurement(theta);VIENNA_PCMFPC_sample(0U);
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
    timer_count=1900000U;
    VIENNA_PCMFPC_post(timer_count+(uint32_t)(VIENNA_CPU_SYS_CLOCK_FREQ_HZ*VIENNA_FCS_TS_SEC)+1000U);
    req((VIENNA_pcmFault&VIENNA_PC_PERIOD) && trip_calls==3U,"injected body period overrun trips all three phases");
    req(VIENNA_pcmBodyCycles>VIENNA_CPU_SYS_CLOCK_FREQ_HZ*VIENNA_FCS_TS_SEC,"body overrun uses configured period budget");
    VIENNA_pcmFault=0U;VIENNA_pcmHardwareRelease=0U;trip_calls=0U;
    VIENNA_pcmOutputIntegralValid=VIENNA_pcmOutputDetailValid=1U;
    req(VIENNA_PCMFPC_select()==0U && (VIENNA_pcmFault&VIENNA_PC_OBSERVER) && trip_calls==3U,"release revoked blocks select with OFF trip");
    req(!VIENNA_pcmOutputIntegralValid && !VIENNA_pcmOutputDetailValid,"failed select invalidates stale integral and detail flags");
    VIENNA_pcmHardwareRelease=1U;VIENNA_pcmModeRequest=VIENNA_PC_TERMINAL_ON;
    VIENNA_pcmRootMethod=PC_ROOT_PIECEWISE;
    theta+=6.28318530718f*50.0f*VIENNA_FCS_TS_SEC;measurement(theta);VIENNA_PCMFPC_sample(4U);
    req(VIENNA_pcmModeActive==VIENNA_PC_TERMINAL_ON && VIENNA_pcmRootMethodActive==PC_ROOT_PIECEWISE,"stopped mode and root request may become active");
    VIENNA_closeGiLoop=1;VIENNA_pcmRootMethod=PC_ROOT_BISECTION32;trip_calls=0U;
    theta+=6.28318530718f*50.0f*VIENNA_FCS_TS_SEC;measurement(theta);VIENNA_PCMFPC_sample(0U);
    req((VIENNA_pcmFault&VIENNA_PC_MODE) && trip_calls==3U && !VIENNA_closeGiLoop,"running root-method change trips all phases");
    /* Independently reacquire grid and exercise integrated fast select. */
    VIENNA_closeGiLoop=VIENNA_closeGvLoop=VIENNA_closeGsLoop=0;VIENNA_PCMFPC_init();
    VIENNA_pcmModeRequest=VIENNA_PC_TERMINAL_ON;VIENNA_pcmRootMethod=PC_ROOT_PIECEWISE;
    for(k=0U;k<6000U;k++){
        theta=6.28318530718f*50.0f*(float)k*VIENNA_FCS_TS_SEC;measurement(theta);VIENNA_PCMFPC_sample(EPWM_TZ_FLAG_OST);
    }
    VIENNA_pcmHardwareRelease=1U;VIENNA_closeGiLoop=1;VIENNA_PCMFPC_reset_control();
    theta+=6.28318530718f*50.0f*VIENNA_FCS_TS_SEC;measurement(theta);VIENNA_PCMFPC_sample(0U);
    VIENNA_pcmIdRef_A=2.0f;VIENNA_pcmIqRef_A=0.0f;VIENNA_PCMFPC_make_refs();
    selected=VIENNA_PCMFPC_select();
    req(VIENNA_pcmCoreStatus==PC_OK && selected==VIENNA_pcmOutput.hw_state && !VIENNA_pcmFault,"integrated fast dispatch succeeds");
    engineering_selection_checks();
    terminal_dispatch_check();
    req(VIENNA_pcmOutputSource==1U && !VIENNA_pcmOutputDetailValid && PC_fast_output_summaries_available,"fast dispatch marks summary-only output");
    req(!VIENNA_pcmOutputIntegralValid && !PC_fast_output_integrals_available,"fast control integral is invalid placeholder");
    req(VIENNA_pcmOutput.first_interval.substep[0].root_iterations==PC_FAST_SUBSTEP_UNAVAILABLE,"fast dispatch does not mislabel old substeps valid");
    VIENNA_PCMFPC_submitted(selected,100U);
    theta+=6.28318530718f*50.0f*VIENNA_FCS_TS_SEC;measurement(theta);VIENNA_PCMFPC_sample(0U);
    req(VIENNA_pcmObserver.valid && !VIENNA_pcmFault && !VIENNA_pcmOutputSource,"fast FULL_SUBSTEPS observer reconstruction remains valid next tick");
    benchmark_checks();
    diagnostic_checks();
    terminal_guard_checks();
    terminal_active_dispatch_checks();
    observer_prefetch_checks();
    continuous_benchmark_checks();
    printf("runtime_host_checks=%u real_PLL_ESO_core_with_stub_timer_and_trip=PASS\n",tests);
    printf("No target execution: next sample assumes one ZERO crossed; analog ADC, ISR latency, AQ and hardware trip paths require bench tests.\n");
    return 0;
}
