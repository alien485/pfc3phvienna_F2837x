# Round11 hardware-parameter reporting subset

Requested parameter group is for reporting, not a change to control/protection thresholds, not a new acceptance standard, and not hardware validation. Original 31750-case strict FAIL is retained.

|Trial|diag|group cases|selected/pcOff changes|intersection changes|rank-u changes|max np error (V)|input-near-zero cases / selected changes|
|---|---:|---:|---:|---:|---:|---:|---:|
|A_raw_next_N8|0|24626|122/122|157|1589|7.62939453e-06|3856 / 71|
|A_raw_next_N8|1|24626|122/122|157|1589|7.62939453e-06|3856 / 71|
|B_clarke_rho_cache_N8|0|24626|121/121|137|1347|3.81469727e-06|3856 / 70|
|B_clarke_rho_cache_N8|1|24626|121/121|137|1347|3.81469727e-06|3856 / 70|

Parameter equality uses 1e-6 relative tolerance only to group float32 representations of 3 mH,440 uF,10 us,20 us. No decision comparison uses a tolerance.
