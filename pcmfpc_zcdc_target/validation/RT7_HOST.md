# Round7 versus frozen round6 HOST validation

PASS_ROUND6_EQUIVALENCE_AND_PROFILE

Full and local diagnostic policies are compared separately against the same-policy frozen round6 implementation.
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
  "checks": 81,
  "failures": 0,
  "intersection_cases": 10321920,
  "rank_permutations": 40320,
  "counter": "fake_downcounter_only"
}
```

Runtime, safety and observer executable results are in REPORT.json and retained logs.
Fake-clock stages include instrumentation overhead and nested root time; host counts are not hardware cycle measurements.
Earlier piecewise strict-equivalence FAIL remains unchanged. No target timing, universal floating-point identity or hardware permission is inferred.

14 literal root/model/transform/ranking/output-initialization function bodies are unchanged versus the frozen round6 source (UNCHANGED_MODEL_FUNCTIONS.json).

The 10 actual fast HOST closed-loop traces and10 metric JSON files also remain byte-identical to round6 (../../closed_loop/REPORT.json).
