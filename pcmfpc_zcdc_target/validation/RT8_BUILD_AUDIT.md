# Round 8 independent actual TI binary audit

Read-only actual OUT/MAP/ASM audit. No source edits, builds, hardware/Git actions or deletion were performed for this audit.

## Build identity

TI CCS-generated gmake incremental rules, CGT25.11.1.LTS, native exit **0**, errors **0**, warnings **0**; linked **Tue Oct27 08:48:32 2026**. No CCS application startup was attempted in this round. All **32** pinned hashes match. Twenty pinned protected source/configuration files match build7 exactly, including HAL, main, runtime, reference model, observer, settings, syscfg, linker command and .cproject.

OUT SHA-256: `d01c3f7fa2e7a403c8ab5b4c9ef54319aeaa0f8823704c5cba39b886f97b28c2`. Actual store at word `0x18f7a` writes **8** to DP0x1e+offset0x23, version symbol word `0x7a3`; initializer is also8.

## Placement and profiling isolation

The fast/profile API closure has **22 functions,53 call/tail-call sites**, all bound callees in RAM. The sole profiling indirect clock call uses pointer word `0xf54c`, bound at initialization to the **RAM run address0x1aadc**. Its body only reads Timer0 TIM at `0xc00` with VMOV32 and returns; no peripheral writes. Counter modulus remains2,000,001.

The actual ordinary kernel has **zero profiling data references and zero root clock guards/calls**. It only calls the generic/dense roots. PC_run_fast and the standalone CONTROL API inline the active==2 selection and directly call plain or profiled; the private wrapper has no linked symbol. Top-level stage guards and caller dispatch still have nonzero instruction cost. Mode1 uses plain; mode2 uses fine. Coarse11 reads and fine47 reads/18 roots retain the one-shot contract. Ordinary unarmed runs preserve the frozen report and never call the clock.

## Numerical dependency evidence

Normalized ASM for all checked root/plan/FULL/seed/rank and clock helpers is identical to7 after local-label normalization. The actual plain and profiled instruction streams also exactly match the audited trial. The single shared source macro preserves the scalar model, constant two-step order, seed selection, finite/midpoint checks, early returns and markers.

Actual neutral sums retain phase0->phase1->phase2. The compiler elides the initial+0; no universal signed-zero/subnormal bitwise promise is made. The plain MACF32 at ASM9197 performs independent next0+next0 and neutral*h_over_C operations in parallel; np then uses a separate ADD. MACF32 here is an alias for parallel ADD/MUL, rather than a fused FMA, as specified in [TI SPRUHS1C p70](https://www.ti.com/lit/pdf/spruhs1). See fp_dependency_audit.json.

## Resources and stack

| Region | Used /capacity, C28x words | Free |
|---|---:|---:|
| RAMGS12GS15 code |14821 /16384 |1563 |
| RAMM1 |937 /1024 |87 |
| RAMGS3 BSS |3222 /4096 |874 |
| RAMGS4GS5 trace |7168 /8192 |1024 |
| RAMGS6GS11 wave |24000 /24576 |576 |

Code is0x39e5 words (+1176 versus7), loaded from0xa8000 and run from0x18000. BSS/DP placement is unchanged. Plain frame is **60+2 return=62 words**; fine **62+2=64**. PC_run_fast decreases88->86. Both kernels use3 small frame-pointer argument accesses; maximum direct SP offsets are46/48, with no direct offset beyond63. A larger frame is a tradeoff: the audited successful-path proxies show more stack transfers but fewer primary memory moves overall.

Known stack frame sums: normal plain generic264/dense252, shadow276, benchmark plain288/fine290, fine callback252, FAST FULL reconstruction466, compiled reference reconstruction506 words. Allocation is896 words. These are known-chain sums, not a full stack proof: background interruption, automatic hardware ISR frame, nesting, exceptional/library paths and actual watermark are not established.

## Successful-path proxy and limits

For a restricted hw7 class, two substeps/two roots are required, the baseline loop is forced back exactly once, first seed is NULL/shared as specified, second seed is NULL and all profile reads are skipped. The complete caller CFG proxy (including its prologue/epilogue, excluding callee bodies and caller dispatch) is637/567 groups for7,541/477 for static-unroll, and462/411 for the chosen candidate. Primary memory-move groups are231/213->153/141, while SP/FP transfers rise59/58->91/86; DP setups fall15/14->3/3.

These are constrained static path counts with remaining FP predicates relaxed, not dynamic traces, timing, WCET or measured speedup. Parallel operations are grouped; their memory transfers are not separately counted. The old440-group whole function was **not multiplied by2**. Actual instruction streams match the trial, so these proxies apply structurally to this binary.

Current configuration remains **50kHz,20us/4000 CPU cycles** at200MHz; ISR-to-ZERO budget is1628 cycles. Revision7 plain21138 cycles and fine9005 root/8921 prediction-outside-root windows are **baseline measurements only**. No revision8 target time has been measured in this audit, and no speedup or real-time release is claimed.
