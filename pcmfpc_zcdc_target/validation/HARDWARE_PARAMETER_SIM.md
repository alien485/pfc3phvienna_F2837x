# TI-parameter closed-loop host simulation

One plant and one controller implementation, three modes. No hardware was operated.

| Case | Bus mean V | Tracking RMS A | Zero-window RMS A (a,b,c) | THD 2..40 % (a,b,c) | NP RMS V | Peak A | Trip |
|---|---:|---:|---|---|---:|---:|---:|
| old_fcs_100ohm | 169.99668 | 0.085672 | 0.088742, 0.086585, 0.088454 | 1.1085, 0.9428, 0.9546 | 0.142566 | 2.77679 | 0 |
| pc_off_100ohm | 170.00680 | 0.085492 | 0.091390, 0.087492, 0.086039 | 0.9534, 0.9866, 1.0251 | 0.105438 | 2.77679 | 0 |
| pc_on_100ohm | 170.00636 | 0.086476 | 0.089777, 0.090211, 0.087067 | 0.9192, 0.9360, 0.9859 | 0.101783 | 2.77679 | 0 |
| old_fcs_50ohm | 170.00298 | 0.090807 | 0.095674, 0.125679, 0.092473 | 0.4587, 0.4495, 0.4999 | 0.169090 | 5.00486 | 0 |
| pc_off_50ohm | 169.99800 | 0.082507 | 0.077449, 0.074778, 0.075258 | 0.5433, 0.4995, 0.5867 | 0.147300 | 5.01071 | 0 |
| pc_on_50ohm | 169.99727 | 0.083148 | 0.078865, 0.072841, 0.081098 | 0.5337, 0.5157, 0.6517 | 0.146861 | 5.01316 | 0 |
| old_fcs_50ohm_sensitivity | 169.99574 | 0.140040 | 0.143627, 0.132766, 0.139086 | 0.3785, 0.3816, 0.3925 | 0.163279 | 5.21318 | 0 |
| pc_off_50ohm_sensitivity | 169.99925 | 0.139029 | 0.136821, 0.137550, 0.129456 | 0.4046, 0.3827, 0.3930 | 0.155260 | 5.22961 | 0 |
| pc_on_50ohm_sensitivity | 169.99791 | 0.139432 | 0.132700, 0.139593, 0.129185 | 0.3862, 0.3629, 0.3750 | 0.157243 | 5.22461 | 0 |

Read results.json for precise sampling, outer-loop, protection and integration definitions.
Sensitivity = physical L=2.1mH, R=0.26ohm against controller3mH/0.2ohm; added bounded current/voltage ADC noise.
All cases retain nominal per-half440uF, 50Hz, 100V line RMS, 170V bus,20us control and0.02A PC budget.
PLL, ESO, SI peak reference and PI20Hz/zeta1 with prefilter and back-calculation are shared by all modes.
This includes a 141.42V precharged startup, not a zero-voltage cold-start validation.
Reference limit5.5A, instantaneous trip7A and filtered softwareOV204V are proposed values, not verified board ratings.
The raw physical current peak and first exceedance of the original4A threshold are both recorded.
Switch frequencies use whole-run gate edge counts/2/duration, including startup; they are not fixed50kHz PWM frequencies.
CSV is diagnostic control-rate data. THD uses every 0.5us plant midpoint sample and does not use CSV decimation.
