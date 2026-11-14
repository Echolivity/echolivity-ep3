# EP-3 v0.1.3-dev — Release readiness and final engineering decision

Date: 2026-11-14

## Decision: **ACCEPT WITH LIMITATIONS — ready for owner testing, not for release**

Owner testing may proceed, with these restrictions:
1. **Host validation is BLOCKED.** No host gate has been executed. The first step must be the Max harness (20 min): a gen~ compile failure would invalidate everything after it.
2. **The controller bank and the Return variant are unverified in Live.** Their structure is tested; Live's use of them isn't.
3. **HOLD in DARK isn't suitable for melodic phrases (K-03).** Use BRIGHT for freezes until the owner decides on the candidate change.

**Not production-ready:** the critical host gates (G01–G05) are blocked.

## Acceptance criteria

| Criterion | State | Evidence |
|---|---|---|
| v0.1.2-dev DSP regressions remain resolved | **PASS** | R01–R14 14/14 from the archive; engine byte-identical |
| Host validation executed, or blockers documented | **BLOCKED, documented** | `EP3_HOST_VALIDATION_REPORT.md` |
| Insert and Return correctly implemented | **PASS (engine and structure) / BLOCKED (Live)** | W02, W03, W06, W07; L20 |
| First-eight controller bank verified | **PASS (structure) / BLOCKED (Live)**: *not verified in the brief's sense* | W04, W05; L18, L19 |
| HOLD assessed musically | **Measured; listening PENDING** | `EP3_HOLD_MUSICAL_ASSESSMENT.md` |
| Regression tests reproducible | **PASS** | 53/53 from the extracted archive, outside baseline hidden |
| Conflicting evidence reconciled | **PASS** | `EP3_EVIDENCE_RECONCILIATION.md` |
| All deliverables included and checksummed | **PASS** | `SHA256SUMS.txt` (whole package) |
| Outstanding issues documented | **PASS** | `EP3_KNOWN_ISSUES.md` (K-01…K-14) |

Two criteria can only be met in a host: the bank verification and the musical listening. Hence "with limitations", not "accept".

## Status by area

| Area | Status |
|---|---|
| DSP engine | PASS (engine level, unchanged since v0.1.2-dev) |
| Dub workflow (bank, Return) | Implemented; structure and engine PASS; host BLOCKED |
| Musical validation | Measured on synthetic material; listening PENDING |
| Platform compatibility | BLOCKED |
| UI | Structure PASS; host BLOCKED |
| Release | NOT READY (development build v0.1.3-dev) |

## Summary for the decision

1. **What actually changed:** the "Dub" controller bank; the Return variant device; the frozen baseline shipped inside the package with a hash check; the workflow test suite; the HOLD, stability and dub studies; the evidence clean-up. No DSP change.
2. **What was independently tested:** 53 automated tests and 9 reference reproductions, run from the extracted archive. HOLD study, 30-min stability, CPU proxy and dub scenarios D1–D10, all on the engine as C.
3. **What remains unverified:** everything in Max 9 and Live 12; all listening judgements.
4. **What changes real-world performance:**
   - controller bank order (Push / controllers);
   - the Return variant (fixes the doubled-dry pitfall on returns);
   - the documented HOLD workaround (BRIGHT for melodic freezes).
5. **Regressions introduced:** none detected.
6. **Remaining risks:**
   - a gen~ compile difference;
   - the .amxd container being rejected by Live;
   - Live ignoring the parameter bank;
   - HOLD level judged too soft;
   - DARK HOLD limitation.
7. **Evidence:**
   - `remediation/evidence_v0.1.3/archive_run/` (environment, logs, summary);
   - `remediation/evidence_v0.1.3/dub_scenarios.log`;
   - `tests/hold_study_results.json`;
   - `tests/stability_results.json`;
   - `tests/WORKFLOW_TEST_REPORT.md`;
   - `SHA256SUMS.txt`.

## Next step

Run the owner session (`EP3_OWNER_TESTING_GUIDE.md`). Change only what it shows, re-run all suites, and then reassess for release candidate.
