#ifndef VIENNA_PCMFPC_ZCDC_H
#define VIENNA_PCMFPC_ZCDC_H

#include <stdint.h>

/* Host oracle can define PC_REAL_TYPE=double. The TI build uses float only. */
#ifdef PC_REAL_TYPE
typedef PC_REAL_TYPE PC_Real;
#else
typedef float PC_Real;
#endif

enum {
    PC_OK = 0U,
    PC_ERR_INPUT = 1U,
    PC_ERR_CONFIG = 2U,
    PC_ERR_ROOT = 3U,
    PC_ERR_MIDPOINT = 4U,
    PC_ERR_INTERSECTION = 5U,
    PC_ERR_NUMERIC = 6U
};
enum { PC_ROOT_BISECTION32 = 0U, PC_ROOT_PIECEWISE = 1U };

typedef struct {
    PC_Real first_duration_s, candidate_duration_s;
    PC_Real L_H, R_ohm, C_half_F;
    PC_Real delta_i_A, zero_window_rad;
    uint16_t root_method;
    /* 1 preserves all eight gz and spread diagnostics. 0 only computes
       intersection gz for control: spread_all is then explicitly unavailable. */
    uint16_t diagnostic_all_angles;
} PC_Config;

typedef struct {
    PC_Real iabc_A[3], eabc_V[3];
    PC_Real up_V, low_V;
    PC_Real id_ref_A, iq_ref_A;
    PC_Real theta_rad, omega_rad_s, fhat_A_s[2];
    uint16_t applied_hw_state, zcdc_enable, terminal_enable;
} PC_Input;

typedef struct {
    PC_Real old_abc_A[3], free_abc_A[3], next_abc_A[3], pole_abc_V[3];
    PC_Real idq_A[2], np_V, mu_V, theta_end_rad;
    PC_Real root_residual_A, root_bracket_width_V;
    uint16_t blocked, root_iterations;
} PC_Substep;

typedef struct {
    PC_Real idq_A[2], np_V, u_integral_dq_V_s[2];
    uint16_t blocked;
    PC_Substep substep[2];
} PC_Interval;

typedef struct {
    uint16_t status, selected_id, pc_off_id, hw_state;
    uint16_t valid, requested, active, current_count;
    uint16_t intersection_count, midpoint_prefix, intersection_mask;
    uint16_t order_i[8], order_u[8]; /* MATLAB IDs 1..8 */
    uint16_t current_mask, switch_count[8], blocked_candidate[8];
    PC_Real gi[8], gu[8], gz[8], idq2_A[8][2], np2_V[8];
    PC_Real idq1_A[2], np1_V, budget_limit_A, voltage_margin_V;
    PC_Real zcdc_diag[10];
    PC_Interval first_interval, candidate_interval[8];
} PC_Output;

#ifdef __cplusplus
extern "C" {
#endif
void PC_default_config(PC_Config *cfg);
void PC_abc_to_dq(const PC_Real abc[3], PC_Real theta, PC_Real dq[2]);
void PC_dq_to_abc(const PC_Real dq[2], PC_Real theta, PC_Real abc[3]);
uint16_t PC_id_to_hw(uint16_t matlab_id);
uint16_t PC_hw_to_id(uint16_t hw_state);
uint16_t PC_predict_interval(const PC_Config *cfg, const PC_Real dq0[2],
    PC_Real up_V, PC_Real low_V, uint16_t hw_state,
    PC_Real theta_rad, PC_Real omega_rad_s, const PC_Real fhat_A_s[2],
    PC_Real duration_s, PC_Interval *out);
uint16_t PC_run(const PC_Config *cfg, const PC_Input *in, PC_Output *out);
#ifdef __cplusplus
}
#endif
#endif
