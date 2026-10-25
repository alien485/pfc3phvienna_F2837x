# PLL and hardware observer adaptation

Implemented files are `vienna_grid_sync.h/.c` and `vienna_pcmfpc_observer.h/.c`.
No register access, Trip clearing, gate writes, dynamic allocation or ISR
printing occurs in these modules. They are ordinary C28x/host C functions.

## Grid angle contract

`VG_run` consumes the grid phase voltages in volts at the current ADC effective
timestamp. Clarke is amplitude invariant; positive a,b,c sequence produces a
positive rotating alpha-beta vector. The SRF PLL uses `eq/|e|` as its error,
20 Hz natural frequency and damping sqrt(1/2), with the PI coefficients formed
by `VG_configure`. The output `state.theta_rad` belongs to that SAME input
timestamp; `next_theta_rad` is stored separately for the following call.
There is no extra pi/2 shift: at lock, ed>0 and eq~0 for the cos-based Park.

The frequency qualification range is 40..70 Hz; the phase lock criterion is
|eq|/|e|<0.05 for a continuous 20 ms. The default voltage magnitude minimum is
an explicit configure argument, not a new hardware protection threshold.
Sixteen consecutive measurable reverse-rotation samples invalidate phase
order. Low voltage/invalid numerical input resets history; a reverse sequence
or out-of-band frequency prevents `locked`. Callers MUST require `locked`
in the new-control-mode startup guard, not merely a successful function call.
`VG_reset` is separate from resetting the ESO: repeatedly resetting the PLL
whenever the stopped current loop is reset would prevent startup lock.

This is a plain normalized SRF PLL, not a reproduction of the Simulink PLL.
It has no negative-sequence decoupling. Real imbalance, distorted voltage,
ADC interchannel skew and analog sensor phase shifts remain hardware and
closed-loop validation concerns. This module does not certify real lock.

## ESO contract

`VO_update_delta` takes previous complete measurement-interval deltaU in V*s,
never cumulative U, instantaneous grid voltage or a second difference.
On the first call only, iHat=idq, Fhat=edq/L and innovation=0. Thereafter:

```
iPrior = iPosterior - deltaU/L + Ts*Fposterior
innovation = idq - iPrior
iPosterior = iPrior + (1-rho^2)*innovation
Fposterior += ((1-rho)^2/Ts)*innovation
rho = exp(-omegaESO*Ts)
```

rho and the two gains are calculated only in `VO_configure`. Fhat already
includes dq rotation; no extra omega cross-coupling is added. A uint32 sequence
counter detects missed/repeated intervals (including correct modulo wrap).
A change between measured-integral and reconstructed-integral input sources
forces fresh initialization rather than retaining incompatible history.

The observer is not connected to a newly invented pole ADC channel.
`VO_SOURCE_MODEL_RECONSTRUCTED` is explicit and distinct from the ideal
`VO_SOURCE_MEASURED_INTEGRAL` reference. A voltage-integral modelling error
deltaU changes innovation by approximately deltaU/L and the equivalent
interval disturbance by deltaU/(L*Ts); it is not covered by the original
measured-input ESO validation.

## Executed-voltage reconstruction

`VO_reconstruct` covers the previous ADC effective timestamp to the current
one with up to two explicit executed-gate segments. With the existing 20 us
control/10 us approximate sample-to-ZERO delay this is normally the prior
active gate for 10 us followed by the gate loaded at ZERO for 10 us. The
caller must supply actual load history, not the just-selected next gate.
Unknown Trip timing invalidates that history and requires observer reset.

Each segment uses the same diode-blocking common-voltage projection as the
mode-7 predictor, including zero-current floating OFF phases and midpoint
advancement. It carries the first segment's current and capacitor split to
the second. It never obtains voltage by differentiating successive measured
currents. The projected pole voltage is piecewise constant over each of four
model substeps. Its rotating dq integral is evaluated analytically as:

```
deltaU_dq = h*sinc(omega*h/2)*Park(theta_start + omega*h/2)*u_alpha_beta
```

The sinc zero-frequency limit uses a small-angle series. This is exact for
each reconstructed constant alpha-beta voltage segment and constant omega,
not for the real switching waveform. Diode event times, device drops,
capacitor-voltage evolution and ADC delays are approximations. The core's
endpoint-Park quadrature is also returned for comparison. The analytic
reconstruction need not equal that endpoint discrete predictor at roundoff
level; the expected integration difference is a modelling choice, not hidden.

## Reproducible host tests

From this target directory run:

```
powershell -ExecutionPolicy Bypass -File tests/observer_run_tests.ps1
```

The script compiles with the locally installed clang 15 toolchain and VS2022
BuildTools CRT environment. It creates only `tests/observer_build` and an
`observer_results.txt` record; it does not clean or delete files. Override the
two script parameters for another installation. No Matlab/CCS connection or
hardware action occurs.

Tests include balanced 50 Hz; 55 Hz with 3% negative sequence, deterministic
noise and 454/2048 V quantization; reverse sequence, voltage loss, 80 Hz and
NaN; ESO against an independent double cumulative-integral recurrence over
9999 updates; first-call behavior, interval sequence/source/reset guards;
constant-pole rotating integral against 20000-point midpoint quadrature;
and all eight before/after gate pairs plus flat zero blocking. Numeric results
are in `observer_results.txt`. Passing these module tests does not certify
closed-loop stability, target float32 math equivalence or DSP execution time.
