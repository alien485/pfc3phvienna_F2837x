# Round10 full-corpus plain/coarse/fine profile output regression

PASS_PLAIN_COARSE_FINE_OUTPUT_EQUIVALENCE

Current v10 separately compiled plain/profiled CONTROL paths; HOST only, no target execution, hardware timing, TMU proof or WCET

The full31750-case corpus is repeated with both diagnostic policies and both coarse/fine profile modes. The reference for each case is the current unarmed v10 kernel, not a copied model.

Two additional finite-input, tiny-capacitance cases force derived midpoint errors after one and five roots, so failure reports exercise partial nested work. Failed stage buckets are not interpreted as complete valid timing.

```json
{
  "base_cases": 31750,
  "directed_derived_failure_cases": 2,
  "policies": [
    {
      "diagnostic_all_angles": 0,
      "mode": 1,
      "cases": 31752,
      "successes": 31739,
      "errors": 13,
      "status_differences": 0,
      "output_byte_differences": 0,
      "availability_flag_differences": 0,
      "revision_errors": 0,
      "metadata_errors": 0,
      "oneshot_errors": 0,
      "partial_root_error_cases": 0,
      "minimum_partial_root_calls": 0,
      "maximum_partial_root_calls": 0
    },
    {
      "diagnostic_all_angles": 0,
      "mode": 2,
      "cases": 31752,
      "successes": 31739,
      "errors": 13,
      "status_differences": 0,
      "output_byte_differences": 0,
      "availability_flag_differences": 0,
      "revision_errors": 0,
      "metadata_errors": 0,
      "oneshot_errors": 0,
      "partial_root_error_cases": 2,
      "minimum_partial_root_calls": 1,
      "maximum_partial_root_calls": 5
    },
    {
      "diagnostic_all_angles": 1,
      "mode": 1,
      "cases": 31752,
      "successes": 31739,
      "errors": 13,
      "status_differences": 0,
      "output_byte_differences": 0,
      "availability_flag_differences": 0,
      "revision_errors": 0,
      "metadata_errors": 0,
      "oneshot_errors": 0,
      "partial_root_error_cases": 0,
      "minimum_partial_root_calls": 0,
      "maximum_partial_root_calls": 0
    },
    {
      "diagnostic_all_angles": 1,
      "mode": 2,
      "cases": 31752,
      "successes": 31739,
      "errors": 13,
      "status_differences": 0,
      "output_byte_differences": 0,
      "availability_flag_differences": 0,
      "revision_errors": 0,
      "metadata_errors": 0,
      "oneshot_errors": 0,
      "partial_root_error_cases": 2,
      "minimum_partial_root_calls": 1,
      "maximum_partial_root_calls": 5
    }
  ],
  "validation_errors": 0
}
```

Every comparison initializes full public outputs to the same0xA5 pattern. Status, all public bytes, availability flags, version marker, one-shot consumption, stage accounting and valid/error metadata must remain consistent.

Fake-clock values are not CPU execution cycles. No control source, earlier test script/pass1 evidence, hardware or peripheral parameters were changed.
