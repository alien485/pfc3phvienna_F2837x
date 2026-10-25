"""Read existing simulation CSV/JSON and export standard matplotlib figures."""
from pathlib import Path
import csv
import hashlib
import json
import re
import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt

TARGET = Path(__file__).resolve().parents[1]
ROOT = Path(__file__).resolve().parents[5]
OUT = ROOT / "output/ti_pcmfpc_zcdc_port/hardware_sim"


def load_csv(path):
    with path.open(newline="") as f:
        reader = csv.DictReader(f)
        rows = list(reader)
    return {name: np.array([float(row[name]) for row in rows]) for name in rows[0]}


def main():
    manifest = json.loads((OUT / "results.json").read_text())
    names = ["old_fcs", "pc_off", "pc_on"]
    labels = ["Old FCS kernel", "PC terminal OFF", "PC terminal ON"]
    colors = ["#2878b5", "#e07a21", "#229954"]
    data = [load_csv(OUT / f"{name}_50ohm.csv") for name in names]
    metrics = [next(r for r in manifest["cases"] if r["case"] == f"{name}_50ohm") for name in names]
    plt.rcParams.update({"font.size": 10, "axes.spines.top": False,
                         "axes.spines.right": False, "savefig.facecolor": "white"})
    fig, axes = plt.subplots(3, 2, figsize=(13.0, 10.0), constrained_layout=True)
    for d, label, color in zip(data, labels, colors):
        t = d["t_s"]
        ref = d["idref_used_A"] * np.cos(d["theta_rad"])
        one = (t >= .76) & (t < .78)
        axes[0, 0].plot((t[one] - .76) * 1000, d["ia_A"][one], color=color, lw=.8, label=label)
        zero = (t >= .764) & (t <= .766)
        axes[0, 1].plot((t[zero] - .765) * 1000, (d["ia_A"] - ref)[zero], color=color, lw=.8, label=label)
        steady = t >= .6
        axes[1, 0].plot(t[steady], (d["up_V"] + d["low_V"])[steady], color=color, lw=.7, label=label)
        axes[1, 1].plot((t[one] - .76) * 1000, (d["low_V"] - d["up_V"])[one], color=color, lw=.8, label=label)
    d = data[2]
    one = (d["t_s"] >= .76) & (d["t_s"] < .78)
    axes[0, 0].plot((d["t_s"][one] - .76) * 1000,
                    (d["idref_used_A"] * np.cos(d["theta_rad"]))[one],
                    color="#333333", ls="--", lw=1.2, label="PC-ON phase-A reference")
    axes[0, 0].set(title="(a) Phase-A current: one 50 Hz period", xlabel="Time from 0.760 s (ms)", ylabel="ADC current (A)")
    axes[0, 0].legend(fontsize=8, loc="upper right")
    axes[0, 1].set(title="(b) Phase-A zero-crossing tracking error", xlabel="Time from 0.765 s (ms)", ylabel="ADC current minus own reference (A)")
    axes[1, 0].axhline(170.0, color="black", ls="--", lw=.8)
    axes[1, 0].set(title="(c) Total DC bus", xlabel="Time (s)", ylabel="ADC bus (V)")
    axes[1, 1].set(title="(d) Midpoint difference, n = Ulow - Uup", xlabel="Time from 0.760 s (ms)", ylabel="ADC midpoint difference (V)")
    rms = [r["tracking_RMS_A"] for r in metrics]
    bars = axes[2, 0].bar(np.arange(3), rms, color=colors, width=.6)
    axes[2, 0].bar_label(bars, labels=[f"{x:.5f}" for x in rms], padding=4)
    axes[2, 0].set_xticks(np.arange(3), ["Old FCS", "PC OFF", "PC ON"])
    axes[2, 0].set(title="(e) Three-phase actual tracking RMS", ylabel="RMS error (A)", ylim=(0, max(rms) * 1.25))
    x = np.arange(3)
    for j, (r, label, color) in enumerate(zip(metrics, labels, colors)):
        axes[2, 1].bar(x + (j-1)*.24, r["THD_2_40_percent"], width=.24, color=color, label=label)
    axes[2, 1].set_xticks(x, ["Phase A", "Phase B", "Phase C"])
    axes[2, 1].set(title="(f) Synchronous THD, harmonics 2-40", ylabel="THD (%)")
    axes[2, 1].legend(fontsize=8)
    for ax in axes.flat:
        ax.grid(True, alpha=.18)
        ax.set_axisbelow(True)
    fig.suptitle("TI-parameter host model: 100 V line RMS, 50 Hz, 170 V, 50 ohm\n"
                 "3 mH / 0.2 ohm per phase; 440 uF per half; 20 us control + 10 us sample-to-load", fontsize=13)
    fig.supxlabel("Functional model only: plots use ADC records; RMS and THD use all 2 MHz physical-plant midpoint samples, 0.600-0.800 s.\n"
                  "Shared PLL, model-integral ESO, voltage PI and 5.5 A peak reference. No hardware or DSP-timing validation.", fontsize=8)
    for suffix in ["png", "pdf", "svg"]:
        fig.savefig(OUT / f"50ohm_three_mode_comparison.{suffix}", dpi=240)
    plt.close(fig)

    runtime_path = TARGET / "vienna_pcmfpc_runtime.c"
    vienna_path = TARGET / "vienna.h"
    runtime = runtime_path.read_text(errors="replace").splitlines()
    vienna = vienna_path.read_text(errors="replace").splitlines()
    outer_line = next(i + 1 for i, s in enumerate(runtime) if "void VIENNA_PCMFPC_outer(void)" in s)
    gate_line = next(i + 1 for i, s in enumerate(vienna) if "VIENNA_HAL_updateFCSState(VIENNA_fcsSwitchState)" in s)
    call_line = next(i + 1 for i, s in enumerate(vienna) if "VIENNA_PCMFPC_outer();" in s)
    instrument_line = next(i + 1 for i, s in enumerate(vienna) if "float delta=VIENNA_vBusRef_pu" in s)
    notes = ["# Stage C method, runtime comparison and limits", "",
             "These are executed host simulations of a newly implemented abc plant, not a replay of the original 10mH/2350uF SLX.",
             "The plant uses double for independent physical integration; the actual C control kernel, PLL and observer use float32.",
             "The port source is built directly into the host executable. This is not a bit-exact simulation of the entire TI ISR.", "",
             "## Independent physical plant", "",
             "At h=0.5us, free_j = i_j + h/Lactual*(e_j - Ractual*i_j). A separate 36-round double bisection solves a common mu so the sum of three projected next currents is zero.",
             "ON: i_next=free+(h/L)*mu. OFF: i_next=max(z-h/L*Uup,0)+min(z+h/L*Ulow,0). The model therefore permits OFF phases to block at zero.",
             "This physical step does NOT call PC_predict_interval. That function is used only within the controller and its model-voltage observer.",
             "Ipos=sum OFF positive midpoint currents, Ineg=sum OFF negative midpoint-current magnitudes, Iload=(Uup+Ulow)/Rload.",
             "Each half is advanced separately: dUup=(Ipos-Iload)/C_half; dUlow=(Ineg-Iload)/C_half. Their difference gives dn/dt=sum(S*i)/C_half as required by KCL.",
             "The physical model has ideal switches/diodes, equal capacitors and no measured saturation curve, device drops, magnetic hysteresis or thermal model.", "",
             "## Sampling and observer", "",
             "Every 20us cycle has nominal common ADC effective timestamp at 10us, controller invocation at 12us and next gate load at 20us.",
             "ADC samples follow the source SOC sequence: acquisition-end times 8.24us + slot*0.31us. Four held values are independently quantized then averaged.",
             "All signal channels include a hypothetical first-order 6.8us RC, inferred from Rfltr*Cfltr, not an identified complete sensor transfer function.",
             "The nominal cases include current step12/2048A, grid step454/2048V and bus step717.79/4096V. Calibrations are assumed exact; no original board-specific gain/offset mismatch is injected.",
             "Sensitivity combines physical2.1mH/0.26ohm against controller3mH/0.2ohm with independent bounded ADC noises +/-0.01A and +/-0.10V. It is one combined test, not identification of separate sensitivities.",
             "The model-integral observer uses two actually executed10us gate segments between ADC timestamps and the previous omega; source=MODEL, not a claim of measured-pole ESO equivalence.", "",
             "## Common outer-loop correspondence", "",
             "| Item | Host model | TI target |", "|---|---|---|",
             "| Kp | .02122601433380058 A/V | .0212260143f A/V |",
             "| Ki | 4.822205351961461 A/(V*s) | 4.82220535f |",
             "| Prefilter tau | .00440172344074206s | .00440172344f |",
             "| Back calculation kaw | 227.18374142820204/s | 227.183741f |",
             "| Reference slew | 150V/s staircase at10kHz | same rate in instrumentation ISR |",
             "| PI/filter update | 50kHz, after next gate selection | 50kHz, after AQ submission |",
             "| Ref used by inner loop | previous voltage-loop output | previous voltage-loop output |",
             "| Limit | [0,5.5]A peak | same peak SI limit |",
             "| Load feedforward | none | none |", "",
             "Both implement filtered += dt/(tau+dt)*(slewed-filtered); unsat=kp*(filtered-Vbus)+integral; idRef=clip(unsat); integral+=dt*(ki*error+kaw*(idRef-unsat)).",
             "The chosen20Hz, zeta1 design at Rnom50ohm/Ceq220uF gives positive Kp. At20Hz/zeta.707 this small capacitor/load would give negative Kp, so it was not used.",
             f"Audited target: vienna_pcmfpc_runtime.c:{outer_line}; gate submission vienna.h:{gate_line}; PI call vienna.h:{call_line}; 10k reference ramp vienna.h:{instrument_line}.",
             "Differences remain: host outer arithmetic is double; target outer arithmetic is float32. Host chooses a fixed10k instrumentation phase at ZERO; real Timer2 phase and preemption are not reproduced.",
             "The simulation invokes control at12us with no modelled computation duration. It assumes the command reaches next ZERO. It cannot prove the TI code meets its8.14us write window.",
             "The old-FCS case computes the same observer diagnostically although the released legacy runtime may skip observer work when shadow is disabled; the old FCS kernel never consumes Fhat.",
             "Startup is from a141.42V precharged bus with a2V capacitor imbalance and model control permission after60ms + PLL lock. It is not the target's exact offset-calibration/RMS/clearTrip handshake or zero-voltage cold start.", "",
             "## Results and interpretation", ""]
    off, on = metrics[1], metrics[2]
    delta = 100.0 * (on["tracking_RMS_A"] / off["tracking_RMS_A"] - 1.0)
    notes += [f"For the50ohm nominal case PC-OFF tracking RMS={off['tracking_RMS_A']:.9f}A, PC-ON={on['tracking_RMS_A']:.9f}A: ON is {delta:.4f}% higher in this fixed window.",
              "This does not support a blanket terminal-ZCDC improvement claim on the hardware-parameter model. Report the per-phase zero-window, THD, midpoint and gate-change statistics together.",
              "All nine runs complete without controller/observer errors or proposed7A/204V trip. The50ohm cases exceed the ORIGINAL4A threshold, including the initial passive rectification interval, so they are not demonstrations under the old4A setting.",
              "The proposed7A/5.5A/204V values are not measured board capabilities. The ideal host comparator is checked on each0.5us physical step; it is not a CMPSS filter/propagation-delay model.",
              "SoftwareOV uses an equivalent189ms bandwidth updated50kHz in the host, rather than the exact target10k GUI task. This is deliberately not claimed as high-speed OV validation.",
              "Raw Fourier quadrature uses all2MHz midpoint samples for exactly0.6..0.8s (ten50Hz periods), with no decimation before harmonics2..40. CSV uses50kHz in the steady window and5kHz earlier; plots from CSV are not the source of THD.",
              "No real sensor bandwidth or instrument THD floor is claimed. The result remains a finite-step ideal-switching engineering model, not Simscape/HIL or laboratory evidence.", "",
              "Source fingerprints at analysis time:", "```json",
              json.dumps({str(p.name): hashlib.sha256(p.read_bytes()).hexdigest() for p in [runtime_path, vienna_path, TARGET / "tests/ti_closed_loop.c"]}, indent=2), "```"]
    (OUT / "METHOD_AND_RUNTIME_AUDIT.md").write_text("\n".join(notes)+"\n", encoding="utf-8")
    print("Exported50ohm_three_mode_comparison.png/.pdf/.svg and METHOD_AND_RUNTIME_AUDIT.md")


if __name__ == "__main__":
    main()
