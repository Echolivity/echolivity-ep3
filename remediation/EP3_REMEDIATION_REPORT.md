# EP-3 — Remediation Report (v0.1.0-dev → v0.1.1-dev)

Date: 2026-11-14 · Scope: findings F1–F8 from `validation/` (EP3_practical_validation) · Engineering remediation, not a redesign.

## 1. Baseline

| Item | Value |
|---|---|
| Release baseline | v0.1.0-dev, engine `dsp/ep3_core.genexpr` SHA-256 `2a46b3b2…a50b` (the audited build; matches `audit/evidence/integrity.txt`) |
| Baseline preserved | Read-only copy `echolivity_ep3_v0.1.0-dev_baseline/`, file checksums in `EP3_v0.1.0-dev_baseline_SHA256SUMS.txt` (41 files). Every regression test runs it as the "before" |
| Fixed build | v0.1.1-dev, engine SHA-256 `578c0ba8…31db` |
| Environment | GenExpr source executed as C (`tests/genexpr_sim`, bit-exact against a Python execution, test X01). **No Max 9 or Live 12** (`remediation/evidence/environment.txt`) |

Each finding below keeps these states separate:
- confirmed defect;
- suspected cause, then evidence-supported cause;
- proposed fix, then implemented fix;
- verified fix (engine);
- host validation (UNVERIFIED throughout).

## 2. Code changes

All changes are in `dsp/ep3_core.genexpr` (each marked `F1`…`F6 (v0.1.1)`) and `build/layout_ep3.py` (F5).

| # | Change | Lines of DSP touched |
|---|---|---|
| 1 | New stateless function `loop_peak(fde)`: peak gain of the fixed loop chain (tape HF loss × 1 kHz-normalised de-emphasis × 30/20/10 Hz couplings), grid search 20 Hz–4 kHz | +16 |
| 2 | `fb_amt`: Sustain term × `pk3 / pk_loop`; HOLD term `Hold Feedback / pk_loop × hold_c` | 1 line replaced, +8 |
| 3 | HOLD level trim `hold_c` (only while HOLD is on): playback power envelope (0.3 s), target captured at HOLD, settle-then-lock, ±3 % per pass, 0.2 s smoothing | +35 |
| 4 | De-emphasis: both 2947 Hz and 268 Hz one-poles run; output = crossfade by `pbs = psmooth(pb_eq)` | 3 lines replaced, +3 |
| 5 | Source cap: `cdt = CS·sr·psmooth(pre_bypass)` instead of a hard switch | 1 line replaced |
| 6 | Cable filter always runs; below 1 pF it is blended out | 3 lines replaced, +6 |
| 7 | Loop length: 2-stage fade out, apply, hold muted for one delay + 5 ms, fade in | 1 line replaced, +22 |
| 8 | `loop_s` default 112.5 → 8 | default only |

Unchanged: tape transport, record/write head, FET stage, mixer, saturation, flutter, SOS, PLAYBACK, protection, tap/sync. Test R06 shows the output is **bit-identical** to the baseline outside HOLD with the default BRIGHT voicing and equal loop length, across 5 scenarios: defaults with noise/flutter, Sustain 0.7 with slider LFO, Cable 470 pF, SOS, and DRIVE + TAPE STOP.

---

## 3. Findings

### F1 — HOLD instability

