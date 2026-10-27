#ifndef VIENNA_PCMFPC_RUNTIME_H
#define VIENNA_PCMFPC_RUNTIME_H
#include <stdint.h>
#include "vienna_pcmfpc_zcdc.h"
#include "vienna_pcmfpc_fast.h"
#include "vienna_grid_sync.h"
#include "vienna_pcmfpc_observer.h"

enum { VIENNA_PC_OLD_FCS=0U, VIENNA_PC_TERMINAL_OFF=1U, VIENNA_PC_TERMINAL_ON=2U };
enum { VIENNA_PC_NO_FAULT=0U, VIENNA_PC_MODE=1U, VIENNA_PC_NOT_RELEASED=2U,
       VIENNA_PC_GRID=4U, VIENNA_PC_OBSERVER=8U, VIENNA_PC_CORE=16U,
       VIENNA_PC_PERIOD=32U, VIENNA_PC_OVERVOLTAGE=64U };
typedef struct {
    uint32_t tick,write_cycles,body_cycles;
    float iabc_A[3],ref_dq_A[2],pred_dq_A[2],theta_rad,omega_rad_s;
    float up_V,low_V,fhat_A_s[2],innovation_A[2],np_V,gi,gu,gz;
    uint16_t mode,pc_off_id,selected_id,active,changed,intersection,prefix;
    uint16_t actual_hw,pending_hw,fault,output_source,core_status;
} VIENNA_PC_Record;
typedef struct { float iabc_A[3],ref_dq_A[2],theta_rad; } VIENNA_PC_Wave;
extern volatile uint16_t VIENNA_pcmModeRequest,VIENNA_pcmModeActive;
extern volatile uint16_t VIENNA_pcmHardwareRelease,VIENNA_pcmShadowEnable;
extern volatile uint16_t VIENNA_pcmFault,VIENNA_pcmCoreStatus;
extern volatile uint16_t VIENNA_pcmActualAppliedState,VIENNA_pcmPendingState;
extern volatile uint16_t VIENNA_pcmRootMethod,VIENNA_pcmRootMethodActive,VIENNA_pcmInputsValid;
/* InputFaultMask bits 0..2 currents, 3..5 grid voltages, 6 up, 7 low;
 * bus bits include nonpositive inputs. ReferenceSaturation: 1 lower, 2 upper. */
extern volatile uint16_t VIENNA_pcmInputFaultMask,VIENNA_pcmReferenceSaturation;
extern volatile float VIENNA_pcmMeasuredDQ_A[2];
/* Output source: 0 unavailable this tick, 1 control, 2 shadow, 3 numeric bench.
 * DetailValid=0 means PC_Output interval substeps must not be interpreted. */
extern volatile uint16_t VIENNA_pcmOutputSource,VIENNA_pcmOutputDetailValid;
/* 0 means interval u_integral fields are placeholders, not physical zeros. */
extern volatile uint16_t VIENNA_pcmOutputIntegralValid;
/* One-shot numeric benchmark, no ADC substitution or gate submission.
 * Request 1=reference32, 2=fast plain, 3=fast stage profile, 4=fast+root profile.
 * Requests 2..4 use intersection angles only; 3/4 instrument one call and
 * never submit its gate. Status 0=idle,1=OK,2=unsafe,3=bad request,4=core error. */
extern volatile uint16_t VIENNA_pcmBenchRequest,VIENNA_pcmBenchStatus;
extern volatile uint16_t VIENNA_pcmBenchSelectedId,VIENNA_pcmBenchHWState;
extern volatile uint32_t VIENNA_pcmBenchCycles,VIENNA_pcmBenchCyclesMax,VIENNA_pcmBenchCount;
extern volatile uint32_t VIENNA_pcmTick,VIENNA_pcmAlgorithmCycles,VIENNA_pcmAlgorithmCyclesMax;
extern volatile uint32_t VIENNA_pcmWriteCycles,VIENNA_pcmWriteCyclesMax;
extern volatile uint32_t VIENNA_pcmBodyCycles,VIENNA_pcmBodyCyclesMax;
extern volatile uint32_t VIENNA_pcmRingCount,VIENNA_pcmRingOverflow,VIENNA_pcmWaveCount;
extern volatile uint16_t VIENNA_pcmRecordArm,VIENNA_pcmWaveArm;
extern volatile float VIENNA_pcmIdRef_A,VIENNA_pcmIqRef_A;
extern VG_State VIENNA_pcmGrid;
extern VO_State VIENNA_pcmObserver;
extern PC_Input VIENNA_pcmInput;
extern PC_Output VIENNA_pcmOutput;
extern volatile VIENNA_PC_Record VIENNA_pcmRecords[128];
extern volatile VIENNA_PC_Wave VIENNA_pcmWave[2000];
void VIENNA_PCMFPC_init(void);
void VIENNA_PCMFPC_sample(uint16_t trip);
void VIENNA_PCMFPC_reset_control(void);
uint16_t VIENNA_PCMFPC_can_start(void);
void VIENNA_PCMFPC_make_refs(void);
uint16_t VIENNA_PCMFPC_select(void);
void VIENNA_PCMFPC_submitted(uint16_t state,uint32_t elapsed_cycles);
void VIENNA_PCMFPC_outer(void);
void VIENNA_PCMFPC_post(uint32_t start_count);
#endif
