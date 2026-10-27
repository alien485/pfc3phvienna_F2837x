#ifndef VIENNA_PCMFPC_FAST_H
#define VIENNA_PCMFPC_FAST_H

#include "vienna_pcmfpc_zcdc.h"

/* Host differential-build switch only, not a runtime control parameter.
 * 0 uses the current-variable finite-active-set root for CONTROL_ONLY.
 * 1 reproduces the preceding voltage-variable control root for comparison.
 * FULL/SUMMARY retain the voltage-variable reference arithmetic either way.
 */
#ifndef PC_FAST_LEGACY_CONTROL_ROOT
#define PC_FAST_LEGACY_CONTROL_ROOT 0
#endif
#if PC_FAST_LEGACY_CONTROL_ROOT != 0 && PC_FAST_LEGACY_CONTROL_ROOT != 1
#error PC_FAST_LEGACY_CONTROL_ROOT_must_be_0_or_1
#endif

/* This implementation uses static angle plans and is NOT reentrant. On the
 * DSP it is owned exclusively by CPU1 ISR1; do not call it from CLA/ISR2.
 * The reference PC_run/PC_predict_interval remain unchanged.
 * Both fast entry points require cfg->root_method == PC_ROOT_PIECEWISE.
 * CONTROL_ONLY's lambda=c*mu active-set root solves the same real-arithmetic
 * diode model as FULL/SUMMARY. Its floating-point operation order differs;
 * near ties, zero-current blocking and terminal selection are not promised
 * bit-identical to those paths. No cost/zero epsilon is added to mask this.
 * Revision 10 batches eight candidates in one shared model core and caches
 * common setup scalars. N=1 retains standalone reads and failure writes.
 * Revision 9 omits unused ON events only in single-ON NULL plans; the
 * generic solver and shared plans retain revision 8 arithmetic.
 * Revision 8 uses two constant CONTROL substeps and separate ordinary/fine
 * profile kernels generated from one model body. Profiling API is unchanged.
 * Revision 7 also simplifies the bounded integer candidate intersection.
 * Revision 6 specializes CONTROL masks with at least two ON phases; its
 * model, phase-order sums, closed-segment and residual rules are unchanged.
 */
enum { PC_FAST_SUMMARY_ONLY = 0U, PC_FAST_FULL_SUBSTEPS = 1U,
       PC_FAST_CONTROL_ONLY = 2U };
#define PC_FAST_SUBSTEP_UNAVAILABLE ((uint16_t)0xffffU)

/* PC_run_fast defines all PC_Output basic fields, gi/gu/gz and zcdc_diag.
 * On PC_OK all nine PC_Interval current/midpoint/blocked summaries are defined.
 * PC_run_fast uses CONTROL_ONLY: u_integral_dq_V_s is an unavailable zero
 * placeholder, not a measured or zero physical voltage integral. This is
 * exposed by PC_fast_output_integrals_available=0. Their PC_Substep
 * members are unavailable except root_iterations, explicitly set to 0xffff.
 * Detailed fields may contain older RAM data and must not be exported as
 * current diagnostics. On failure only basic output/status/safe gate IDs
 * are valid; summaries are invalid. Flags describe the latest fast run.
 */
extern volatile uint16_t PC_fast_output_substeps_available;
extern volatile uint16_t PC_fast_output_summaries_available;
extern volatile uint16_t PC_fast_output_integrals_available;
/* Diagnostic build marker (revision 10), refreshed by PC_run_fast only. */
extern volatile uint16_t PC_fast_kernel_revision;

/* Optional one-shot profiling, owned by the same CPU1 ISR1 as the kernel.
 * clock returns a raw periodic DOWN-counter in [0,period-1]; period is its
 * modulus (inclusive hardware PRD + 1), not the PRD register value. Every
 * measured span, including the whole run, must be shorter than one period.
 * configure/arm are called only while the owner is idle, never from clock.
 * mode 1 records disjoint stage buckets; mode 2 also records nested roots.
 * root_cycles is INCLUDED in delay/candidates and must not be added again.
 * Clock instrumentation/reads perturb timings. clock_pair_overhead is an
 * observed adjacent-read delta, not a correction automatically subtracted.
 */
typedef uint32_t (*PC_FastProfileClock)(void);
typedef struct {
    uint32_t setup_cycles, delay_cycles, plan_seed_cycles, candidates_cycles;
    uint32_t select_cycles, terminal_prepare_cycles, angles_cycles, output_cycles;
    uint32_t total_cycles, root_cycles, clock_pair_overhead;
    uint16_t mode, valid, completed, core_status;
    uint16_t root_calls, angle_calls, read_count, clock_fault;
} PC_FastProfile;
extern volatile PC_FastProfile PC_fast_profile;

#ifdef __cplusplus
extern "C" {
#endif
uint16_t PC_run_fast(const PC_Config *cfg, const PC_Input *in, PC_Output *out);

/* Configure cancels any outstanding request and invalidates the report.
 * arm(0) cancels and invalidates; arm(1/2) requires a clock/nonzero modulus.
 * Invalid arms return PC_ERR_CONFIG and cancel any older pending request.
 * A successful arm is consumed by exactly the next PC_run_fast, including
 * error/null-input calls. Ordinary unarmed runs never read the clock and
 * preserve the frozen report. valid=1 only after PC_OK and in-range samples;
 * completed/core_status distinguish a consumed failed or clock-invalid run.
 * On failed runs partial buckets are not a stage-time breakdown.
 */
void PC_fast_profile_configure(PC_FastProfileClock clock, uint32_t period);
uint16_t PC_fast_profile_arm(uint16_t mode);

/* FULL_SUBSTEPS writes every PC_Substep field on PC_OK, including pole_abc_V
 * and theta_end_rad needed by the executed-gate observer reconstruction.
 * SUMMARY_ONLY defines interval idq/np/u_integral/blocked, with the same
 * unavailable substep markers as PC_run_fast. CONTROL_ONLY defines
 * idq/np/blocked and skips pole/integral diagnostics; its u_integral is a zero
 * placeholder and must not feed VO_reconstruct. On error the interval is
 * invalid. The global availability flags describe PC_run_fast only; for a
 * standalone interval the caller must use its detail argument and status.
 */
uint16_t PC_fast_predict_interval(const PC_Config *cfg, const PC_Real dq0[2],
    PC_Real up_V, PC_Real low_V, uint16_t hw_state,
    PC_Real theta_rad, PC_Real omega_rad_s, const PC_Real fhat_A_s[2],
    PC_Real duration_s, PC_Interval *out, uint16_t detail);
#ifdef __cplusplus
}
#endif
#endif
