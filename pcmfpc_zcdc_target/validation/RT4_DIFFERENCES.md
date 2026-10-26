# Round4 strict-equivalence failure triage

The exact regression remains FAIL.

| Group | Cases | Selected changes | PC-OFF changes | Active changes |
|---|---:|---:|---:|---:|
| oracle_1017 | 1017 | 0 | 0 | 0 |
| directed_budget_ULP | 6711 | 1043 | 1040 | 42 |
| TI_derived | 9531 | 167 | 167 | 0 |
| random_bounded_physical | 12000 | 5 | 1 | 0 |
| structured_flat_and_blocking | 1728 | 664 | 664 | 0 |
| structured_phase_zero_and_np | 720 | 8 | 8 | 0 |
| structured_exact_ties | 32 | 0 | 0 | 0 |
| invalid_input | 8 | 0 | 0 | 0 |
| invalid_config_L | 1 | 0 | 0 | 0 |
| invalid_config_C | 1 | 0 | 0 | 0 |
| invalid_config_budget | 1 | 0 | 0 | 0 |

Original 1017 oracle rows, including all 500 formal trajectory inputs and the published PC-OFF5 -> selected2 event, retain their selected/PC-OFF/active values.
The additional physical/random cases still contain changed choices. They are not declared equivalent because the original oracle subset passed.
Largest angular-cost difference: input668, candidate3, 9.74641190469 rad²; old norm 1.24176338689e-08 A -> new norm 0 A. Final selected ID remains 4/4 for that row.
Four ordinary random base cases change only terminal choice while PC-OFF is unchanged: inputs15180,16984,19606,21671. Old selected predictions have norms around5e-9..9e-9 A, while the current-variable solution gives exact zero; the unchanged1e-12 rule switches the angular cost to pi².
Input21671 therefore selects a different candidate with predicted current norm0.266857A. Some TI-derived cases select candidate endpoints about0.377943A apart. These are material changes in the discrete behavior even though per-candidate numeric errors are small.
Among focused changed base cases, maximum selected current-error norm gap is 0.0148286403613 A in new costs, below0.02A. This is a scoped check, not a claim of exhaustive budget or closed-loop safety.
The11 whitebox blocked-boundary differences occur near q=[-c*low,+c*low,0], hw4. Float rounded products give all-zero currents; independent double products give roughly9e-11..4.3e-9A in an OFF phase. All rows are retained in root_blocked_edges.csv.

All per-candidate values are in lambda_focus.log; complete changed base rows, worst cases and boundary inputs are in TRIAGE.json. All strict replay differences remain in lambda_exact_replay_differences.csv.
Do not promote this implementation as bit-equivalent or hardware-qualified. No epsilon or control threshold was changed.
