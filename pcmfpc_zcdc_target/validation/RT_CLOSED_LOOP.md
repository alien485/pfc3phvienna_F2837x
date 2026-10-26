# Actual fast closed-loop optimization regression

Two actual fast controller builds, one independent small-step abc physical plant; no hardware actions.
Compile macro TI_CLOSED_LOOP_FAST=1 selects PC_ROOT_PIECEWISE + PC_run_fast. The default0 readable bisection32 path is unchanged.
Committed44f0ec5 fast source is read by git show and compiled separately. No copied controller is used as a plant.

| Case | Old/new trace rows | Changed rows | Metric differences | Byte-identical CSV | Tracking RMS A | NP RMS V |
|---|---:|---:|---:|---|---:|---:|
| pc_off_nominal_50ohm | 13000/13000 | 0 | 0 | True | 0.082711307 | 0.149516923 |
| pc_on_nominal_50ohm | 13000/13000 | 0 | 0 | True | 0.082654104 | 0.147410165 |
| pc_off_L_R_noise_50ohm | 13000/13000 | 0 | 0 | True | 0.138791601 | 0.157406725 |
| pc_on_L_R_noise_50ohm | 13000/13000 | 0 | 0 | True | 0.138936665 | 0.152732221 |
| pc_off_adc_early_1us | 13000/13000 | 0 | 0 | True | 0.084383869 | 0.146307304 |
| pc_on_adc_early_1us | 13000/13000 | 0 | 0 | True | 0.084859173 | 0.148114044 |
| pc_off_device_drops | 13000/13000 | 0 | 0 | True | 0.086182299 | 0.150324096 |
| pc_on_device_drops | 13000/13000 | 0 | 0 | True | 0.086201665 | 0.152262339 |
| pc_off_load_100_50_100ohm | 13000/13000 | 0 | 0 | True | 0.085651409 | 0.103672499 |
| pc_on_load_100_50_100ohm | 13000/13000 | 0 | 0 | True | 0.085871867 | 0.102533468 |

Default readable regression: {'metric_differences': {}, 'CSV_sha256_identical': False, 'original_trace_rows': 13000, 'new_trace_rows': 13000, 'common_field_differing_rows': [], 'additional_columns': ['actual_ADC_shift_us', 'actual_load_ohm'], 'column_scope': 'The prior extended-plant version already added actual_load_ohm and actual_ADC_shift_us; compare every original field exactly, retain new diagnostic columns explicitly.'}.
Overall: PASS.
Every case keeps common PLL/ESO, outer loop, reference limit, hardware assumptions and sampling. Nonideal devices and timing stresses are model approximations.
Dynamic-load steady THD is measured after returning to100ohm, not directly comparable with50ohm nominal steady THD.
Fast pole-integral diagnostics are intentionally unavailable; executed-gate ESO still uses FULL_SUBSTEPS intervals.
All host cases assume computation finishes on time. Identical trajectories do not demonstrate target8.14us/20us timing or real-board electrical capability.
Full metrics/hashes/commands/raw traces in REPORT.json and adjacent explicitly named CSV/JSON/logs.
