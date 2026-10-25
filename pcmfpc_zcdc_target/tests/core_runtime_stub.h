#ifndef CORE_RUNTIME_STUB_H
#define CORE_RUNTIME_STUB_H
/* Forced include replaces TI register/header dependencies for HOST tests.
   The real runtime.c is compiled unchanged; mathematical modules are real. */
#define VIENNA_H
#include <stdint.h>
typedef float float32_t;
#define CPUTIMER0_BASE 0U
#define EPWM1_BASE 1U
#define EPWM2_BASE 2U
#define EPWM3_BASE 3U
#define EPWM_TZ_FLAG_OST 4U
#include "../vienna_settings.h"

extern volatile float VIENNA_iL1Meas_pu,VIENNA_iL2Meas_pu,VIENNA_iL3Meas_pu;
extern volatile float VIENNA_v1Meas_pu,VIENNA_v2Meas_pu,VIENNA_v3Meas_pu;
extern volatile float VIENNA_vBusPMMeas_pu,VIENNA_vBusMNMeas_pu,VIENNA_vBusMeas_pu;
extern volatile float VIENNA_vBusRefSlewed_pu,VIENNA_iL1Ref_pu,VIENNA_iL2Ref_pu,VIENNA_iL3Ref_pu;
extern volatile float VIENNA_iLRef_pu,VIENNA_gv_out,VIENNA_voltage_error_pu;
extern volatile int16_t VIENNA_closeGiLoop,VIENNA_closeGvLoop,VIENNA_closeGsLoop;
extern volatile int16_t VIENNA_firstTimeGvLoop,VIENNA_clearTrip;
extern volatile uint16_t VIENNA_fcsSwitchState;
uint32_t CPUTimer_getTimerCount(uint32_t base);
uint16_t EPWM_getTripZoneFlagStatus(uint32_t base);
void VIENNA_HAL_forceOSTPWMTrip(uint32_t base);
void VIENNA_resetFCSLoops(void);
#endif
