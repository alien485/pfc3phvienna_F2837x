#ifndef OFFLINE_CURRENT_LIMIT_H
#define OFFLINE_CURRENT_LIMIT_H

#include "../vienna_pcmfpc_fast.h"

/* HOST experiment only. This module is not part of the MCU control path.
 * Node samples cannot certify the continuous current peak between samples. */
enum {
    OCL_POLICY_DISABLED = 0U,
    OCL_POLICY_ENDPOINT = 1U,
    OCL_POLICY_SUBSTEP_SAMPLED = 2U
};
enum {
    OCL_STOP_DELAY = 0x100U,
    OCL_STOP_NO_FEASIBLE = 0x101U,
    OCL_ERR_CONFIG = 0x102U
};
enum { OCL_GUARD_NONE = 0U, OCL_GUARD_DELAY = 1U,
       OCL_GUARD_NO_FEASIBLE = 2U };
enum { OCL_SOURCE_NONE = 0U, OCL_SOURCE_BASE = 1U,
       OCL_SOURCE_FIRST_FULL = 2U, OCL_SOURCE_CANDIDATE_FULL = 3U,
       OCL_SOURCE_CONFIG = 4U, OCL_SOURCE_SELECTION = 5U };

typedef struct {
    uint16_t policy;
    PC_Real current_limit_A;
    /* Explicit model headroom, not a change to the physical trip threshold.
     * Default zero is only a concept experiment, not a safety calibration. */
    PC_Real safety_margin_A;
} OCL_Config;

typedef struct {
    uint16_t status, policy, base_status, aux_status;
    uint16_t error_source, guard_reason, valid;
    uint16_t feasible_mask, rejected_mask, feasible_count;
    uint16_t endpoint_feasible_mask, substep_feasible_mask;
    uint16_t endpoint_evaluated_mask, substep_evaluated_mask;
    uint16_t delay_full_evaluated, delay_violation, no_feasible;
    uint16_t raw_selected_id, raw_pc_off_id, failed_candidate_id;
    PC_Real current_limit_A, safety_margin_A, effective_limit_A;
    PC_Real first_endpoint_peak_A, first_substep_peak_A;
    PC_Real first_peak_used_A, first_margin_A;
    PC_Real endpoint_peak_A[8], substep_peak_A[8], peak_used_A[8];
    /* Max phase-current endpoint difference between authoritative CONTROL
     * output and auxiliary FULL output; no claim of bit equivalence. */
    PC_Real first_ctrl_full_endpoint_diff_A;
    PC_Real ctrl_full_endpoint_diff_A[8];
    PC_Real selected_margin_A, min_feasible_margin_A;
} OCL_Diagnostics;

#ifdef __cplusplus
extern "C" {
#endif

/* policy2, current_limit7A, margin0. Does not alter firmware or protection. */
void OCL_default_config(OCL_Config *config);

/* First call PC_run_fast to obtain authoritative predictions and gi/gu. With
 * policy0 return that exact output/status, without auxiliary model/selection
 * calculations; unused threshold/margin values are not validated.
 *
 * Enabled policies reject magnitude >= (current_limit_A-safety_margin_A).
 * Both check initial measured abc and the authoritative first endpoint.
 * Endpoint policy checks each candidate's start/end. Sampled policy adds the
 * FULL predictor's old/next abc at its two substeps, while also retaining the
 * CONTROL endpoints in the peak check. Each auxiliary candidate starts at
 * the authoritative idq1/np1 and original first/candidate times.
 *
 * FULL runs use private temporaries and never make public CONTROL substeps
 * valid. gi/gu/idq/np and interval data remain authoritative; gz is a derived
 * angle cost recomputed for the filtered intersection when needed.
 *
 * Stops/errors set status, valid0, active0, selected_id0, pc_off_id0, hw0.
 * hw0 is an invalid-command placeholder, NOT proof that OFF is feasible.
 * The HOST integration must latch the fault and stop, never auto-restart.
 * Base/FULL errors retain original PC status0..6, with error_source identifying
 * the origin. OCL_STOP_DELAY and OCL_STOP_NO_FEASIBLE are distinct guard stops.
 * Global PC_fast_output_* flags describe the underlying PC_run_fast only;
 * callers must check this wrapper's return status before using its selection.
 * Zeroed diagnostic peaks are unavailable unless the matching evaluated flag
 * is set. diag may be NULL. This function inherits fast-core non-reentrancy.
 */
uint16_t OCL_run(const PC_Config *config, const PC_Input *input,
                 PC_Output *output, const OCL_Config *limit,
                 OCL_Diagnostics *diag);

/* Pure filtered reselection of an already successful PC_run_fast output.
 * No new predictions/gi/gu are calculated. valid/requested/voltage_margin,
 * blocked flags, switch counts and input/config must belong to that same run.
 * Feasible bits refer to MATLAB IDs1..8. Mask0 stops, high bits are config error.
 * Mask0xff preserves the existing base output byte-for-byte. Other masks sort
 * feasible IDs only: order_i/u hold N valid IDs followed by zeros, topK=min(3,N),
 * budget=sqrt(best-feasible gi)+delta_i_A, midpoint prefix starts min(3,N),
 * intersection count1..2. Original tie order and strict angle improvement hold.
 * This entry does not validate physical feasibility of its supplied mask.
 */
uint16_t OCL_select_feasible(const PC_Config *config, const PC_Input *input,
                             PC_Output *output, uint16_t feasible_mask);

#ifdef __cplusplus
}
#endif

#endif
