# Round10 output-only batch trials

The production source remains revision9. These prototypes also retain marker9;
only the parent will install and label an approved revision10. Baseline board
samples are version8=19212 cycles and version9=19242 cycles, with no speedup
established by the latter single sample. No trial has been run on the target.

## Selected recommendation

`trials/unified_common_setup_inline_isolated/vienna_pcmfpc_fast.c`

Source SHA256:
`c14f50f50ba60ea677e87b0fd3b29da5fd12d85030891f48b69713e01a4ecd7f`.

The ordinary and fine-profiled kernels each retain one macro model body. A
private context selects N=1 for the original delay/standalone calls or N=8 for
the complete candidate loop. The public APIs and old private
pf_control_interval signature remain intact. N8 processes candidate0's complete
two substeps and outputs/costs before candidate1, preserving every error exit.
It uses the immutable candidate seed and its lambda plan, not mutable scratch.
The candidate loop no longer calls an interval leaf eight times. It writes both
required result representations from the local dq/np result, preserving every
interval summary, unavailable integral zero and substep marker.

Common initial_np=initial_low-initial_up, dc=initial_up+initial_low, h and c are
copied/evaluated once. setup_status retains the original short-circuit guard,
and any error is returned only after the original dq-copy/blocked/integral-zero
touches. Each candidate still performs both original midpoint reconstructions,
checks, roots, neutral sums and updates. No midpoint check, protection, candidate,
substep or model expression has been removed. N1 keeps f as a pointer and reads
it at the original location, so f/out and dq0/out aliasing remain meaningful.
No restrict assumption is added to any public or standalone interface.

## Actual standalone CGT comparison

Same project options: CGT25.11.1.LTS, O2/speed5, relaxed/reassociation, TMU0,
EABI/debug. Frame figures include the return-address header.

| Variant | Estimated total code words | Plain/fine frames | PC_run_fast frame |
|---|---:|---:|---:|
| Production9 standalone baseline |15099 |62/64 |86 |
| A: unified context/batch |15317 |86/88 |70 |
| B: common scalar setup |15334 |86/86 |70 |
| C: B plus lazy N8 h*f cache |15500 |92/90 |70 |
| A plus inline binder |15305 |86/88 |72 |
| B plus inline binder |15322 |86/86 |72 |
| Recommended B inline + isolated context |15267 |86/86 |72 |

The recommended TU pcmfpc_code is8415 words versus8247 baseline, estimating
15267/16384 whole code and1117 free words. The public standalone interval frame
remains42. Relative to9, PC_run_fast+ordinary model frames total158 versus148;
the apparent PC_run_fast decrease does not erase the larger callee frame. Full
stack chains, high SP/FP access costs and RAM callbacks need the actual OUT audit.
Static instruction bodies include different loop and cost regions: they cannot
be naively multiplied/subtracted to claim target cycle savings.

C is not recommended: eliminating repeated multiplications introduced more
conditional code and live cached values, with ordinary frame92 and150 SP/FP
instruction sites versus B's86/127. This is a resource-based rejection, not a
claim that C was actually measured slower on the DSP. No further variants are
being explored in this batch task.

## New context and layout

PF_ControlContext contains seven pointers, two scalar voltages and two uint16
mode/count fields:20 C28x words. No existing workspace type or reserved field
is repurposed. Ordinary .bss allocation enlarged the object from404 to436 words:
20 context plus12 alignment padding, and moved nine of thirteen old symbols.
The recommended TI DATA_SECTION places only the new context in the standard
`.bss:pf_control_context` subsection: main .bss returns404 words and all thirteen
old object-relative symbols match9, with a separate20-word subsection. It also
reduces standalone code by55 words compared with B inline ordinary allocation.

This is not an assertion about linked absolute addresses. The existing linker
script is unchanged; a real link must verify the subsection is merged into the
RAMGS3 .bss output, check total alignment padding and compare all actual symbol
addresses. If placement is not valid, reject/revise the section pragma rather
than silently modify the linker or hardware configuration.

## Evidence and limits

TRIAL_REPORT.json records all source fingerprints, compiler instruction sites,
frames and code/BSS sizes; each trial contains its command, diagnostics, ASM,
object and OFD XML. BSS_LAYOUT_COMPARISON.json and TRIAL_CONTEXT_SUBSECTION.json
record the relative layout. generate_trials.py/generate_more_trials.py preserve
the source-generation steps. The recommended source also compiles in the legacy
control-root build without errors.

A and B have each passed the independent HOST suite: both diagnostic policies,
31750 full outputs and140025 intervals per policy,24912 direct CONTROL cases,
80 fake-clock tests,325551 root cases,85 safety/16 ESO/299 runtime checks,
1464 public derived/error cases (including406 candidate-stage failures), and
1536 legal dq/f alias cases. All compared bytes/status/availability flags match
production9. Final selected/frozen revision10 must still run its own regression;
pragma-only related prototypes are not substituted for executed final evidence.

Root/model functions, thresholds, FULL/SUMMARY/ESO and profile semantics remain
unchanged. Coarse/fine clock reads remain11/47 with18 timed roots. This task did
not edit production, compile CCS, load/flash/control hardware, alter timers or
ADC/PWM/CMPSS/TZ/protection, delete files, or mutate Git.
