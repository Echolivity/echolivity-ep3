# EP-3 — Release Readiness (v0.1.1-dev)

Date: 2026-11-14

## Designation: **v0.1.1-dev — development build** (not a release candidate)

It isn't promoted to release candidate because the required host gates haven't been run (no Max 9 or Live 12 in this environment). Both P1 defects are fixed and verified in the engine.

## Status by area (kept separate)

| Area | Status | Basis |
|---|---|---|
| **DSP engine validation** | **PASS (engine level)** | 14/14 remediation regression at 44.1/48/96 kHz, 19/19 behaviour, 7/7 arithmetic; bit-identical to baseline outside the fixed paths (R06); 10-min stress run clean. Executed as C from the GenExpr source, not inside gen~ |
| **Musical validation** | **PARTIAL** | Objective measures only: levels, tone, stability, clicks, pitch. No listening tests with musicians. Unjudged by ear: the HOLD settle behaviour, the darker DARK repeats, and the echo dropout after a loop change |
| **Platform compatibility** | **UNVERIFIED** | Never compiled in Max 9 or loaded in Live 12 |
| **User-interface validation** | **PARTIAL** | Structure verified (TH01–TH05, no overlaps, defaults consistent); drawing, ADVANCED show/hide and restore in Live unverified; not tried by musicians |
| **Release readiness** | **NOT READY** | Platform gate open |

## P1 defects

| Finding | Engine | Host |
|---|---|---|
| F1 HOLD swell | Fixed, verified (R01–R03) | UNVERIFIED (L11) |
| F2 DARK runaway | Fixed, verified (R04, R05) | UNVERIFIED (L12) |

## Gate to Release Candidate

1. G01–G03 and L01–L16 pass in Max 9 / Live 12 with recorded evidence.
2. A short listening session (2–3 players): HOLD in both voicings, DARK repeats, loop-length changes, ADVANCED view.
3. Any fixes from steps 1–2 re-verified with the regression suites (all four).

## Gate to Release (after RC)

- RC used in at least one real session without crashes or dropouts.
- Live CPU figures recorded at 44.1 / 48 / 96 kHz.
- Release notes written; the build frozen with checksums, as for H&H v0.2.1.
