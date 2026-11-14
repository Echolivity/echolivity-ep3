# EP-3 v0.1.1-dev — Host Validation Report (Max 9 / Ableton Live 12)

Date: 2026-11-14

## Result: no host validation was possible

The build environment is a Linux container with Python, numpy, scipy and gcc (`remediation/evidence/environment.txt`). **Max 9 and Ableton Live 12 are not installed and can't be installed here** (both are macOS/Windows applications). No test in this report was executed, and none is marked PASS.

The C-compiled engine results in `EP3_REGRESSION_TEST_REPORT.md` are evidence about the DSP source. They aren't evidence that the product works in its host.

## Gate status

| Requirement | Gate / test | Status | What exists instead (not a substitute) |
|---|---|---|---|
| Max compilation | G01 | **UNVERIFIED** | GenExpr source parses and runs under two independent executions (C and Python, bit-exact, X01), which rely on gen~ semantic assumptions A1–A5 |
| Max memory | G02 | **UNVERIFIED** | Tape buffer 5.4 M samples (21.6 MB at 32-bit / 43 MB at 64-bit) |
| gen~ semantics | G03 | **UNVERIFIED** | — |
| Ableton loading and operation | L01 | **UNVERIFIED** | `.amxd` container = `.maxpat` (checked); all objects of types already used in the H&H device |
| Real-time audio processing | L01, L08, L09 | **UNVERIFIED** | C proxy ≈ 2 % of one core at 48 kHz; per-sample engine, no lookahead |
| Preset save and reopen | L07, L15, L16 | **UNVERIFIED** | 55 parameters with unique long names; all 54 v0.1.0 long names kept |
| Parameter automation | L05, L12, L13 | **UNVERIFIED** | Engine-level automation tests (R12, R09, E13) |
| UI interaction | L07, L13, L15 | **UNVERIFIED** | Structure tests TH01–TH05; previews `docs/ui_preview_*.png` are approximate renders |
| Audio continuity | L11–L14 | **UNVERIFIED** | Engine click tests R08, R10, E13; 10-min stress run R13 |
| CPU and memory behaviour | L08, G02 | **UNVERIFIED** | Proxy only (R14, C01) |

## Specific host risks to check first

1. **gen~ compile (G01).** New code uses a `for` loop inside a function (`loop_peak`), `pow`, `exp` and `log` in the per-sample path, and more `History` state. These are standard GenExpr, but they've only been exercised by the project's own translators.
2. **The 5.4 M-sample `Data` buffer (G02)**: allocation size and load time.
3. **`script hide/show` in a Live device (L15)**: the ADVANCED view, its default-hidden state and restore-on-load. The H&H device's slider swap (H&H L23) uses the same mechanism and is also unverified.
4. **Stored Only parameters** (UI Theme, Advanced View) restored from a Live set and from a device preset (L16).
5. **Real CPU** at 44.1 / 48 / 96 kHz with 64 / 128 / 512 buffers (L08).

## How to run

Follow `docs/TEST_PLAN_Max_Live.md`: G01–G03 and L01–L16, about 1–1.5 hours. Record each result with a screenshot, recording or console text, and file them under `remediation/host_evidence/`. Only then may the statuses above change.
