# EP-3 v0.1.3-dev — deliverables index

| # | Required deliverable | Where |
|---|---|---|
| 1 | Updated device source | `devices/Echolivity_EP3_v0.1.3-dev.{amxd,maxpat}`, `…_Return.{amxd,maxpat}`; engine `dsp/ep3_core.genexpr`; generators `build/` |
| 2 | Project and supporting assets | `docs/`, `reference/`, `listening/` (incl. `listening/hold_study/`), `tests/golden/` (Max harness) |
| 3 | Regression test suite | `tests/test_derived.py`, `test_ep3.py`, `test_ui_theme.py`, `test_workflow.py`, `test_remediation.py`, `tests/genexpr_sim/` |
| 4 | Baseline / self-contained regression infrastructure | `baseline/v0.1.0-dev/` (frozen engine, hash-checked), `baseline/v0.1.2-dev/` (previous device) |
| 5 | Host validation report | `EP3_HOST_VALIDATION_REPORT.md` |
| 6 | Dub performance workflow report | `EP3_DUB_WORKFLOW_REPORT.md` |
| 7 | HOLD musical assessment | `EP3_HOLD_MUSICAL_ASSESSMENT.md` |
| 8 | Evidence reconciliation report | `EP3_EVIDENCE_RECONCILIATION.md` |
| 9 | CPU and runtime stability report | `EP3_CPU_RUNTIME_STABILITY.md` |
| 10 | SHA-256 manifest | `../SHA256SUMS.txt` (every file in the package) |
| 11 | Release readiness assessment | `EP3_RELEASE_READINESS.md` (decision: ACCEPT WITH LIMITATIONS) |
| 12 | Implementation report | `EP3_IMPLEMENTATION_REPORT.md` |
| 13 | Known issues and limitations register | `EP3_KNOWN_ISSUES.md` |
| 14 | Owner testing guide | `EP3_OWNER_TESTING_GUIDE.md` (+ `docs/TEST_PLAN_Max_Live.md`) |
| — | One-click host check (Windows) | `../RUN_HOST_CHECKS.bat` (addendum 2026-11-18) |
| — | K-03 HOLD/DARK candidate (not shipped) | `../experimental/hold_dark_loop/README.md` |
| — | Pre-flight checks (format, Ableton checklist, Gen names) | `EP3_PREFLIGHT_CHECKS.md`; fallback test patch `../tests/golden/fallback/` |
| — | Regression results | `EP3_REGRESSION_REPORT.md`; raw logs `../remediation/evidence_v0.1.3/archive_run/` |

Re-run everything: `for t in test_derived test_ep3 test_ui_theme test_workflow test_remediation; do python3 tests/$t.py; done` (Python 3, numpy, scipy, gcc).
