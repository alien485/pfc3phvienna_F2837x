# Round 7 actual TI binary audit

Read-only audit of the pinned OUT, linker MAP and compiler ASM. No source edits, rebuilds, hardware actions or deletion were performed for this audit.

## Build and identity

The CCS application launcher failed before compilation. The successful build used **TI CCS-generated gmake incremental rules**, with CGT25.11.1.LTS; native exit0, no error/warning diagnostics, linked Mon Oct26 21:57:56 2026. This does not claim that the CCS headless application succeeded. All32 pinned file hashes match.

OUT SHA-256: `928bb780011e931ce7b9f82f805cb65e458b66193fb5d22085e2376f791ec405`. The actual PC_run_fast instruction at word `0x18aff` writes **7** through DP0x1e, offset0x23, resolving to version symbol word `0x7a3`; the initializer is also7. All checked hardware/build configuration files match round6, including HAL, main, settings, syscfg, linker command and .cproject.

## Callback and disabled profiling

The four fast/profile APIs reach21 functions and42 statically present call/tail-call sites. All direct callees and the bound indirect clock target are in RAM. `pf_profile_read` performs its sole indirect LCR at `0x18003`, fetching the bound pointer at word `0xf54c`. Initialization binds the **RAM run address** `0x1a644` and period `0x1e8481`=2,000,001.

Actual `pc_profile_clock` at `0x1a644` contains only `VMOV32 ACC,*(0:0x0c00)` and `LRETR`: it reads Timer0 and performs no peripheral write. The callback period is the inclusive hardware PRD+1 modulus; every span must be shorter than one period.

Actual ASM branches around profile begin when armed=0. All stage/finish calls are guarded by active or a cached active; both root hooks compare active with2 and skip the read helper otherwise. Under the documented idle/nonreentrant invariant, an ordinary unarmed run calls neither the clock nor empty profiling helpers and preserves the frozen report. These guard instructions and memory accesses still have nonzero cost. Success uses11 reads for coarse and47 for fine profiling. `pf_dense_sum`, `pf_intersection`, and `pf_profile_elapsed` have no standalone linked symbol/call. See `callback_gating.json` and `actual_calls.json`.

## Numerical assembly and resources

The normalized ASM for `pf_lambda_plan`, `pf_lambda_root`, `pf_interval`, `pf_seed`, and `pf_rank` matches round6 exactly after local-label renaming. The dense root adds one DP setup instruction. FULL `pf_root` has DP and independent-load scheduling changes, but its133 ordered floating arithmetic instructions and operands are unchanged; dense's97 ordered arithmetic instructions also match. Numerical C helper bodies were unchanged in the source audit. This is not a claim of universal target bitwise equivalence, and the instrumented CONTROL caller has additional guards/calls.

| Region | Used / capacity, C28x words | Free |
|---|---:|---:|
| RAMGS12GS15 code | 13645 /16384 |2739 |
| RAMM1 |937 /1024 |87 |
| RAMGS3 BSS |3222 /4096 |874 |
| RAMGS4GS5 trace |7168 /8192 |1024 |
| RAMGS6GS11 wave |24000 /24576 |576 |

Code is `0x354d` words (+548 versus6), loaded from0xa8000 and run from0x18000. BSS increased42 words. PC_run_fast frame stays88; CONTROL interval rises36¡ú40; generic root20, plan22 and dense root30 are unchanged. The read helper and timer callback have2-word maximum frames; stage/begin/finish have4-word frames.

Known frame sums: normal generic244, normal dense232, shadow generic256, benchmark generic268, fine-clock callback230, FAST FULL reconstruction466, compiled reference reconstruction506 words. Stack allocation is896 words. These are known-chain compiler frame sums, not a global proof: interrupted background, automatic hardware ISR frame, nesting, exceptional/library paths and measured stack watermark are unproven.

## Timing interpretation

The current configuration remains50kHz:20us/4000 CPU cycles at200MHz; ISR entry to next ZERO allows1628 cycles. **No revision7 board timing was measured in this audit.** The revision6 fixture21217-cycle measurement and its weak static lower bound must not be reported as revision7 timing. Raw profiler times include instrumentation. Root time is nested in delay/candidates and must not be added again; failed/clock-invalid runs do not provide a valid stage breakdown. No speedup, WCET or real-time release is claimed.
