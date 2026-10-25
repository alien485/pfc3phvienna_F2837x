# Extended independent host closed-loop scenarios

Three separated stress scenarios, three modes each. Original nine result files are unchanged.
The nominal PC-ON regression has identical metrics and every common CSV field to the previous run.

| Case | Bus mean V | Tracking RMS A | THD2..40 % (a,b,c) | NP RMS V | All-run peak A | Trip |
|---|---:|---:|---|---:|---:|---:|
| old_fcs_adc_early_1us | 170.00071 | 0.088960 | 0.5012, 0.5271, 0.5272 | 0.162679 | 5.02879 | 0 |
| pc_off_adc_early_1us | 169.99511 | 0.084370 | 0.5421, 0.4897, 0.5510 | 0.148692 | 5.02981 | 0 |
| pc_on_adc_early_1us | 170.00239 | 0.085153 | 0.5383, 0.5816, 0.6461 | 0.150179 | 5.03148 | 0 |
| old_fcs_device_drops | 169.99954 | 0.092145 | 0.4344, 0.4922, 0.4211 | 0.174210 | 5.06436 | 0 |
| pc_off_device_drops | 169.99904 | 0.086207 | 0.4674, 0.4631, 0.4812 | 0.151588 | 5.06092 | 0 |
| pc_on_device_drops | 170.00037 | 0.085834 | 0.4746, 0.4576, 0.4891 | 0.150174 | 5.06419 | 0 |
| old_fcs_load_100_50_100ohm | 169.99436 | 0.086174 | 1.0204, 1.0051, 0.8383 | 0.138830 | 4.99053 | 0 |
| pc_off_load_100_50_100ohm | 169.99653 | 0.086240 | 0.9183, 0.9836, 0.9783 | 0.103465 | 5.00610 | 0 |
| pc_on_load_100_50_100ohm | 169.99557 | 0.085496 | 0.9572, 0.9653, 1.0019 | 0.100079 | 4.99887 | 0 |

ADC case shifts actual acquisition earlier while retaining the assumed timestamps; device case adds constant opposing voltage drops only; dynamic case changes load100→50→100ohm at0.30/0.45s.
All steady metrics/THD use0.6..0.8s; the dynamic case has returned to100ohm then. Do not compare that THD directly with a50ohm nominal load.

| Dynamic case | Event s | Bus min/max V before next window | 2% settling ms | Sampled current peak A |
|---|---:|---|---:|---:|
| old_fcs_load_100_50_100ohm | 0.30 | 145.8011/170.1597 | 33.990 | 4.91016 |
| old_fcs_load_100_50_100ohm | 0.45 | 167.3558/199.0746 | 28.990 | 4.70947 |
| pc_off_load_100_50_100ohm | 0.30 | 145.9763/170.1597 | 33.990 | 4.93652 |
| pc_off_load_100_50_100ohm | 0.45 | 167.3558/199.0746 | 28.990 | 4.87793 |
| pc_on_load_100_50_100ohm | 0.30 | 145.9763/170.1597 | 34.190 | 4.91895 |
| pc_on_load_100_50_100ohm | 0.45 | 167.3120/199.0746 | 28.990 | 4.81348 |

Settling uses the5kHz diagnostic CSV,170V±3.4V, and requires20ms without a later excursion in the event window. Peak-all current in the first table is evaluated at the0.5us plant step; sampled event peaks are distinct.
Proposed current/OV thresholds are planning values. This is not hardware verification and does not prove real switching-device or inductor capability.
Full definitions, hashes, raw traces, event limits and results remain in results.json and the individual CSV/JSON/log files.
