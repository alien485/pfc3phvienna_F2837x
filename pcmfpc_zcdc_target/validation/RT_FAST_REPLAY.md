# Independent fast-path differential replay

31750 cases, including 25028 base cases plus directed ULP budget boundaries and invalid-input/config checks.

Readable reference and optimized implementation both use float32 piecewise roots and identical inputs. Bisection32 is an additional comparator.

Fast/reference: selected differences 0; PC-OFF differences 0; active differences 0; current/midpoint ordering differences 0/0; set differences 0; status differences 0.
Maximum numeric differences: gi 0 A²; gu 0 V²; gz 0 rad²; dq 0 A; midpoint 0 V.
FULL_SUBSTEPS direct interval calls: 46675; status/numeric/discrete differences 0/0/0.
SUMMARY direct interval calls: 46675; status/numeric/discrete differences 0/0/0; physical integral max difference 0 V·s.
CONTROL_ONLY direct interval calls: 46675; status/numeric/discrete differences 0/0/0; unavailable integral placeholder errors 0.
Availability flag errors: 0; unavailable-substep marker errors: 0; unsafe invalid-input outputs: 0.
Deliberate safety extension: finite but impossible R=L=FLT_MAX produces readable-reference status0 with a nonfinite voltage margin; optimized status6 safely rejects derived overflow. This case is listed separately from normal-domain equivalence.

PC_run_fast uses CONTROL_ONLY: detailed substeps and pole integrals are intentionally unavailable. The integral fields are zero placeholders with an explicit invalid flag; zero does not mean a physically zero integral. All costs/decisions and remaining interval state/blocked summaries are compared exactly.
Direct PC_fast_predict_interval(SUMMARY/FULL_SUBSTEPS) retains real model pole integrals. FULL compares every named substep field including projected poles/rotation; CONTROL_ONLY compares predicted states/blocked flags and requires unavailable-integral placeholders.
Published rare terminal event PC-OFF5 -> selected2 preserved: True.
Committed44f0ec5 control-output regression: {'commit': '44f0ec5', 'baseline': 'D:\\GraduateStudentProject\\Vienna_Rectifier\\output\\ti_pcmfpc_zcdc_port\\rt_optimization\\baseline_44f0ec5\\replay_outputs.csv', 'old_rows': 31750, 'new_rows': 31750, 'differing_rows': [], 'all_common_control_results_identical': True, 'scope': 'Control replay CSV only. Removed fast-run integrals are unavailable diagnostics, not zero physical values.'}.
Original oracle angles are wrapped in double before float32 conversion. Original oracle CSVs are not modified.
TI-derived rows reuse controller-state traces but reconstruct ideal grid eabc; they do not claim exact captured ISR input replay.
Separate bisection32 vs piecewise comparison: selected differences2198, PC-OFF differences2195, active differences70. Strong exact-tie and one-ULP budget stress cases are deliberately included. These are pre-existing root-method differences, not optimized-versus-readable-piecewise differences; all per-label counts and per-row IDs are retained.
All changed rows are retained in replay_differences.csv. ULP budget changes are stress tests only, never target parameter changes.
This test does not prove target deadline, TMU arithmetic, exhaustive equivalence, or real-board stability.

See manifest.json for source/input hashes, dataset labels, triage, compiler and complete summary.
