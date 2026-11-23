#ifndef VIENNA_PCMFPC_ENGINEERING_H
#define VIENNA_PCMFPC_ENGINEERING_H
#include "vienna_pcmfpc_fast.h"
/* Explicit single-state FCS engineering controller, NOT original mode7.
 * L/R/C/50ohm load and constant-grid-dq incremental F assumptions apply.
 * First delay: measured ADC + all CONTROL nodes <7A and abs(NP)<50V.
 * Candidate: common start/all old+next/CONTROLend <7A; future next0/next1/
 * CONTROLend <6.5A; all NP nodes <50V. 0.5A is unqualified design headroom.
 * Soft recovery: min max(0,abs(np2)-max(10,.95abs(np1))) among safe candidates.
 * Then original independent rankings/current-budget/terminal projection rule.
 * No hardware I/O or protection configuration is performed by this core.
 */
enum { PC_ENGINEERING_REVISION=12U, PC_ENGINEERING_STOP_FIRST=0x100U,
       PC_ENGINEERING_STOP_EMPTY=0x101U };
enum { PC_ENGINEERING_GUARD_NONE=0U, PC_ENGINEERING_GUARD_CURRENT=1U,
       PC_ENGINEERING_GUARD_NP=2U };
typedef struct {
    uint16_t revision,status,valid,first_valid,predicted_mask;
    uint16_t hard7_mask,future65_mask,np50_mask,combined_mask,soft_pool_mask;
    uint16_t soft_infeasible,first_guard_reason,selected_id;
    PC_Real first_hard_peak_A,first_np_peak_V,first_dc_V;
    PC_Real recovery_bound_V,min_violation_V;
    PC_Real hard_peak_A[8],future_peak_A[8],np_peak_V[8],dc2_V[8],violation_V[8];
} PC_EngineeringDiagnostics;
/* Last PC_run_fast only; non-reentrant. Standalone observer predictions do
 * not alter this diagnostic. valid=1 only after complete numeric selection;
 * actual direction validity remains PC_Output.valid. Predicted_mask and
 * first_valid explicitly identify partial traces on failure. */
extern volatile PC_EngineeringDiagnostics PC_engineering_diag;
#endif
