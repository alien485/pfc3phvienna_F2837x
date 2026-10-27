# Round8 versus frozen round7 HOST validation

PASS_ROUND7_EQUIVALENCE_AND_PROFILE

Full and local diagnostic policies are compared separately against the same-policy frozen round7 implementation.
Cross-policy comparison permits only non-intersection angle cost slots to become zero and zcdc_diag[4] to become -1.
All predictions, current/midpoint costs, ranks, intersection fields, selected states and selected costs must otherwise match byte-for-byte.

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

Runtime, safety and observer executable results are in REPORT.json and retained logs.
Fake-clock stages include instrumentation overhead and nested root time; host counts are not hardware cycle measurements.
Actual old/new CONTROL intervals are directly compared on targeted boundary/malformed-derived-state and deterministic random inputs.
The unchanged integer intersection helper retains the prior round7 exhaustive evidence and is not rerun here.
Earlier piecewise strict-equivalence FAIL remains unchanged. No target timing, universal floating-point identity or hardware permission is inferred.

The10 actual fast HOST closed-loop traces and10 metric JSON files remain byte-identical to round7 (../../closed_loop/REPORT.json).
