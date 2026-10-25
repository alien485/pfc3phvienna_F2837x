#ifndef VIENNA_PCMFPC_OBSERVER_H
#define VIENNA_PCMFPC_OBSERVER_H

#include <stdint.h>
#include "vienna_pcmfpc_zcdc.h"

enum { VO_SOURCE_NONE=0U, VO_SOURCE_MEASURED_INTEGRAL=1U,
       VO_SOURCE_MODEL_RECONSTRUCTED=2U };
enum { VO_FAULT_NONE=0U, VO_FAULT_INVALID=1U, VO_FAULT_SEQUENCE=2U,
       VO_FAULT_INTERVAL=4U, VO_FAULT_RECONSTRUCTION=8U };
typedef struct {
    float sample_sec, inductance_H, omega_eso_rad_s;
    float k_current, k_disturbance;
} VO_Config;
typedef struct {
    float i_hat_A[2], f_hat_A_s[2], innovation_A[2];
    uint32_t last_sequence;
    uint16_t initialized, valid, source, faults;
} VO_State;
typedef struct {
    float idq_start_A[2], fhat_A_s[2], up_V, low_V;
    float theta_start_rad, omega_rad_s;
    float duration_before_sec, duration_after_sec;
    uint16_t gate_before_hw, gate_after_hw;
    uint32_t sequence;
} VO_ReconstructInput;
typedef struct {
    float delta_u_dq_V_s[2], model_end_idq_A[2], model_end_n_V;
    float endpoint_quadrature_dq_V_s[2];
    float duration_sec;
    uint32_t sequence;
    uint16_t valid, blocked, source, faults;
} VO_ReconstructOutput;

uint16_t VO_configure(VO_Config *cfg,float sample_sec,float inductance_H,
                      float omega_eso_rad_s);
void VO_reset(VO_State *state);
/* The first call initializes and deliberately ignores delta_u. Subsequent
 * calls consume exactly one PREVIOUS full measurement interval (V*s).
 * No cumulative integral differencing is performed here. Sequence wrap is
 * unsigned and defined. Missing/repeated intervals invalidate the state. */
uint16_t VO_update_delta(const VO_Config *cfg,VO_State *state,
                         const float idq_A[2],const float edq_V[2],
                         const float delta_u_dq_V_s[2],uint32_t sequence,
                         uint16_t source);
/* Two executed-gate segments span previous ADC timestamp to current ADC.
 * This is a MODEL integral, not an inferred/measured hardware pole voltage.
 * Each segment uses the core diode projection's two substeps. Returned delta
 * integrates each projected constant alpha-beta pole over its rotating Park
 * angle analytically. Model event and piecewise-voltage errors remain. */
uint16_t VO_reconstruct(const PC_Config *cfg,const VO_ReconstructInput *in,
                        VO_ReconstructOutput *out);
/* Exact rotation integral for a CONSTANT alpha-beta pole voltage segment. */
void VO_integrate_pole_segment(const float pole_abc_V[3],float theta_start_rad,
                              float omega_rad_s,float duration_sec,
                              float integral_dq_V_s[2]);

#endif
