# Pure C mode-7 core and numerical validation

The pure core is `vienna_pcmfpc_zcdc.h/.c`; it uses SI units, fixed arrays,
and explicit first/candidate durations. `PC_default_config()` selects the
32-iteration bisection **reference** solver, 10 us/20 us, 3 mH and 440 uF.
`PC_ROOT_PIECEWISE` is an explicit alternative, not an unqualified equivalent
controller. Its root solves the same real-arithmetic piecewise-affine
projection, but finite precision can change exact ties and zero-magnitude
angle classification. No hardware release is implied.

MATLAB mode 7 reference: `pcmfpc_zcdc/vienna_pcmfpc_zcdc_complete.m`, SHA256
`A77EA4DEA3267D82D444EFBF4A7437A39E15B7C48928931F40D6476E67503F4A`.

## Host commands actually executed

From this `tests` directory on this machine:

```text
cmd /c core_build_host.cmd
cmd /c core_build_oracle.cmd
D:/python/python.exe -B compare_matlab.py D:/GraduateStudentProject/Vienna_Rectifier/output/ti_pcmfpc_zcdc_port
```

Build scripts initialize the installed Visual Studio x64 compiler environment,
then use MSVC 19.44 `/O2 /fp:precise`. The default PATH `python` belongs to
LibreOffice and has no NumPy; use `D:/python/python.exe` (Python 3.13, NumPy
2.3.5). No clean or recursive deletion is performed. Each explicitly named
generated executable/DLL/object/result is overwritten by a later incremental
run. These host tests do not execute TI code or hardware.

## Target-independent structural and root tests

`core_unit.c` performs 84,059 checks per precision, including all eight ID/HAL
mappings, the analytical all-ON drift and zero voltage integral, all-OFF flat
blocking, exact-cost/switch-count ties, terminal-OFF preserving all candidate
predictions, low reference, nonpositive bus, invalid gate/L, NaN and infinity,
and 12,000 randomized same-input comparisons of the two root methods.
Both the hardware 10/20 us, 3 mH/440 uF and paper 50/50 us,
10 mH/2350 uF parameter sets are represented.

Results are in `core_unit_float_results.txt`, `core_unit_double_results.txt`:

| Root-method comparison | float32 | double |
|---|---:|---:|
| Maximum candidate dq difference | 3.8147e-6 A | 7.0840e-11 A |
| Maximum midpoint difference | 1.5259e-5 V | 8.2494e-12 V |
| Final selected-ID differences / 12000 | 2 | 47 |
| PC-OFF-ID differences / 12000 | 0 | 47 |
| Activation differences | 0 | 0 |

The two float32 selected-ID differences are retained as full-input evidence in
`core_root_diff_float.csv`. A candidate predicted current extremely near zero
can cross the unchanged `1e-12 A` zero-magnitude rule: its phase cost may
change substantially even when the absolute current prediction changes by
microamperes. Do not explain these as merely small `gz` ties or claim all
decisions are invariant. Double root-method differences show that tiny
finite-32-bisection errors can break exact ties, too.

`u_integral_dq_V_s` is the two-substep **model** pole-voltage integral, accumulated
from the actual projected pole values at each endpoint Park angle. It is not
measured converter voltage. Its model identity `i_end = i_start + dt*F - U/L`
has maximum float32 residual 2.2463e-6 A in the randomized tests. It is not
obtained by differentiating measured currents.

## Independent MATLAB oracle

`oracle_bridge.c` maps 24 double CSV inputs to 88 outputs of the compiled C
DLL; it contains no controller implementation. `compare_matlab.py` reads the
MATLAB-generated oracle CSV files and writes full C outputs, per-row discrete
differences and `c_matlab_comparison.json` under the root output evidence
directory. The original MATLAB source remains unchanged.

The 1017 rows include 500 published trajectory points, its real terminal-change
event, 500 synthetic boundary inputs, and 16 flat blocking cases. The parent
MATLAB runner separately established original-function agreement for equal
duration inputs; explicit durations adapt the first hardware delay.

| C replay vs MATLAB | Max candidate dq error | Final ID differences |
|---|---:|---:|
| double, bisection32 | 2.4225e-12 A | 0/1017 |
| double, piecewise | 4.9513e-11 A | 18/1017 |
| float32, bisection32, original unwrapped angle | 3.7435e-4 A | 17/1017 |
| float32, piecewise, original unwrapped angle | 3.7483e-4 A | 19/1017 |
| float32, bisection32, bounded angle input | 5.9792e-6 A | 16/1017 |
| float32, piecewise, bounded angle input | 5.3271e-6 A | 18/1017 |

