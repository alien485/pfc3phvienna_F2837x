# Formal Round11 validation

PASS_FORMAL_ROUND11_HOST_AND_PROFILE

Only exact dependency elimination C: skip unconsumed OFF old-current components in candidate second substep; preserve consumed arithmetic. Rejected non-equivalent A/B coordinate-reuse variants remain output-only.

Final authoritative reports: host/pass2, formal_closed_loop/pass2, profile_replay.

- Both diagnostic policies: 31,750 full public outputs and 140,025 standalone intervals each; zero status/flag/byte differences against actual frozen v10.
- 24,912 direct CONTROL intervals,80 fake-clock checks,325,551 root cases,1,464 public parameter edges and1,536 legal alias cases: zero differences/errors.
- Safety85, runtime299 and ESO16 checks passed. All16 retained model/root/transform/intersection helpers have unchanged literal function bodies.
- Ten closed-loop CSV traces plus ten metrics files match actual v10 by raw bytes.
- 127,008 current-kernel plain/coarse/fine output comparisons pass. Fine error paths retain one/five partial root calls and invalid timing metadata; all one-shot/accounting tests pass.
- All19 executed source snapshots match the report hashes and current files; the profile report's host/pass2 hash matches the unchanged host report.

A/B trials stay rejected: discrete decisions changed even in the hardware-parameter reporting group. Their raw reports and first/worst evidence were not edited.

Both original pass1 runs used the correct actual v10 baseline/source hashes and marker11, but inherited uppercase ROUND9 text in their status labels. Only new test-driver status labels were corrected. Final host/pass2 and formal_closed_loop/pass2 were rerun and are authoritative; original pass1 reports were not modified.

HOST exact sample/struct regression and fake-clock bookkeeping only. Does not establish TI/TMU identity, hardware speed/WCET, hard deadline compliance, power-stage safety, hardware-release permission or a universal float proof. Historical original-reference strict-equivalence FAIL remains inherited and unmodified.
