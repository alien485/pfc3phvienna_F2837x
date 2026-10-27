# Round11 versus frozen round10 HOST validation

PASS_ROUND10_EQUIVALENCE_AND_PROFILE

Full and local diagnostic policies are compared separately against the same-policy frozen round10 implementation; the rejected A/B floating-point coordinate-reuse trials are not installed.
Cross-policy comparison permits only non-intersection angle cost slots to become zero and zcdc_diag[4] to become -1.
All predictions, current/midpoint costs, ranks, intersection fields, selected states and selected costs must otherwise match byte-for-byte. Rejected A/B coordinate-reuse failures remain in separate immutable reports; no epsilon is introduced.

```json
[
  {
    "diagnostic_all_angles": 1,
    "exit": 0,
    "public_struct": {
      "cases": 31750,
      "status_differences": 0,
      "public_flag_differences": 0,
      "PC_Output_byte_difference_rows": 0,
      "interval_calls_all_detail_modes": 140025,
      "interval_status_differences": 0,
      "PC_Interval_byte_difference_calls": 0,
      "revision_errors": 0
    },
    "cross_policy": {
      "policy_cases": 31750,
      "policy_status_differences": 0,
      "policy_undocumented_byte_differences": 0
    }
  },
  {
    "diagnostic_all_angles": 0,
    "exit": 0,
    "public_struct": {
      "cases": 31750,
      "status_differences": 0,
      "public_flag_differences": 0,
      "PC_Output_byte_difference_rows": 0,
      "interval_calls_all_detail_modes": 140025,
      "interval_status_differences": 0,
      "PC_Interval_byte_difference_calls": 0,
      "revision_errors": 0
    },
    "cross_policy": {
      "policy_cases": 0,
      "policy_status_differences": 0,
      "policy_undocumented_byte_differences": 0
    }
  }
]
```

```json
{
  "checks": 85,
  "failures": 0,
  "profile_checks": 80,
  "control_cases": 24912,
  "control_status_differences": 0,
  "control_byte_differences": 0,
  "control_successes": 24614,
  "control_failures": 298,
  "blocked_successes": 1492,
  "shared_seed_cases": 12456,
  "NULL_seed_cases": 12456,
  "status_counts": [
    24614,
    0,
    0,
    0,
    150,
    0,
    148
  ],
  "counter": "fake_downcounter_only"
}
```

```json
{
  "cases": 325551,
  "shared_cases": 167976,
  "NULL_cases": 157575,
  "successes": 117792,
  "root_error_cases": 102345,
  "numeric_error_cases": 105414,
  "status_differences": 0,
  "success_next_byte_differences": 0,
  "failed_next_byte_differences": 0,
  "shared_plan_mutations": 0,
  "inconsistent_shared_cases": 9852,
  "forced_status_cases": 1218,
  "natural_root_error_cases": 101736,
  "max_double_sum_KCL_A": 1024,
  "max_float_KCL_A": 1024,
  "max_float_residual_over_used_tolerance": 0.668877242652,
  "bounded_domain_successes": 78772,
  "bounded_domain_max_float_KCL_A": 9.1552734375e-05
}
```

```json
{
  "public_cases": 1464,
  "public_successes": 768,
  "public_errors": 696,
  "errors_after_first_prediction": 406,
  "public_status_differences": 0,
  "public_output_byte_differences": 0,
  "public_flag_differences": 0,
  "alias_cases": 1536,
  "alias_successes": 672,
  "alias_errors": 864,
  "alias_status_differences": 0,
  "alias_output_byte_differences": 0,
  "f_aliases_integral_cases": 384,
  "dq_and_f_alias_same_integral_cases": 96
}
```

Public derived-overflow/candidate-failure cases compare the full output including all touched and untouched sentinel fields. Legal dq/f aliases into the output's Real arrays compare all details, including the old clear-integral-before-reading-f ordering.
The unchanged root helper is still compared against the separately compiled actual v10 solver, including successful and failed next-current bytes and read-only shared plans. The production candidate only eliminates unobserved OFF old-current components in candidate substep1; it preserves the original arithmetic for every consumed component.
The probe also includes inconsistent/shared-status and invalid private inputs, explicitly outside normal target operating conditions.
Extreme absolute residuals scale with deliberately huge test values; normalized residuals use the original tolerance. Bounded-domain summary filters: |q|<=50,0<c<0.1,0<Uup/Ulow<=200,consistent shared plan.
Runtime, safety and observer executable results are in REPORT.json and retained logs.
Fake-clock stages include instrumentation overhead and nested root time; host counts are not hardware cycle measurements.
Actual old/new CONTROL intervals are directly compared on targeted boundary/malformed-derived-state and deterministic random inputs.
The unchanged integer intersection helper retains the prior round10 exhaustive evidence and is not rerun here.
Earlier piecewise strict-equivalence FAIL remains unchanged. No target timing, universal floating-point identity or hardware permission is inferred.