All runs return `PC_OK`. Double bisection32 matches all eleven discrete fields
and all candidate orders. Bounded-angle float32 bisection32 matches all 500
published trajectory gate choices and the real terminal event; the remaining
16 ID differences comprise 14/16 flat-blocking cases and 2/500 synthetic
boundary cases. They are **not** hidden by cost epsilons or test tolerances.

The original trajectory has accumulated theta around 878 rad. Converting that
large angle to float32 before taking small horizon increments loses meaningful
phase precision. The additional bounded-angle replay normalizes theta modulo
2*pi in double **before** converting the physical input to float32. This
models a PLL that always maintains a bounded phase, not a magical recovery
inside the float core after digits have been lost.

At the published terminal event MATLAB chooses PC-OFF ID 5 -> final ID 2,
with a `gz` improvement approximately 2.2573e-7 rad^2. Double reference and
both bounded-angle float32 root variants preserve this gate change. The raw
unwrapped-angle float32 variants do not. No 1e-6 rad^2 tie band was added.

The flat-blocking cases expose real differences in numerical tie behavior:
the optimized exact plateau may output zero while finite bisection retains
tiny nonzero currents. Full `gz` maximum errors can approach pi^2 in those
cases because the angle of a vanishing vector is ill-conditioned. This is
not a large physical-current prediction error, but is a declared selection
contract difference requiring application-level acceptance.

Report envelopes are fixed in `compare_matlab.py` by physical units and input
variant. They only summarize numeric errors and never modify runtime sorting,
current budget, blocked flag or terminal comparisons. Matching envelopes do
not erase discrete differences or establish closed-loop/hardware equivalence.

## Independent per-substep and supervisor replay

`prepare_substep_trace.m` has actually run in MATLAB R2023b, reading the same
1017 CSV input rows. It only adds `oracle_substeps.csv` and trace evidence;
the original 24-input/88-output oracle is retained. The trace has 18 substeps
per row (two initial, two per each of eight candidates), 19 fields each.
`compare_substep_trace.py` compares all 347814 fields for each of six C
variants, including reserved zeros, and rejects nonfinite input/output.

Double bisection32 has maximum per-substep next-abc error 5.1514e-14 A,
midpoint error 6.0396e-14 V and pole-alpha/beta error 1.0161e-12 V. Bounded
float32 bisection32 gives 5.6365e-6 A, 1.4374e-5 V and 9.2317e-4 V,
respectively. Piecewise common-mode plateau roots are nonunique and are
reported separately. Detailed metrics and label splits are in the root
output `substep_comparison.json` and `SUBSTEP_VALIDATION.md`.

`core_build_runtime.cmd` builds the actual unchanged runtime C translation
unit with a forced header replacing only TI register dependencies. It links
the real reference core, fast core, PLL and ESO. `core_runtime_test.c` passes 122 checks covering
startup guards, stopped PLL acquisition, reset/first-Fhat, model-history
initialization, submit-versus-next-ZERO state, real select, reference capture,
bounded record/wave buffers, runtime mode/root guards, root dispatch, output
availability/provenance, guarded one-shot benchmarks, diagnostic channels,
and injected body/benchmark overruns. The parent corrected return conventions, first-history handling,
record references and repeated-init state after these tests identified them.
`RUNTIME_HOST_VALIDATION.md` describes the exact stub boundary. Injected timer
counts establish supervisor branches only; they are not a DSP timing test.

`core_build_fast_safety.cmd` adds an independent 73-check invalid/extreme
input audit. NaN/Inf/null/config/gate/detail errors fail safely. This audit
found finite but nonphysical R/L=FLT_MAX could produce PC_OK with a NaN
voltage margin in both reference and initial fast code. The fast owner added
derived-value finite guards: fast now rejects these with PC_ERR_NUMERIC;
the original reference remains unchanged. Normal runtime L/R are fixed
physical constants. The audit reports this deliberate failure-domain
difference rather than claiming arbitrary finite-parameter equivalence.

## Resource and deployment boundary

`PC_Output` is 1996 bytes on the host float32 ABI (3904 bytes for double).
C28x uses 16-bit char/address units, so do not use these byte counts as target
stack sizes or binary log layouts. Allocate the diagnostic output statically
or globally. The core and called helpers are assigned to `pcmfpc_code` for
the target-specific TI RAM copy; the actual map must confirm fit and placement.

Every model interval has two substeps; a full run has 18 root problems. The
reference performs 32 projection evaluations per root plus endpoints/final
evaluation. The piecewise path has at most six internal breakpoints and seven
segments. No host timing or compiler success proves the 8.14 us write deadline.
The supervisor must preserve the hardware deadline guard and initially keep
new control/diagnostic work behind explicit release/shadow controls.
