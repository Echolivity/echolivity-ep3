# EP-3 v0.1.2-dev — Team Review: reliability and musical usefulness

Date: 2026-11-14

Team:
- DSP engineering
- Max for Live development
- Verification
- Independent audit
- Dub production

Scope: move v0.1.1-dev toward demonstrable reliability and musical usefulness in Max 9 / Live 12. This is not a DSP redesign.

**Constraint stated up front: Max 9 and Live 12 are not available in this environment.** Every host result is UNVERIFIED. This work does three things:
1. Removes risks that would fail the first Max session.
2. Supplies a kit that turns that session into hard evidence.
3. Evaluates the device as a dub instrument, with renders and measurements.

## 1. What changed in v0.1.2-dev

| Change | Why | Effect on sound |
|---|---|---|
| Renamed `dcblock` → `dc_block` and `lt` → `l_t` in `dsp/ep3_core.genexpr` | Both are gen~ built-in operator names. Reusing reserved names (`div`, `e`, `avg`) is what broke the H&H's first build. A static scan of all 431 identifiers now finds no collisions | None: bit-identical (difference 0.0; X01, R06 pass) |
| Max 9 host harness `tests/golden/EP3_host_harness.maxpat`, reference renders, `compare.py`, `check_behaviour.py` | A single Max session yields G01 (compile), G03 (5 sample-exact renders) and G04 (4 behaviour checks) without Live | — |
| Dub scenario renders `listening/*.wav` and `tests/DUB_SCENARIO_REPORT.md` | Musical validation needs ears and repeatable material | — |
| Test plan: harness steps, L17 (30-min session), M01–M08 musical checks | Turns the host session into a checklist with expected values | — |

## 2. Findings, each judged three ways

Each finding gets three views:
- **Engineering:** does it work?
- **Production:** does it sound and behave musically?
- **Operational:** can a producer use it reliably?

### T1 — Feedback into self-oscillation (the core dub move)
- **Engineering:** OK. Runaway from Sustain 0.8 in both voicings. Bounded by tape saturation and the guard; never near the ceiling (peak ≤ 0.22).
- **Production:** convincing. Ridden while repeats sound, the oscillation builds in under a second and sits at −18 to −24 dBFS RMS. It pulls back fast: 0.65 s at slapback, ~4 s (six repeats) at a dotted eighth. Pitch follows the slider smoothly (siren).
- **Operational:** controllable. One caveat for performers: cranking Sustain *after* the repeats have died gives a slow build from tape hiss (tens of seconds at long delays). That's physical, and a technique note, not a defect. **Verdict: keep.**

### T2 — Throws on a return
- **Engineering:** OK. Echo Volume 1 = fully wet (dry silenced).
- **Production:** a long, even tail (−2.1 dB/repeat at 0.6, 11 repeats within 30 dB); DRIVE throws come back +13 dB hotter and saturated. The right tools for dub throws.
- **Operational: risk.** With the default Echo Volume 0.5 on a Return track, the dry signal passes too and doubles the mix. That's the most likely first-session mistake in a send/return workflow. **Trade-off:** the default suits insert use, which is how the original works. Smallest fix: documentation, plus (to verify in Live) a "Return" device preset with Echo Volume 1. Not done here: a preset file can't be created or checked without Live. **Priority P2.**

### T3 — HOLD (freeze) in a musical context
- **Engineering:** OK and bounded (R01: never above the pre-HOLD level; BRIGHT within 0.2 dB after settling).
- **Production:** on a dense riddim the freeze **sags ~5 dB over two bars** (BRIGHT) and keeps sagging for about 4–6 bars in DARK. Expected from tape physics (off-peak content dies), but a dub engineer pressing HOLD expects what they hear to keep its level. The swelling HOLD of v0.1.0 was unusable; this one is usable but soft.
- **Operational:** predictable; recovers normally on release.
- **Dub challenge (recorded):** the settle phase currently lets the loop fall freely until it stabilises. A smaller allowed drop, e.g. 2–3 dB before locking, would hold level better, at the cost of the darker voicing pumping its bass (that was the 9 dB swell seen during F1). Engineering can't settle this without listening. **Decision: no change now.** It's a P2 musical refinement to try after a listening session (M05), and it must keep R01 passing.

