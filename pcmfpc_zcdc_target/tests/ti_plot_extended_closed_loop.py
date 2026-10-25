"""Export dynamic stress comparison from unchanged, real simulation CSVs."""
from pathlib import Path
import csv
import json
import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt

ROOT = Path(__file__).resolve().parents[5]
OUT = ROOT / "output/ti_pcmfpc_zcdc_port/hardware_sim_extended"


def main():
    figure, axes = plt.subplots(4, 1, figsize=(11, 9.2), sharex=True,
                                gridspec_kw={"height_ratios": [0.65, 1.5, 1, 1]})
    colors = ["#414141", "#2166ac", "#c45031"]
    for k, (mode, label) in enumerate([( "old_fcs", "Old FCS"), ("pc_off", "PC-OFF"), ("pc_on", "PC-ON")]):
        with (OUT / f"{mode}_load_100_50_100ohm.csv").open(newline="") as stream:
            records = list(csv.DictReader(stream))
        fields = ["t_s", "up_V", "low_V", "idref_A", "actual_load_ohm"]
        data = {field: np.array([float(row[field]) for row in records]) for field in fields}
        keep = (data["t_s"] >= 0.25) & (data["t_s"] <= 0.60)
        t = data["t_s"][keep]
        if k == 0:
            axes[0].step(t, data["actual_load_ohm"][keep], where="post", color="#444444", lw=1.5)
        axes[1].plot(t, (data["up_V"] + data["low_V"])[keep], color=colors[k], label=label, lw=1.2)
        axes[2].plot(t, data["idref_A"][keep], color=colors[k], lw=1.1)
        axes[3].plot(t, (data["low_V"] - data["up_V"])[keep], color=colors[k], lw=0.9)
    axes[0].set_ylabel("Load (ohm)")
    axes[0].set_yticks([50, 100])
    axes[0].set_ylim(42, 108)
    axes[1].set_ylabel("Sampled bus (V)")
    axes[1].axhline(170, color="#777777", ls="--", lw=0.9)
    axes[1].text(0.597, 171.2, "170 V reference", color="#666666", ha="right", fontsize=9)
    axes[1].legend(loc="upper left", ncol=3, frameon=True)
    axes[2].set_ylabel("Peak-current\nreference (A)")
    axes[2].axhline(5.5, color="#777777", ls="--", lw=0.8)
    axes[3].set_ylabel("Sampled midpoint\nVlow - Vup (V)")
    axes[3].set_xlabel("Simulation time (s)")
    for axis in axes:
        axis.grid(True, color="#dddddd", lw=0.6)
        axis.set_xlim(0.25, 0.60)
        axis.axvline(0.30, color="#999999", ls=":", lw=0.9)
        axis.axvline(0.45, color="#999999", ls=":", lw=0.9)
        axis.tick_params(labelsize=9)
    figure.suptitle("Reversible 100 / 50 / 100 ohm load stress — independent host model", fontsize=13, y=0.985)
    figure.text(0.10, 0.025,
                "100 V line RMS, 50 Hz; 3 mH, 440 uF per half; same PLL / model-DeltaU ESO / outer PI for all modes.\n"
                "CSV voltages are sampled sensor values. 0.5 us physical plant; 20 us control; no hardware verification.",
                fontsize=9, color="#555555", va="bottom")
    figure.subplots_adjust(left=0.11, right=0.975, top=0.945, bottom=0.105, hspace=0.14)
    for extension in ("png", "pdf", "svg"):
        figure.savefig(OUT / f"dynamic_load_three_mode_comparison.{extension}", dpi=180)
    plt.close(figure)
    print(OUT / "dynamic_load_three_mode_comparison.png")


if __name__ == "__main__":
    main()
