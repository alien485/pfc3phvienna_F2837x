#ifndef VIENNA_GRID_SYNC_H
#define VIENNA_GRID_SYNC_H

#include <stdint.h>

/* Positive-sequence, amplitude-normalized SRF PLL. SI units throughout.
 * theta_rad is the angle AT THE CURRENT MEASUREMENT, not one sample ahead.
 * This is a hardware adaptation, not a copy of the Simulink PLL. A negative
 * sequence disturbs a plain SRF PLL; qualification must include real voltages.
 */
enum { VG_FAULT_NONE=0U, VG_FAULT_INVALID=1U, VG_FAULT_LOW_VOLTAGE=2U,
       VG_FAULT_REVERSE_SEQUENCE=4U, VG_FAULT_FREQUENCY=8U };
typedef struct {
    float sample_sec, nominal_hz, min_magnitude_V;
    float kp_rad_s, ki_rad_s2, omega_min_rad_s, omega_max_rad_s;
    float lock_phase_sin_max;
    uint16_t lock_samples, reverse_samples;
} VG_Config;
typedef struct {
    float theta_rad, next_theta_rad, omega_rad_s;
    float ed_V, eq_V, magnitude_V, frequency_hz;
    float phase_error, integrator_rad_s, previous_alpha_V, previous_beta_V;
    uint16_t initialized, locked, faults, lock_count, reverse_count;
} VG_State;

uint16_t VG_configure(VG_Config *cfg, float sample_sec, float nominal_hz,
                      float min_magnitude_V);
void VG_reset(VG_State *state);
uint16_t VG_run(const VG_Config *cfg, VG_State *state, const float eabc_V[3]);

#endif
