# Round9 plan-only HOST validation summary

PASS_ROUND9_HOST_VALIDATION, 2026-10-27.

- Both diagnostic policies:31750 complete PC_Output and140025 complete interval comparisons per policy against actual round8; zero differing bytes/status/flags.
-325551 direct single-ON calls to the actual current generic root versus actual round8: zero status, success-current or failed-current byte differences; shared plan unchanged. Includes101736 natural ROOT errors,105414 numeric rejections,9852 inconsistent shared inputs and1218 forced stored statuses.
-24912 actual old/new CONTROL boundary/random intervals match all bytes, including partial failure writes;80 fake-clock checks pass.
- Safety85, runtime299 and16 nonzero ESO-history cases pass.
-10 closed-loop CSVs and10 metric JSON files remain byte-identical to round8.
-127008 full-corpus plain/coarse/fine comparisons preserve full public output/status/flags. Fine errors after one and five roots remain completed/invalid with correct partial counts.
-14 numerical/intersection helpers remain literal-text-identical. Generic root differs only by the strictly pinned NULL single-ON plan-dispatch replacement; remaining text matches.

Formal candidate fast.c e2affd9a2d3728e6aa67f0fa044603b3c25ac74458b87965210f2bfdb6b25dec,
fast.h813bbb59344ed582d77b1ad157c26487e5f70fdc37f9499a3b62a8cc29d98bab.
All executed source snapshots still match live. Report hashes are in VALIDATION_SUMMARY.json; full-profile replay's recorded host/pass1 report hash remains valid.

The large absolute KCL residual in deliberate huge-value probes is scale-dependent; normalized float residual/used tolerance max0.668877242652. The bounded stress summary (|q|<=50,0<c<0.1,0<Uup/Ulow<=200,consistent plan) retains the identical old8 result and is not an allowed hardware envelope.

No new TI runtime/WCET, universal target float equivalence or hardware permission is claimed. Earlier piecewise strict-equivalence FAIL remains unchanged. Prototype full-single solver experiments are separate from this deployed plan-only candidate.
