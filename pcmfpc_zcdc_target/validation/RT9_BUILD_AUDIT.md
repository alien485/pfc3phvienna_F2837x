# Round 9 independent actual TI binary audit

Read-only audit of the pinned actual OUT, MAP, compiler ASM and ELF metadata.
Only explicitly named audit evidence was written; no production edits, builds,
hardware/Git actions or deletion were performed by this audit.

## Build identity

TI CCS-generated gmake incremental rules, CGT25.11.1.LTS, native exit0,
errors0, warnings0; linked Tue Oct27 14:28:26 2026. All32 pinned file hashes
match. Twenty pinned protected source/configuration files match build8 exactly.
The parent separately verified22 protected files,82 main files and the user's
Kit.json; see round9/ISOLATION_CHECKS.json.

OUT SHA-256: `9a4daa12eb422d6c1efb78d8ed3fefc79a4c76013bacf13526bff6935839578b`.
Actual PC_run_fast instruction at word0x1908f writes9 to DP0x1e+offset0x23,
resolving to PC_fast_kernel_revision word0x7a3. Compiler initializer is also9;
that initializer observation is from the compiler listing, while the actual
runtime store is independently proved in the linked OUT.

## RAM closure and profiling

The fast/profile API closure contains23 functions and54 call/tail-call sites.
All bound callees are in RAM. New pf_lambda_single_plan runs at word0x18392;
its body is a leaf. Generic pf_lambda_root is at0x18494 and calls the new helper
only from its NULL-plan single-ON preparation branch. No new dedicated single
root or CONTROL dispatcher from the earlier rejected trials is linked.

The sole indirect clock call is bound during VIENNA_PCMFPC_init to RAM word
0x1abf2. Its actual body is VMOV32 ACC,*(0:0xc00) followed by LRETR: a read of
Timer0 TIM, with no peripheral writes or child calls. Initialization passes
modulus0x1e8481=2,000,001. Existing timer/peripheral settings were not changed.

The ordinary CONTROL leaf has zero profiling references. Its wrapper remains
inlined: there is no linked pf_control_interval wrapper and no call to it.
Coarse/fine profiling contracts remain11/47 clock reads and18 timed roots,
verified by unchanged profiling/control instruction streams and independent
HOST tests. Top-level profiling guards still have nonzero instruction cost.
No timing or hardware qualification is inferred from these instruction counts.

## Model and instruction scope

Twenty checked root/plan/FULL/seed/rank/control/profiling/clock instruction
streams are identical to build8 after removing comments and normalizing local
labels. See assembly_comparison.json. In particular both ordinary and fine
CONTROL kernels are unchanged. The generic root's NULL preparation selects
the new OFF-event helper, while its shared path, affine segment solver,
phase-order sum, endpoint fallback and residual rules retain their source
expressions. Independent HOST tests cover status, successful outputs and
partial failure writes. This is not a universal proof of all target FPU
signed-zero/subnormal/relaxed-optimization cases.

## Resources and stack

| Region | Used/capacity, C28x words | Free |
|---|---:|---:|
| RAMGS12GS15 code |15099/16384 |1285 |
| RAMM1 |937/1024 |87 |
| RAMGS3 BSS |3222/4096 |874 |
| RAMGS4GS5 trace |7168/8192 |1024 |
| RAMGS6GS11 wave |24000/24576 |576 |

Code grows278 words versus build8. BSS size and every actual linked .bss
symbol address/size are unchanged. The generic root frame remains20 words;
the new single-ON NULL-plan helper is24, compared with22 for the full-plan
helper. Ordinary/fine CONTROL frames remain62/64, PC_run_fast86. Frame sizes
here include the return-address header, matching compiler max-frame metadata.

Known frame sums are normal single-plan266, normal full-plan264, dense252,
shadow278, benchmark plain290/fine292, FAST FULL reconstruction466 and the
compiled reference reconstruction506 words. Stack allocation is896 words.
These are known-chain sums, not a complete stack proof: background interrupted
frames, hardware automatic ISR frames, nesting, exceptions and measured stack
watermark remain outside this audit.

## Timing limit

The current configuration remains50kHz,20us/4000 CPU cycles at configured
200MHz, with1628 cycles nominal ISR-to-ZERO window. Version8 plain19212 cycles
is a historical baseline; version9 has no board timing in this audit. No
measured speedup, WCET or real-time release is claimed. The earlier78/82-group
proxies describe rejected dedicated-root trials and must not be applied to
this plan-only binary. This audit does not attempt an additional CFG estimate.