| Field | Detail |
|---|---|
| Original severity | P1 |
| Confirmed defect | Yes. Baseline HOLD grows +13.0 dB (44.1/48k) to +13.2 dB (96k) over 60 s at default settings (R01 "before"), settling only at a saturation equilibrium |
| Suspected cause (report) | The 1 kHz de-emphasis normalisation sits inside the feedback loop |
| Investigation | 1. An impulse-ratio measurement suggested a 1.71 peak at 56 Hz. **Discarded:** windowing artefact (filter tails crossing window edges). 2. Sine bursts measured per-pass loop gain per unit feedback: **1.040 at 300 Hz (3 nF)**, 0.997 at 1 kHz. 3. An analytic model of the fixed chain predicts 1.043 at 334 Hz, within 0.4 %. 4. A prototype that only removed the normalisation from the loop made HOLD *fade* (−13 dB/min): saturation compression and off-peak frequency decay make a fixed unity gain insufficient. 5. The baseline's "hold" was in fact growth to a saturation equilibrium |
| Root cause (evidence-supported) | (a) The 1 kHz normalisation lifts the loop's peak gain above 1 below 1 kHz (×1.040 at 3 nF). (b) Even at a peak gain of exactly 1, a fixed gain cannot freeze a loop, because tape saturation compresses slightly at playing level |
| Modification | Change 1 (HOLD gain = Hold Feedback ÷ computed peak gain), plus change 3 (HOLD-only level trim, ±3 %/pass) with these rules: the target is captured at HOLD; while settling, the target may only fall, never rise, until the loop loses < 1 dB per pass (≥ 2 passes, max 30 s); after locking, the target follows the loop down if it falls > 1.5 dB below (spectral loss), and changes by Hold Feedback² per pass. Two settle rules were tried and rejected (fixed 4 passes: 9 dB swell in DARK; < 0.25 dB/pass: BRIGHT decayed 27 dB). Both are documented in this report |
| Regression tests | R01 (60 s, 3 rates, both voicings), R02 (Hold Feedback 0.95 / 1.05), R03 (release), R05 (first echo unchanged), R06 (bit-identity outside HOLD), E15, R13 (HOLD inside the 10-min stress run) |
| Results | **BRIGHT:** settles 2.9–3.1 dB below the pre-HOLD level and holds within **0.2 dB** from 6 s to 60 s at 44.1/48/96 kHz (before: +13 dB). **DARK:** never above −6.4 dB re pre-HOLD; sheds its upper content, then holds within **0.7 dB** from 20 s to 60 s (before: +2.9 dB, saturated). **Hold Feedback:** 0.95 fades −26.8 dB and 1.05 grows +7.9 dB over 20 s (meaning kept). **Release** decays normally (−38.0 dB vs −37.6 before). E15 drift +0.2 dB (before +2.0) |
| Status | **PASS** (engine); host UNVERIFIED (L11) |
| Remaining risk | (1) HOLD is now a controlled freeze. The ~3 dB settle in BRIGHT and the bass-only hold in DARK are behaviour changes, declared in the CHANGELOG. (2) With strong Repeat Resonance or a boosted feedback filter, the loop's peak gain exceeds the computed value; the trim's ±3 % may not fully contain it. Bounded by saturation and the limiter (not separately tested). (3) A real musician needs to judge whether the settle feels natural (L11) |

### F2 — DE-EMPH (33 nF) feedback runaway

