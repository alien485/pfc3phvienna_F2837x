# Round11 coordinate experiments and exact dependency elimination

Production10 was the semantic baseline. The prototypes kept marker10 and were
written only in output. The parent separately installs and verifies any
revision11; this report does not relabel a prototype as that final build.

A_raw_next_N8 copies the preceding root nextABC into a separate old_local buffer
only for candidate substep1. It avoids the inverse dq transform but drops the
stored-coefficient Clarke/Park projection, including residual zero sequence and
non-unit stored c/s norm. B_clarke_rho_cache_N8 caches the original substep0
Clarke alpha/beta, still computes the original Park dq/finite guard, then
reconstructs oldABC using rho=c1*c1+s1*s1 and the original inverse-Clarke
constants. B is a real-arithmetic identity using stored coefficients, but its
float arithmetic is reassociated. Neither candidate changes forced freeDQ,
next-angle inverse transformation or roots. Both change neutral2/np2/gu.

A and B FAIL strict equivalence. Each diagnostic policy has122/121 selected and
pcOff changes; all remain in24626 hardware-parameter rows. Near-zero hardware
rows have71/70 changes among3856 cases. Current predictions, gi, blocking,
status and active are unchanged in the executed dataset; maximum np differences
are7.629e-6/3.815e-6V. These small errors are not harmless: ranking/intersection
amplifies them into different decisions, and all10 closed-loop trajectories
change. The raw FAIL reports remain in quantitative/ and closed_loop/; neither
A nor B is proposed for production.

C_exact_ON_old_N8 is a different, exact dependency-elimination experiment.
A private always-inline helper keeps original a=c*d-s*q, b=s*d+c*q and each
-a/2 +/- k*b expression, but computes/stores only ON-phase old currents used by
neutral integration. hw0 skips the old inverse entirely; hw1 computes only a;
other masks retain all expressions needed by their ON phases. It is selected
only for N8 candidate substep1. No raw-next alias, KCL complement, norm-one or
zero-sequence identity is used. N1/delay/standalone, freeDQ, roots, checks,
markers, midpoint sum order, FULL and ESO remain unchanged.

C passes executed HOST strict comparison: both policies31750 full outputs and
140025 interval calls each,1464 derived/error boundary cases,1536 legal alias
cases,10 trajectory CSV and10 metric pairs all raw-byte identical to10. The
finite/no-root/source-model studies remain separately attributed. This is not
a universal target floating-point proof; final marked11 must still be checked.

| Standalone CGT variant | Estimated whole RAM code/free | Plain/fine frames |
|---|---:|---:|
| Baseline10 |15267/1117 |86/86 |
| A raw next |15286/1098 |86/84 |
| B Clarke/rho |15509/875 |92/94 |
| C exact ON dependencies |15444/940 |88/88 |

All figures use actual project O2/speed5/relaxed/TMU/EABI/debug options. Frames
include return headers. PC_run_fast remains72, standalone42. C's helper has no
compiler LCR; actual final OUT must confirm there is no Flash fallback call.
Main .bss404 and isolated context20word layouts remain unchanged.

C removes dead arithmetic but adds mask branches,177 codewords and two words
per model frame. Its plain/fine whole-function SP/FP sites increase from127/122
to136/136. Static counts do not establish dynamic cycles or speedup. Actual
resource/callee/ON-expression audit and a future target benchmark are required;
no timing claim is made here. No model threshold, ADC/PWM/CMPSS/TZ/timer/protection,
source outside output, hardware state or Git state was altered by this task.
