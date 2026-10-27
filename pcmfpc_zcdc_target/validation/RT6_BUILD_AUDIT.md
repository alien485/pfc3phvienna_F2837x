# Sixth build independent actual OUT audit

Read-only audit of the pinned CCS snapshot; no source edit, CCS build, hardware access, or deletion.

- Linked Mon Oct 26 17:09:40 2026; native exit 0, errors 0, warnings 0. All **34** pinned snapshot hashes match.
- OUT SHA-256: `e39871137761f725db15b5becd716c6f8d95408a418daf72a864b514babf3ed6`.
- fast.c SHA-256: `574549145827de39fcb70cc9c545154de0da66b6f009cd45f188f39b16e36620`.
- Actual OUT at word `0x18a71` loads DP `0x1e`; `0x18a73` writes value **6** to offset `0x23`, which resolves to version symbol word `0x7a3`. Compiler initializer is also 6.

## Placement and floating point

`actual_calls.json` follows both `PC_run_fast` and `PC_fast_predict_interval`. All direct reachable calls resolve to RAM `pcmfpc_code` (run `0x18000`, size `0x3329` words; load `0xa8000`). `pf_lambda_dense_root` at `0x184a2` is a leaf; `pf_dense_sum` has no standalone symbol/call and is inlined. No Flash callee in these closures.

In actual dense hw7 output, q0 is moved to R3H, then q1 is added to R3H, then q2 is added to R3H. Both two-ON segments similarly select phase0, add phase1, then phase2; each ADDF32 consumes the previously accumulated R3H. `/3` remains negate followed by multiply by binary32 `0x3eaaaaab`. No new sum reassociation was found. Details/word addresses are in `phase_order_audit.json`.

Compared with `build_pass5_final`, normalized compiler ASM for `pf_lambda_plan`, `pf_lambda_root`, `pf_root`, and `pf_interval` is exactly identical after renaming local labels. This covers the unchanged generic CONTROL root and FULL/SUMMARY root paths. As already present in generic code, the initial `+0` may be replaced by MOV. This audit is not a universal proof for signed zero, NaN, subnormal/flush behavior or target FPU runtime equivalence.

## Resources and stack

| Region | Used / capacity, C28x words | Free |
|---|---:|---:|
| RAMGS12GS15 code | 13097 / 16384 | 3287 |
| RAMM1 | 937 / 1024 | 87 |
| RAMGS3 | 3180 / 4096 | 916 |
| RAMGS4GS5 trace | 7168 / 8192 | 1024 |
| RAMGS6GS11 wave | 24000 / 24576 | 576 |

Code increased by 606 words versus final build 5; the listed data regions are unchanged. Dense root frame is 30 words; generic root 20, plan 22, CONTROL interval 36, PC_run_fast 88. Known frame sums: normal generic 240, normal dense 228, shadow generic 252, benchmark generic 258, FAST FULL reconstruction 466; the compiled reference reconstruction branch has a 506-word chain. Stack allocation is 896 words. These are known-chain frame sums, not a full worst-case stack proof: interrupted background use, automatic hardware ISR frame, nesting, exceptions and measured watermark remain unproven.

## Static floor and timing scope

Relaxed CFG shortest successful-path prefixes give 196 issue groups per CONTROL substep including root dispatch and the caller LCR, generic root 75, dense root 79. Mixing eight generic candidate roots and eight dense candidate roots plus two relaxed first-step roots gives:

`18*196 + 8*75 + 8*79 + 2*75 = 4910` minimum issue groups (24.55 us at 200 MHz). If the applied first state has at least two ON switches, the corresponding relaxed floor is 4918 groups (24.59 us).

Each included issue group is assigned only one cycle. Root prefixes exclude the final success MOV/epilogue and their plan callees. All unselected PC_run_fast work, plan/seed work, branch latency, stalls, write stage and surrounding ISR work are excluded. Predicates and loop counts are relaxed. This weak floor is neither measured runtime nor WCET. The current configuration is **50 kHz: 20 us / 4000 CPU cycles at 200 MHz**, and ISR entry to the next ZERO deadline allows **1628 cycles**. The **4910-group** mandatory-region floor already exceeds the entire **4000-cycle** period, so revision 6 **does not qualify for real-time operation in the current configuration**. The 4918-group case also exceeds it. Comparing this static lower bound with an earlier lower bound cannot prove speedup. Revision 6 still needs its own board measurements; previous bench numbers do not certify it.
