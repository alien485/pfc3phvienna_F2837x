# Round6 against frozen round5 lambda HOST regression

PASS_ROUND5_EQUIVALENCE

The original float-piecewise strict-equivalence FAIL remains FAIL, including 1887 changed selected IDs. This report only tests whether dense-state specialization preserves the frozen round5 lambda variant.

Actual frozen/current linked implementations: 31750 PC_Output comparisons; 140025 PC_Interval calls across FULL/SUMMARY/CONTROL detail modes.
Status/flags/PC_Output bytes/PC_Interval bytes differences: 0/0/0/0.
Outputs receive identical initial byte patterns; unavailable fields/padding are not interpreted as physical diagnostics.

Original replay summary unchanged: True; independent-double/root-probe summary unchanged: True.
Dense/generic whitebox root comparison: {'cases': 191620, 'status_differences': 0, 'next_current_byte_difference_calls': 0, 'shared_path_differences': 0, 'nonfinite_success': 0, 'residual_failures': 0, 'generic_error_cases': 75949, 'dense_error_cases': 75949, 'maximum_KCL_residual_A': 1.43051147461e-06}. Every differing row is retained in dense_root_differences.csv.
Safety, runtime and observer checks: True.
All raw CSV/focus/edge files are retained and compared by SHA/bytes. The 80000 root and 48000 independent interval checks retain their original numerical criteria.

Closed-loop trajectory equivalence is a separate comparison after the parent finishes its original driver.
No target timing, TMU bit identity, protection qualification, or power run is inferred from these host results.
