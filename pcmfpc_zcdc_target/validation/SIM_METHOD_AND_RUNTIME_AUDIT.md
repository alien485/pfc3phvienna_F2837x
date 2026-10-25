# Stage C method, runtime comparison and limits

These are executed host simulations of a newly implemented abc plant, not a replay of the original 10mH/2350uF SLX.
The plant uses double for independent physical integration; the actual C control kernel, PLL and observer use float32.
The port source is built directly into the host executable. This is not a bit-exact simulation of the entire TI ISR.

## Independent physical plant

At h=0.5us, free_j = i_j + h/Lactual*(e_j - Ractual*i_j). A separate 36-round double bisection solves a common mu so the sum of three projected next currents is zero.
ON: i_next=free+(h/L)*mu. OFF: i_next=max(z-h/L*Uup,0)+min(z+h/L*Ulow,0). The model therefore permits OFF phases to block at zero.
This physical step does NOT call PC_predict_interval. That function is used only within the controller and its model-voltage observer.
Ipos=sum OFF positive midpoint currents, Ineg=sum OFF negative midpoint-current magnitudes, Iload=(Uup+Ulow)/Rload.
Each half is advanced separately: dUup=(Ipos-Iload)/C_half; dUlow=(Ineg-Iload)/C_half. Their difference gives dn/dt=sum(S*i)/C_half as required by KCL.
The physical model has ideal switches/diodes, equal capacitors and no measured saturation curve, device drops, magnetic hysteresis or thermal model.

## Sampling and observer

Every 20us cycle has nominal common ADC effective timestamp at 10us, controller invocation at 12us and next gate load at 20us.
ADC samples follow the source SOC sequence: acquisition-end times 8.24us + slot*0.31us. Four held values are independently quantized then averaged.
All signal channels include a hypothetical first-order 6.8us RC, inferred from Rfltr*Cfltr, not an identified complete sensor transfer function.
The nominal cases include current step12/2048A, grid step454/2048V and bus step717.79/4096V. Calibrations are assumed exact; no original board-specific gain/offset mismatch is injected.
Sensitivity combines physical2.1mH/0.26ohm against controller3mH/0.2ohm with independent bounded ADC noises +/-0.01A and +/-0.10V. It is one combined test, not identification of separate sensitivities.
The model-integral observer uses two actually executed10us gate segments between ADC timestamps and the previous omega; source=MODEL, not a claim of measured-pole ESO equivalence.

## Common outer-loop correspondence

| Item | Host model | TI target |
|---|---|---|
| Kp | .02122601433380058 A/V | .0212260143f A/V |
| Ki | 4.822205351961461 A/(V*s) | 4.82220535f |
| Prefilter tau | .00440172344074206s | .00440172344f |
| Back calculation kaw | 227.18374142820204/s | 227.183741f |
| Reference slew | 150V/s staircase at10kHz | same rate in instrumentation ISR |
| PI/filter update | 50kHz, after next gate selection | 50kHz, after AQ submission |
| Ref used by inner loop | previous voltage-loop output | previous voltage-loop output |
| Limit | [0,5.5]A peak | same peak SI limit |
| Load feedforward | none | none |

Both implement filtered += dt/(tau+dt)*(slewed-filtered); unsat=kp*(filtered-Vbus)+integral; idRef=clip(unsat); integral+=dt*(ki*error+kaw*(idRef-unsat)).
The chosen20Hz, zeta1 design at Rnom50ohm/Ceq220uF gives positive Kp. At20Hz/zeta.707 this small capacitor/load would give negative Kp, so it was not used.
Audited target: vienna_pcmfpc_runtime.c:233; gate submission vienna.h:709; PI call vienna.h:756; 10k reference ramp vienna.h:889.
Differences remain: host outer arithmetic is double; target outer arithmetic is float32. Host chooses a fixed10k instrumentation phase at ZERO; real Timer2 phase and preemption are not reproduced.
The simulation invokes control at12us with no modelled computation duration. It assumes the command reaches next ZERO. It cannot prove the TI code meets its8.14us write window.
The old-FCS case computes the same observer diagnostically although the released legacy runtime may skip observer work when shadow is disabled; the old FCS kernel never consumes Fhat.
Startup is from a141.42V precharged bus with a2V capacitor imbalance and model control permission after60ms + PLL lock. It is not the target's exact offset-calibration/RMS/clearTrip handshake or zero-voltage cold start.

## Results and interpretation

For the50ohm nominal case PC-OFF tracking RMS=0.082506668A, PC-ON=0.083147659A: ON is 0.7769% higher in this fixed window.
This does not support a blanket terminal-ZCDC improvement claim on the hardware-parameter model. Report the per-phase zero-window, THD, midpoint and gate-change statistics together.
All nine runs complete without controller/observer errors or proposed7A/204V trip. The50ohm cases exceed the ORIGINAL4A threshold, including the initial passive rectification interval, so they are not demonstrations under the old4A setting.
The proposed7A/5.5A/204V values are not measured board capabilities. The ideal host comparator is checked on each0.5us physical step; it is not a CMPSS filter/propagation-delay model.
SoftwareOV uses an equivalent189ms bandwidth updated50kHz in the host, rather than the exact target10k GUI task. This is deliberately not claimed as high-speed OV validation.
Raw Fourier quadrature uses all2MHz midpoint samples for exactly0.6..0.8s (ten50Hz periods), with no decimation before harmonics2..40. CSV uses50kHz in the steady window and5kHz earlier; plots from CSV are not the source of THD.
No real sensor bandwidth or instrument THD floor is claimed. The result remains a finite-step ideal-switching engineering model, not Simscape/HIL or laboratory evidence.

Source fingerprints at analysis time:
```json
{
  "vienna_pcmfpc_runtime.c": "7ce2d6dae50327c7d6dad289163a44c7d3fb37bd1d61e295db9bc3684fb134d3",
  "vienna.h": "b4e823bf038d4b19b04528b8edb17878d7f67c928ca253129135f17976f18216",
  "ti_closed_loop.c": "528c6eff7c1619bd744eb03cfda6a4086bc0bf0433bb169a75e1a60664a88c8a"
}
```
