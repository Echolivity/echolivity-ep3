# EP-3 v0.1.1-dev — Regression Test Report

Date: 2026-11-14. Environment: `remediation/evidence/environment.txt`.

These are GenExpr-source results, executed as C (gcc -O2) and cross-checked bit-exact against a Python execution of the same file (X01). **They are not Max 9 or Live 12 results.**

Final run: fresh copy, empty compile cache, device rebuilt (byte-identical to the shipped one). Logs are in `remediation/evidence/`.

## Summary

| Suite | Tests | Result | Report |
|---|---|---|---|
| Remediation regression (F1–F8), fixed vs baseline | R01–R14 | **14/14 PASS** | `tests/REMEDIATION_TEST_REPORT.md` |
| Behaviour (unchanged tests from v0.1.0-dev) | X01, E01–E17, C01 | **19/19 PASS** | `tests/EP3_TEST_REPORT.md` |
| UI structure: themes + ADVANCED view | TH01–TH05 | **5/5 PASS** | `tests/UI_THEME_REPORT.md` |
| Arithmetic behind the modelling notes | D01–D07 | **7/7 PASS** | `tests/DERIVED_REPORT.md` |
| Structural integrity (cords, Param wiring, UI/engine defaults, overlaps in both views, long names kept) | — | PASS | build output + checks in this report's §4 |

## 1. Coverage against the requested matrix

| Requested | Test(s) | 44.1 | 48 | 96 | Result |
|---|---|---|---|---|---|
| HOLD stability | R01 (60 s, both voicings), R02, R03, E15 | ✔ | ✔ | ✔ | PASS |
| Feedback stability | R04 (Sustain 0.4 / 0.7 / 0.85 + measured peak loop gain), E09, E14 | ✔ | ✔ | ✔ | PASS |
| Both DE-EMPH settings | R01, R04, R05, R08 | ✔ | ✔ | ✔ | PASS |
| SOS layering | R11, E04, R07 | ✔ | ✔ | ✔ | PASS |
| Pitch manipulation | R11 (1/u within 0.07 %), E02, E03 | ✔ | ✔ | ✔ | PASS |
| Tape-speed transitions | R11 (stop pitch 653 Hz vs 653 expected), E16 | ✔ | ✔ | ✔ | PASS |
| Saturation | R11 (THD 2.07–2.11 % at nominal), E05 | ✔ | ✔ | ✔ | PASS |
| Loop-length changes | R10 | ✔ | ✔ | ✔ | PASS |
| Parameter automation | R12 (11 controls, 128-sample steps), R09, E13 | — | ✔ | — | PASS (48 kHz only) |
| Extended playback | R13 (10 min @ 48 k, 2 min @ 44.1 / 96 k, with HOLD and ECHO TONE switching) | ✔ | ✔ | ✔ | PASS |
| CPU and memory stability | R14, C01 | ✔ | ✔ | ✔ | PASS (proxy only) |

## 2. Before / after (baseline v0.1.0-dev → v0.1.1-dev)

| Measure | Before | After |
|---|---|---|
| HOLD, BRIGHT/3 nF, level at 60 s re pre-HOLD | +13.0 / +13.0 / +13.2 dB | −3.1 / −3.0 / −3.0 dB, spread after settling 0.2 dB |
| HOLD, DARK/33 nF | +2.9 dB (saturated loop) | −35.6 / −35.1 / −33.8 dB (bass-only hold), spread 0.7 dB |
| Peak loop gain per unit feedback, BRIGHT / DARK | 1.040 / 3.369 | 1.040 / 1.039 |
| DARK at default Sustain 0.4 | runs away | decays (−296 dB over 8 s) |
| First echo, both voicings (100 Hz–8 kHz) | — | identical (0.000 dB) |
| ECHO TONE switch click | −13…−14 dB | −68…−70 dB |
| Cable 0→1500 pF click | −36…−39 dB | −66…−71 dB |
| VOICE switch click | −52 dB | −103…−104 dB |
| Loop-length change click | −37…−38 dB | −101…−102 dB |
| Factory SOS loop | 112.5 s | 8.000 s |
| Default voicing outside HOLD | — | bit-identical (R06, 5 scenarios) |
| CPU proxy at 48 kHz (range over four runs) | 2.06–2.61 % | 2.01–2.35 % |
| CPU proxy at 96 kHz (four runs) | 3.78–4.58 % | 3.91–4.92 % |

On CPU: no meaningful change. Run-to-run variation (up to 0.55 % at 48 kHz and 1 % at 96 kHz, between runs of the same build) is larger than the difference, because the proxy times every sample individually. The added work is two one-pole filters, one envelope and a few multiplies per sample. `loop_peak()` runs once.

**Memory:** the C process peak RSS for 1 s of audio is 13 MB, because only touched pages of the 43 MB (64-bit) tape buffer are resident. Max allocates and clears the whole buffer, so expect it in full there. No new buffers were added.

## 3. Test changes made during this work (all traceable)

| Test | Change | Why | Effect on strictness |
|---|---|---|---|
| R04 (new) | First draft used a 300 Hz burst over 5 s; replaced with the measured peak loop gain (sine grid) plus a broadband pluck over 10 s | The 300 Hz probe sits where DARK's loop gain is 0.79, so DARK's runaway at its 100 Hz peak didn't show within 5 s. The probe favoured one voicing | Stricter: adds a quantitative "same peak gain within 2 %" check |
| R09 / R12 (new) | Reference changed from the default static setting to the brighter end of the sweep held static | Sweeping Cable Load to 0 pF is legitimately brighter than the 470 pF default; that's a tone change, not a click | Same +3.5 dB limit |
| R14 (new) | Memory measured in a clean subprocess; wording clarified | The first reading included all earlier child processes (4.4 GB, meaningless) | — |
| TH04 | Expected Stored Only parameters: `UI Theme` → `Advanced View, UI Theme` | New parameter (F5) | Explicit list, not a count |
| TH05 (new) | ADVANCED view wiring | F5 | New coverage |
| E01–E17, X01, C01, D01–D07 | **Unchanged** | — | — |

No acceptance criterion from v0.1.0-dev was relaxed. E15 still passes and is now well inside its limit: +0.2 dB, against +2.0 dB before.

## 4. Regressions found during the work

| Found | Cause | Resolution |
|---|---|---|
| HOLD faded −13 dB/min after the first (normalisation-only) fix | Saturation and off-peak decay; a fixed unity gain can't freeze a loop | HOLD level trim (F1, change 3) |
| HOLD locked +7.5 dB too loud | Target captured from a lagging envelope that still held pre-HOLD repeats | Settle-then-lock: the target may only fall while settling |
| DARK HOLD dipped, then swelled 9 dB | Locked before the spectral loss finished; the trim chased an unreachable target | After lock, the target follows the loop down by more than 1.5 dB |
| Stricter lock rule (< 0.25 dB/pass) made BRIGHT decay −27 dB | Saturation keeps BRIGHT's natural decline above that rate | Reverted to < 1 dB/pass |
| Loop-length fade still clicked (−37 dB) | Stale tape between the heads | Mute until fresh tape arrives |

No unresolved regressions.

## 5. Not covered here

- Anything inside Max 9 or Live 12: compile, load, real-time CPU, presets, Live automation, UI drawing, script show/hide. See `EP3_HOST_VALIDATION_REPORT.md`.
- Listening tests with musicians.
- Interaction of HOLD with strong Repeat Resonance or boosted feedback filters.