| Field | Detail |
|---|---|
| Original severity | P1 |
| Confirmed defect | Yes, reproduced. At 33 nF, Sustain 0.3 grows +28 dB and the default 0.4 grows +15 dB over 4 s (sine) or +1 dB (pluck). Peak loop gain **3.369 at 100 Hz** (measured at 3 rates: 3.368–3.373) |
| Investigated independently of F1 | Same mechanism, measured separately: the 33 nF normalisation (×3.86 at LF) gives an analytic peak of 3.383 at 102 Hz against 3.369 measured |
| Root cause | Frequency-dependent loop gain: normalising a 268 Hz low-pass to unity at 1 kHz raises the loop gain 3.4× around 100 Hz |
| Modification | Change 2: the Sustain coefficient is multiplied by `pk3/pk_loop` (1.0 exactly for BRIGHT, 0.308 for DARK), so both voicings have the **same peak loop gain**. The echo output keeps its 1 kHz normalisation, so the DARK voicing's tone and level are unchanged (R05: first-echo spectrum identical to baseline, 0.000 dB). This equalises the loop at its unstable peak; it isn't a blanket reduction. BRIGHT is untouched, and both voicings still self-oscillate from ~0.8 |
| Regression tests | R04 (3 rates × both voicings: measured peak loop gain, Sustain 0.4 / 0.7 / 0.85), R05, E14, E09, R13 (ECHO TONE switching in the 10-min run) |
| Results | Measured peak loop gain BRIGHT **1.039–1.041** at 300 Hz, DARK **1.038–1.040** at 100 Hz (before 3.37). Both decay at 0.4 (−272 / −296 dB) and at 0.7 (−42 / −66 dB), and run away at 0.85 (+9.2…+9.9 dB) |
| Status | **PASS** (engine); host UNVERIFIED (L12) |
| Remaining risk | Tonal side effect, declared: at a given Sustain, DARK repeats now lose midrange faster (loop gain 0.31 at 1 kHz vs 0.997 before). The baseline only kept the mids by over-boosting the bass, which caused the runaway; this is the physical behaviour of a 268 Hz playback filter in the loop. A listening check is needed (L12) |

### F3 — Default loop length

| Field | Detail |
|---|---|
| Original severity | P2 |
| Root cause | Design default: authentic 112.5 s loop (75 ft at 8 ips) |
| Modification | `loop_s` default 8 s in the engine and the device; range unchanged (1–112.5 s); UI note "112.5 s = authentic" |
| Regression tests | R07; E04, E08 (loop explicitly set, unaffected) |
| Results | Engine default 8, device initial 8, max 112.5; SOS returns every **8.000 s** at factory settings (before: first return after ~112 s) |
| Status | **PASS** (engine); host UNVERIFIED (L03) |
| Remaining risk | A deliberate change from authenticity to practicality (adviser decision D4); existing sets that relied on the default would play differently. No saved sets exist yet, since it has never been loaded in Live |

### F4 — Switching clicks

| Field | Detail |
|---|---|
| Original severity | P2 |
| Root cause | ECHO TONE: instantaneous switch of filter corner and normalisation (×1.056 ↔ ×3.86). Cable Load: an `if (C > 1)` branch switched a filter in/out, and its state went stale while bypassed. VOICE (source cap): hard step of the capacitor term (−52 dB; in the validation measurements but not raised as a finding) |
| Modification | Changes 4–6: crossfade (10 ms), parameter smoothing (10 ms), and a filter that always runs, blended below 1 pF. No added latency; a 10 ms response is the same as every other smoothed control |
| Regression tests | R08 (3 switches × 3 rates, before/after), R09 (Cable LFO), R12 (11-control LFO automation) |
| Results | ECHO TONE **−68…−70 dB** (before −13…−14); Cable 0→1500 pF **−66…−71 dB** (before −36…−39); VOICE **−103…−104 dB** (before −52). Cable LFO −3.3 dB re the brightest static end (before −2.5). All 11 automated controls ≤ +0.0 dB |
| Status | **PASS** (engine); host UNVERIFIED (L13) |
| Remaining risk | Pre-existing test flaw found and corrected: R09/R12 originally compared against the default static setting, so a brighter sweep end counted as a "click". The reference is now the brighter static end of the sweep. This is a correction, not a loosening: the +3.5 dB limit is unchanged |

### F5 — Interface clutter

