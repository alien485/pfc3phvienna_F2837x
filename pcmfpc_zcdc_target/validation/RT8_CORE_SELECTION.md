# Round8 core selection

Only one variant was installed: `trials/split_common_no_cfg`, with revision marker8.
The frozen installed files are identified in CORE_IMPLEMENTATION.json. The raw
baseline trial is byte-identical to build7 source530a0d...; the initial trial
script's 99f555... hash was its LF-normalized in-memory generation string.

The selected CONTROL kernel expands exactly two substeps. A single macro model
body generates the ordinary/coarse and fine-root-profiled leaf functions. The
wrapper dispatches only once per interval and is actually inlined by CGT. The
ordinary leaf contains no per-root profile clock conditionals. The public API,
private wrapper signature, profile sample counts11/47 and18 root calls remain.
Scalar dq/np/h/c/neutral state is local; arrays and the existing workspace type
are retained, including all reserved fields. Root, FULL/SUMMARY, transforms,
plans, seed, rank, intersection and terminal-angle helper bodies are unchanged.

Initial scalar-only storage trials were not selected: looped variants grew
stack traffic without a convincing combined control-flow gain. The selected
variant combines storage and constant-substep specialization and isolates the
fine profile callbacks. Do not compare whole static function440 lines with a
fully unrolled function by blindly multiplying440 by2: prologue, seed branches,
root dispatch alternatives and exit blocks have different execution counts.

Final standalone CGT uses the actual project flags, not a different optimization
level: O2, speed5, relaxed/reassociation, TMU0, EABI and debug. The ordinary leaf
has compiler frame60 words (62 including return address); the fine leaf62/64.
TU pcmfpc_code is7970 words vs6793 baseline, +1177. Estimated whole-project code
is14822/16384, before the mandatory actual CCS link/resource audit. The standalone
legacy build also compiles successfully. None of these numbers is a measured
speedup, average time or WCET. An actual board measurement of version8 is required.

Independent HOST validation reports zero-byte differences for both diagnostic
policies, public intervals,24912 direct CONTROL cases (including error writes),
80 one-shot profile tests and10 closed-loop trajectory/metric pairs. See the
validation agent's separately saved report for the full executed evidence.

No roots/model thresholds, ADC/PWM/CMPSS/TZ, timer settings, protection values,
CCS metadata, hardware state or Git branches were changed by this core task.
No files were deleted, and no CCS build or hardware action was performed here.
