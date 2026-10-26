# Round4 independent HOST validation

Status: FAIL_EXACT_EQUIVALENCE

The original exact replay criteria were retained. A double-model or safety pass is not exact discrete equivalence.

Dataset: 25028 base rows; original replay adds directed ULP budget tests and invalid inputs.
Lambda exact replay exit: 1.

```json
{
  "cases": 31750,
  "valid": 31739,
  "invalid": 11,
  "status_difference": 0,
  "selected_difference": 1887,
  "pcoff_difference": 1880,
  "active_difference": 42,
  "rank_i_difference": 1684,
  "rank_u_difference": 3109,
  "set_difference": 3305,
  "discrete_diagnostic_difference": 1887,
  "blocked_difference": 0,
  "interval_integral_numeric_difference_rows": 0,
  "max_gi_error_A2": 5.34057617188e-05,
  "max_gu_error_V2": 0.0009765625,
  "max_gz_error_rad2": 9.74641190469,
  "max_dq_error_A": 3.33786010742e-06,
  "max_np_error_V": 1.52885913849e-05,
  "max_interval_integral_error_V_s": 0,
  "max_zcdc_diag_numeric_error": 9.73513834178,
  "bisection32_vs_piecewise_reference": {
    "status_difference": 0,
    "selected_difference": 2198,
    "pcoff_difference": 2195,
    "active_difference": 70
  },
  "full_interval": {
    "calls": 46675,
    "status_difference": 0,
    "numeric_difference_rows": 0,
    "discrete_difference_rows": 0,
    "max_numeric_error_mixed_SI": 0
  },
  "summary_interval": {
    "calls": 46675,
    "status_difference": 0,
    "numeric_difference_rows": 0,
    "discrete_difference_rows": 0
  },
  "control_interval": {
    "calls": 46675,
    "status_difference": 0,
    "numeric_difference_rows": 18991,
    "discrete_difference_rows": 0,
    "integral_unavailable_errors": 0
  },
  "availability_flag_errors": 0,
  "unavailable_marker_errors": 0,
  "max_budget_limit_error_A": 3.33786010742e-06,
  "max_voltage_margin_error_V": 7.62939453125e-06,
  "extreme_derived_numeric_guard": {
    "readable_reference_status": 0,
    "fast_status": 6,
    "guard_failure": 0,
    "reference_margin_finite": 0
  },
  "fast_unsafe_error_outputs": 0,
  "fast_terminal_gate_events": 5,
  "reference_terminal_gate_events": 10
}
```

Independent double ideal-diode predictor uses 120-step monotone bisection, two substeps, the same physical inputs and independent double transforms.
Its HOST-only acceptance bound is 128*FLT_EPSILON times the recorded state/voltage scale; raw maximum errors and blocked differences are retained.
The bound is not used in control, sorting, budget or terminal selection. Differences around the 1e-12 blocked boundary are reported, not snapped away.

```json
{
  "cases": 48000,
  "full_exact_differences": 0,
  "summary_exact_differences": 0,
  "control_status_differences": 0,
  "unsafe_nonfinite_success": 0,
  "control_numeric_bound_failures": 0,
  "ideal_double_blocked_differences": 0,
  "integral_placeholder_errors": 0,
  "max_dq_error_A": 2.7444420593880636e-06,
  "max_np_error_V": 1.0841318257348576e-05,
  "max_scaled_dq_error": 4.128151297162241e-07,
  "max_scaled_np_error": 6.299325304605818e-08,
  "test_numeric_bound_in_float_eps": 128,
  "whitebox_root": {
    "cases": 80000,
    "status_fail": 0,
    "residual_fail": 0,
    "numeric_bound_fail": 0,
    "ideal_double_blocked_differences": 11,
    "max_current_error_A": 1.2017759729587851e-06,
    "max_KCL_residual_A": 2.1457672119140625e-06
  }
}
```

See REPORT.json for commands/source hashes, per-label counts and published rare terminal rows; all strict differing rows remain in lambda_exact_replay_differences.csv.
No hardware operations, control-source edits, protection changes, cleanup or deletion were performed by this test.