### T4 — HOLD with a resonant loop filter
- **Engineering:** bounded (peak 0.24; settles at −18.6 dBFS) but **rises ~7 dB** before settling. R01's "never above the pre-HOLD level" doesn't hold when Repeat Resonance is high, because the resonance adds loop gain the HOLD trim can't fully cancel (±3 %).
- **Production:** a singing, resonant freeze is a legitimate dub sound, and the rise is musical rather than a runaway.
- **Operational:** safe (bounded, no clip). **Decision: accepted, documented.** P3.

### T5 — BRIGHT / DARK in performance
- **Engineering:** switching is click-free (−68 dB); both are stable.
- **Production:** DARK is the muffled, bass-heavy dub repeat. On bass-heavy material its **first repeat is ~5 dB louder** (normalised at 1 kHz, so the low end is fuller), and its tail **dies faster at the same Sustain** (repeat 6: −38.4 vs −33.3 dBFS at 0.55). A producer switching mid-performance hears a jump, then a shorter tail.
- **Operational:** usable, but switching voicing calls for a Sustain correction.
- **Trade-off:** matching DARK's loudness and tail to BRIGHT would mean re-voicing the loop, which reintroduces the F2 runaway risk or is a DSP redesign. **Decision: document as voicing character; no change.** P3.

### T6 — Loop filters (Repeat HP/LP, Resonance)
- **Engineering:** stable across the full sweep, at resonance 0, 0.6 and 1 (no NaN, bounded).
- **Production:** this is the console-EQ-in-the-loop move (Tubby's high-pass on the echo return); sweeps are clean.
- **Operational:** on the face, mappable. **Verdict: keep.**

### T7 — Interface for live dub work
- The performance controls are where a hand expects them: Sustain is the biggest knob, beside Echo Volume, the Echo Delay slider, pads, Repeat filters and DRIVE/STOP. ADVANCED hides the engineering controls.
- **Gap (operational):** hardware control. A Push or controller "Best of" bank currently shows the first eight parameters in creation order: Input, Mode, Tap, Echo Delay… A dub bank would be Sustain, Echo Volume, Echo Delay, Repeat LP, Repeat HP, HOLD, DRIVE, STOP. Max for Live supports parameter banks, but the patcher format and its behaviour can only be confirmed in Live. **P2, verify-in-host item; not changed blind.**

### T8 — Cross-project risk (audit)
The **H&H engine uses the same two gen~ names** (`dcblock`, `lt`). It'll face the same G01 compile risk and should get the same rename. Outside the scope of this task; recorded so it isn't lost.

## 3. Audit notes (claims challenged)

- "Dub-ready" isn't claimed. Every musical statement rests on synthetic material and measurements; a producer must listen (M01–M08).
- The harness has been checked structurally (9 gen~ carry the exact device code; parameters exist; cords valid), and its tools were validated against the C references (all PASS). Whether Max compiles and runs it is UNVERIFIED.
- The C-proxy CPU (~2 %) isn't a Live figure.
- The first D2 render (Sustain cranked into a dead tail) measured a misleading −50 dBFS plateau. It was replaced by a realistic ride; both are explained in this review, and the misleading render isn't shipped.

## 4. Statuses (kept separate)

| Area | Status |
|---|---|
| DSP engine validation | **PASS** (engine level): 19/19 behaviour, 14/14 remediation, 7/7 arithmetic; v0.1.2 bit-identical to v0.1.1 |
| Musical validation | **PARTIAL**: measured dub scenarios positive; no listening session yet |
| Platform compatibility | **UNVERIFIED**: compile risks reduced; harness ready |
| User-interface validation | **PARTIAL**: structure 5/5; unseen in Live |
| Release readiness | **NOT READY**: development build v0.1.2-dev |

## 5. Next actions, in order of value

1. **Run the Max harness** (about 20 minutes, Max only, no Live): G01, G02, G03a–e, G04a–d. This converts the engine evidence into host evidence, or finds the first real host bug.
2. **Live session with a dub producer** (about 1.5 hours): L01–L17, then M01–M08 with ratings. That settles T2 (Return preset), T3 (HOLD sag) and T7 (controller bank).
3. **Act only on what those sessions show**, re-running all suites after each change.
