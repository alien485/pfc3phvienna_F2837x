# Round11 A/B validation: reject coordinate reuse as an equivalent optimization

REJECT_A_AND_B_STRICT_CONTROL_DECISION_DIFFERENCES

The old inverse/Clarke/Park round trip is not float32 identity. Changing only second-substep oldABC changes neutral integration/np2/gu. pf_rank(gi,gu,sw) uses gu when gi ties, so order_i/current top3 can change even with exactly equal current predictions/gi; midpoint ranks/intersection/pcOff/selected then change. Strict criteria are not relaxed.

|Trial|cases per diagnostic policy|selected / pcOff differences|max current error (A)|max np error (V)|input near-zero selected differences|
|---|---:|---:|---:|---:|---:|
|A_raw_next_N8|31750|122 / 122|0.0|7.62939453e-06|71|
|B_clarke_rho_cache_N8|31750|121 / 121|0.0|3.81469727e-06|70|

Both diagnostic policies give the same discrete differences. Standalone interval statuses/bytes, public parameter failures and legal aliases remain unchanged in the executed tests.

Every one of the ten closed-loop trajectories changes for each candidate. Tracking, midpoint, zero-window and THD metrics move in both directions; no uniform improvement is demonstrated.

Separate HARDWARE_SUBSET.json/md retains all original strict FAILs; all 122/121 selected differences remain in the requested group. Reporting group is not an acceptance or protection change.

Offline explicit marker10 prototypes only; no control edits, hardware/CCS actions, deletion, production install, clock measurements or hardware release by this validator.
