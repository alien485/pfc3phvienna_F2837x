// Single-state FCS-MPC: three binary Vienna gates, four exact comparisons.
// Include after vienna_settings.h. All currents/voltages use TI's pu bases.
#ifndef VIENNA_FCS_MPC_H
#define VIENNA_FCS_MPC_H

#include <stdint.h>

#ifdef __TI_COMPILER_VERSION__
#pragma FUNC_ALWAYS_INLINE(VIENNA_FCS_rail)
#pragma FUNC_ALWAYS_INLINE(VIENNA_FCS_run)
#endif

static inline float32_t VIENNA_FCS_rail(float32_t i, float32_t v,
                                      float32_t vp, float32_t vn)
{
    // Near zero, use grid polarity rather than amplifying ADC sign noise.
    return ((i > VIENNA_FCS_SIGN_EPS_PU) ||
            ((i >= -VIENNA_FCS_SIGN_EPS_PU) && (v >= 0.0f))) ? vp : -vn;
}

static inline uint16_t VIENNA_FCS_run(float32_t i1, float32_t i2, float32_t i3,
        float32_t v1, float32_t v2, float32_t v3,
        float32_t r1, float32_t r2, float32_t r3,
        float32_t vp, float32_t vn, uint16_t applied, uint16_t balance)
{
    const float32_t c = 0.57735026919f;
    const float32_t a = 1.0f - VIENNA_FCS_TS_SEC *
            VIENNA_FCS_R_OHM / VIENNA_PFC_INDUCTOR_VALUE;
    const float32_t b = VIENNA_FCS_TS_SEC * VIENNA_V_MAX_SENSE_VOLTS /
            (VIENNA_PFC_INDUCTOR_VALUE * VIENNA_I_MAX_SENSE_AMPS);
    const float32_t ad = 1.0f - VIENNA_FCS_DELAY_SEC *
            VIENNA_FCS_R_OHM / VIENNA_PFC_INDUCTOR_VALUE;
    const float32_t bd = VIENNA_FCS_DELAY_SEC * VIENNA_V_MAX_SENSE_VOLTS /
            (VIENNA_PFC_INDUCTOR_VALUE * VIENNA_I_MAX_SENSE_AMPS);
    const float32_t n = VIENNA_FCS_TS_SEC * VIENNA_I_MAX_SENSE_AMPS /
            (VIENNA_FCS_C_HALF_F * VIENNA_V_MAX_SENSE_VOLTS);
    const float32_t nd = VIENNA_FCS_DELAY_SEC * VIENNA_I_MAX_SENSE_AMPS /
            (VIENNA_FCS_C_HALF_F * VIENNA_V_MAX_SENSE_VOLTS);
    float32_t s1 = (float32_t)(applied & 1U);
    float32_t s2 = (float32_t)((applied >> 1U) & 1U);
    float32_t s3 = (float32_t)((applied >> 2U) & 1U);
    float32_t t1 = VIENNA_FCS_rail(i1, v1, vp, vn);
    float32_t t2 = VIENNA_FCS_rail(i2, v2, vp, vn);
    float32_t t3 = VIENNA_FCS_rail(i3, v3, vp, vn);
    float32_t u1 = (1.0f - s1) * t1;
    float32_t u2 = (1.0f - s2) * t2;
    float32_t u3 = (1.0f - s3) * t3;
    float32_t va = (2.0f * v1 - v2 - v3) * (1.0f / 3.0f);
    float32_t vb = (v2 - v3) * c;
    float32_t ia = ad * ((2.0f * i1 - i2 - i3) * (1.0f / 3.0f)) +
            bd * (va - (2.0f * u1 - u2 - u3) * (1.0f / 3.0f));
    float32_t ib = ad * ((i2 - i3) * c) + bd * (vb - (u2 - u3) * c);
    // Delta=VPM-VMN; positive grid-to-converter midpoint current reduces Delta.
    float32_t delta = vp - vn - nd * (s1 * i1 + s2 * i2 + s3 * i3);
    float32_t w = balance ? VIENNA_FCS_W_NP : 0.0f;
    float32_t ea, eb, g1, g2, g3, d1, d2, d3;
    float32_t q1, q2, q3, q12, q13, q23, z, cost, best;
    uint16_t state, selected;

    // Predict the ADC measurement to the next ZERO with the applied state.
    i1 = ia;
    i2 = -0.5f * ia + 0.86602540378f * ib;
    i3 = -i1 - i2;
    t1 = VIENNA_FCS_rail(i1, v1, vp, vn);
    t2 = VIENNA_FCS_rail(i2, v2, vp, vn);
    t3 = VIENNA_FCS_rail(i3, v3, vp, vn);
    // All-OFF base prediction; each ON bit adds one Clarke column * b*tj.
    ea = a * ia + b * (va - (2.0f * t1 - t2 - t3) * (1.0f / 3.0f)) -
            (2.0f * r1 - r2 - r3) * (1.0f / 3.0f);
    eb = a * ib + b * (vb - (t2 - t3) * c) - (r2 - r3) * c;
    g1 = b * t1;
    g2 = b * t2;
    g3 = b * t3;
    d1 = -n * i1;
    d2 = -n * i2;
    d3 = -n * i3;

    // J=J0+q1*S1+q2*S2+q3*S3+q12*S1*S2+q13*S1*S3+q23*S2*S3.
    // Clarke column norms are 4/9, cross products -2/9. No candidate loop.
    q1 = (4.0f / 3.0f) * ea * g1 + (4.0f / 9.0f) * g1 * g1 +
            w * d1 * (2.0f * delta + d1) + VIENNA_FCS_W_SWITCH * (1.0f - 2.0f * s1);
    q2 = (-2.0f / 3.0f * ea + 2.0f * c * eb) * g2 +
            (4.0f / 9.0f) * g2 * g2 + w * d2 * (2.0f * delta + d2) +
            VIENNA_FCS_W_SWITCH * (1.0f - 2.0f * s2);
    q3 = (-2.0f / 3.0f * ea - 2.0f * c * eb) * g3 +
            (4.0f / 9.0f) * g3 * g3 + w * d3 * (2.0f * delta + d3) +
            VIENNA_FCS_W_SWITCH * (1.0f - 2.0f * s3);
    q12 = (-4.0f / 9.0f) * g1 * g2 + 2.0f * w * d1 * d2;
    q13 = (-4.0f / 9.0f) * g1 * g3 + 2.0f * w * d1 * d3;
    q23 = (-4.0f / 9.0f) * g2 * g3 + 2.0f * w * d2 * d3;

    // (S1,S2)=00,10,01,11. Choose S3 from its exact cost difference.
    selected = (q3 < 0.0f) ? 4U : 0U;
    best = (q3 < 0.0f) ? q3 : 0.0f;
    z = q3 + q13;
    state = (z < 0.0f) ? 5U : 1U;
    cost = q1 + ((z < 0.0f) ? z : 0.0f);
    if((cost < best) || ((cost == best) && (state < selected)))
    {
        selected = state;
        best = cost;
    }
    z = q3 + q23;
    state = (z < 0.0f) ? 6U : 2U;
    cost = q2 + ((z < 0.0f) ? z : 0.0f);
    if((cost < best) || ((cost == best) && (state < selected)))
    {
        selected = state;
        best = cost;
    }
    z = q3 + q13 + q23;
    state = (z < 0.0f) ? 7U : 3U;
    cost = q1 + q2 + q12 + ((z < 0.0f) ? z : 0.0f);
    if((cost < best) || ((cost == best) && (state < selected)))
    {
        selected = state;
    }
    return selected;
}

#endif