| Field | Detail |
|---|---|
| Original severity | P2 |
| Root cause | About 15 engineering controls shared the face with performance controls; voicing switches were named by component values; the two "ECHO" buttons were ambiguous |
| Modification | ADVANCED toggle (new Stored Only parameter "Advanced View", default off, re-applied on load). It hides ten controls (DRV FB, Head Speed, Mode Transition, Hold Feedback, Bias Leak, Bias kHz, Loop Decay (SOS loss), Slider Min/Max) using the H&H device's show/hide scripting. Relabelled: VOICE LATE/EARLY, ECHO TONE BRIGHT/DARK, ECHO ON, PLAYBACK, Wow, LOOP s, header "mono". Kept visible because they're musically essential: delay, tap/sync, pads, Sustain, Echo Volume, Record Level, ECHO/S-O-S, footswitches, Loop length, tape and filter controls, output, voicing and Cable. **No parameter long name changed** (all 54 v0.1.0 names kept), so automation and presets stay valid. Visual identity, themes and layout grid unchanged |
| Regression tests | TH01–TH05 (themes cover the new controls; ADVANCED wiring; Stored Only parameters); structural checks (no overlaps in either view, cords valid, UI defaults = engine defaults) |
| Results | 5/5; 0 overlaps in default and ADVANCED views; 55 parameters, 53 automatable |
| Status | **PASS** (structure); **UNVERIFIED** in Max/Live (L15). Musician usability not tested with players |
| Remaining risk | `script hide/show` inside a Live device and its restore-on-load are unconfirmed in a host. The enum text changes (OUT/22nF → LATE/EARLY, 3nF/33nF → BRIGHT/DARK) alter what automation lanes display, not their values |

### F6 — Loop-length transition glitch

| Field | Detail |
|---|---|
| Original severity | P3 |
| Classification | Genuine defect (minor), corrected: the new 8 s default makes loop changes more likely |
| Root cause | Two parts, found in sequence. (1) Moving the wrap point makes the heads land on other tape. (2) A first fix (10 ms linear fade) still gave −37 dB: the tape between the heads holds material from the old loop, so a hard join reaches the echo head one delay later |
| Modification | Change 7: smooth 2-stage fade out, apply the new length, keep echo and feedback muted until fresh tape arrives (one delay + 5 ms), fade in |
| Regression tests | R10 (3 rates, before/after), R13 |
| Results | **−101…−102 dB** (before −37…−38); echo level after the change 0.0 dB re before |
| Status | **PASS** (engine); host UNVERIFIED (L14) |
| Remaining risk | Behaviour, declared: the echo drops out for about one delay time after a change; automating Loop Length continuously keeps the echo muted while it moves |

### F7 — Restart chirp after TAPE STOP

| Field | Detail |
|---|---|
| Original severity | P3 |
| Classification | **2 — acceptable design characteristic.** Material recorded while the tape restarts is squeezed onto it and replays at speed as a short chirp, as on real tape |
| Modification | None |
| Results | −18.5 dB re signal peak, unchanged (bit-identical path, R06 includes TAPE STOP) |
| Status | **ACCEPTED** |
| Remaining risk | Some players may dislike it; revisit only with user feedback |

### F8 — Aliasing during deliberate input overdrive

| Field | Detail |
|---|---|
| Original severity | P3 |
| Classification | **3 / 4 — limitation to document; non-issue in normal use** |
| Evidence | 3.1 kHz test tone. At guitar level (−18 dBFS RMS) aliasing is −114.5 dB at Input +0 / +6 dB and −77.5 dB at +12 dB. At hot level (−6 dBFS RMS) it's −77.5 dB at +0, **−37.5 dB at +6**, **−31.2 dB at +12** |
| Modification | None. Oversampling the FET stage would be a DSP change, not justified by normal-use evidence |
| Status | **ACCEPTED** (documented limitation) |
| Remaining risk | Bright, hot sources pushed with Input gain get an inharmonic edge |

---

## 4. Behaviour changes (declared, not silent)

1. Factory loop length is 8 s.
2. HOLD settles slightly (BRIGHT ~3 dB) and then holds, instead of swelling.
3. In DARK, repeats lose midrange faster at a given Sustain, and HOLD keeps mostly the low end.
4. A loop-length change mutes the echo for about one delay.
5. Labels and the ADVANCED view change on the panel.

Everything else is bit-identical to v0.1.0-dev in the default voicing (R06).
