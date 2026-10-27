# Plan-only candidate independent read-only review

Reviewed actual trial source SHA-256 `6ee8b96b03e75bc498679400e3d336f2b58524c33935fd26b1dab6c3499d56bb`. The original v8 root body is unchanged except the NULL builder choice. Shared plans still use the old path; exactly hw1/2/4 with shared=NULL use the two-OFF builder. The full seed plan, dense root, FULL/observer root, projection and profiling helpers are unchanged.

ON base is safe to leave stale in this call graph. The original root uses (hwbit?q:base) inside each active-phase sum. An ON phase always selects q; both OFF base values are freshly assigned, even when q=0. off_active need not contain ON bits because the root ORs in hw. Event tail fields are not read: the terminal segment usescu, toggling requiresk<count, and the two-event swap requirescount==2.

The partial plan must remain private to the current NULL call and hardware mask. It must never replace the full pf_seed/shared plan or be reused with another hw. On a later NULL call, both then-OFF fields are rebuilt; hw0 still rebuilds the complete plan. No extra ON-base zero initialization is needed.

cu/cl/span, all-three-phase tolerance scale, finite tests, exact initial-active conditions and strict event filters retain their original expressions. Stable phase order and strict two-event swapping preserve coincident events. Removing ON events gives the same OFF subsequence that the original root tests after continue; all root closed intervals, zero-width segments, first-root rule, residual checks and endpoint fallback remain intact.

No numerical source blocker was found. No new global object or BSS array was introduced. Private ON/tail plan bytes can differ; no raw root failed-status/next-byte exemption is allowed. Shared input must remain unchanged. Public failed output fields retain the existing documented validity contract.

**Placement issue fixed in source:** root added CODE_SECTION(pf_lambda_single_plan,"pcmfpc_code") before freezing live version9. Both diagnostic marker assignments are9. The actual linked RAM placement remains part of the final binary audit. Actual TI stack/DP/BSS and FP dependency audit, selected-candidate validation and board timing remain pending. The earlier new-solver proxies must not be reused as this plan-only candidate performance numbers.

Live c SHA-256: `e2affd9a2d3728e6aa67f0fa044603b3c25ac74458b87965210f2bfdb6b25dec`; header SHA-256: `813bbb59344ed582d77b1ad157c26487e5f70fdc37f9499a3b62a8cc29d98bab`.

Integration note after the source review: HOST and actual TI binary audits have now passed; see the final round9 REPORT, VALIDATION_SUMMARY and build_pass9/AUDIT. Board timing remains pending. The earlier review-time pending list is retained for traceability.
