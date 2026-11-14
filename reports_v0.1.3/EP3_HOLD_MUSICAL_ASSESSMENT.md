# EP-3 v0.1.3-dev — HOLD musical assessment (Workstream C)

**Outcome: no DSP change in v0.1.3-dev.** The v0.1.2-dev stability behaviour is preserved bit-for-bit. One musically significant limitation was found (DARK on material without bass). It's documented with a workaround and a candidate change for a later milestone, not changed blind.

Status words: PASS (directly tested), FAIL, BLOCKED, NOT TESTED, INFERRED.

## Method

- **Script:** `tests/hold_study.py` → `tests/hold_study_results.json`. Renders are in `listening/hold_study/*.wav` for the owner to listen to.
- **Engine:** the device's GenExpr code run as C, with tape noise, wow and flutter on (device defaults). **Not Max / Live.**
- **Material:** a synthetic, deterministic riddim at 75 BPM (bass line, organ bubble, offbeat skank, one-drop drums with hats, melodica). No recordings were available in this environment, so this is musical material, but not a real mix.
- **Captures:** full band, melodica alone, and skank + rim alone. Each was frozen for 8 bars at 1/8-dotted delay, for BRIGHT/DARK × Sustain 0.5/0.75 × Hold Feedback 1.00 (default)/1.02.
- **Metrics (one for each brief item):**
  - level per bar, relative to the first held bar and to the echo just before HOLD;
  - crest factor (transients);
  - spectral centroid (tone);
  - pass-to-pass wobble around the trend (pumping);
  - release click and time to fall 30 dB (recovery);
  - an empty-loop HOLD for 60 s (noise accumulation).

## Results (Hold Feedback 1.00, Sustain 0.5)

| Material, ECHO TONE | Bar 1 vs before HOLD | Bar 2 | Bar 4 | Bar 8 | Crest bar 1/4/8 (dB) | Centroid bar 1/4/8 (Hz) | Wobble | Release → −30 dB |
|---|---|---|---|---|---|---|---|---|
| Full band, BRIGHT | −4.0 | −6.0 | −8.2 | −7.5 | 12.1 / 11.0 / 9.5 | 869 / 728 / 723 | 0.14 dB | 4.35 s |
| Full band, DARK | −3.1 | −4.1 | −7.4 | −9.8 | 10.4 / 8.7 / 8.1 | 230 / 270 / 305 | 0.13 dB | 4.45 s |
| Melodica, BRIGHT | −0.9 | −0.8 | −0.3 | −0.4 | 10.9 / 7.5 / 6.3 | 1505 / 1040 / 1031 | 0.15 dB | 4.8 s |
| **Melodica, DARK** | −4.8 | **−24.0** | **−33.3** | **−33.6** | 14.3 / 16.6 / 15.5 | 1344 / **5278 / 5574** | 0.5 dB | — (already hiss) |
| Skank + rim, BRIGHT | −7.8 | −2.8 | −4.7 | −4.7 | 15.9 / 15.5 / 14.9 | 724 / 908 / 979 | 0.11 dB | 2.5 s |
| Skank + rim, DARK | −7.7 | −2.5 | −6.4 | −9.0 | 13.8 / 14.2 / 13.2 | 271 / 424 / 634 | 0.06 dB | 0.1 s |

Bar columns are relative to held bar 1.

- **Higher feedback before HOLD (Sustain 0.75), full band:** BRIGHT −6.3 / −8.9 / −8.3 dB, DARK −4.3 / −7.3 / −9.5 dB at bars 2 / 4 / 8. That's the same picture, so the Sustain setting before HOLD barely matters.
- **Release clicks:** none measured. The click metric was −53 to −66 dB re the held signal everywhere except DARK melodica (−25 dB). That case was checked in absolute terms: energy above 6 kHz at release is −76.0 dBFS, the same as the tape hiss one second earlier (−76.4 dBFS). It's the hiss of a loop that had already faded, not a click.

## Noise accumulation (empty loop, HOLD 60 s)

| Hold Feedback | BRIGHT 0 / 15 / 60 s | DARK 0 / 15 / 60 s |
|---|---|---|
| 1.00 (default) | −80.5 / −75.9 / −75.7 dBFS: +5 dB, then flat | −80.7 / −79.7 / −79.7: flat |
| 1.02 (ADVANCED) | −80.5 / −74.6 / **−60.4**: still rising | −80.7 / −78.1 / **−64.0**: still rising |

## Findings, assessed three ways

**H1. BRIGHT full band loses ~6 dB in two bars, then holds**
- **Engineering:** works as designed. Content off the loop's gain peak dies during the settle phase, then the level trim locks. There's no pumping (wobble ≤ 0.17 dB), and it's bounded.
- **Production:** the freeze is steady from bar 2–3 onward. Transients soften gradually (crest −2.6 dB over 8 bars) and the tone darkens slightly, like a real tape loop. Whether the initial drop is acceptable needs a listen.
- **Operational:** predictable. Ride Echo Volume up a touch after engaging HOLD if needed.
- **Status:** behaviour PASS (measured); musical acceptability **PENDING listening**.

**H2. Melodic phrases hold almost perfectly in BRIGHT**
- Melodica: −0.4 dB after 8 bars.
- **Status:** PASS (measured); listening pending.

**H3. DARK keeps sinking, and a phrase with no bass vanishes**
- **Engineering:** the 33 nF de-emphasis gives the loop a 3.4× gain peak in the bass. HOLD normalises to that peak, so mid-range content (melodica around 1 kHz) loses roughly 10 dB per pass. Within two bars only tape hiss is left (centroid jumps to 5.3 kHz). With full-band material, DARK keeps the bass and sinks ~1 dB per bar through bar 8.
- **Production:** this is the most important HOLD result. A dub engineer who freezes a melodica or vocal line with ECHO TONE on DARK will lose it.
- **Operational:** the workaround is immediate: switch ECHO TONE to BRIGHT before pressing HOLD. The switch is click-free (R08, −68 dB).
- **Status:** behaviour measured. Classed as a **known limitation (K-03)**. Not fixed in this milestone; see "Candidate change" below.

**H4. Raising Hold Feedback to 1.02 is not a fix**
- It improves retention (BRIGHT −3.0 dB at bar 8), but the held loop then grows. Noise rises 20 dB in 60 s and is still rising, and full-band BRIGHT is climbing by bar 8.
- That's exactly the "aggressive automatic gain compensation" the brief warns against, with a noise penalty. **Rejected.** Hold Feedback stays at 1.00.

**H5. HOLD with a resonant loop filter** (from v0.1.2, D5b)
- The level rises ~7 dB, then is steady (bounded, peak 0.24).
- **Status:** unchanged, accepted (K-04).

## Why there is no DSP change

The brief says to change the DSP only if the existing behaviour proves musically unacceptable, and any change must come with a listening assessment. No listening session is possible here.

- **BRIGHT (the default):** pump-free and stable after the settle phase. It may well be acceptable.
- **DARK:** its weakness has a zero-cost workaround.
- **The one simple lever (Hold Feedback)** was measured and fails on noise.

## Candidate change for a later milestone (not implemented)

While HOLD is engaged, crossfade the loop de-emphasis to the 3 nF (BRIGHT) network and keep the output de-emphasis on DARK. The loop would then hold mid-range content, while what you hear keeps DARK's tone.
- **Trade-off:** in HOLD, DARK would no longer "shed its highs into a bass drone". Some engineers may want exactly that drone.
- **Prerequisites:**
  - an owner listening session on `listening/hold_study/HOLD_*_DARK_*.wav` against the BRIGHT renders;
  - all regression suites (R01–R03 in particular);
  - new before/after measurements with this script.

## Owner listening checklist (M03)

1. Listen to `listening/hold_study/` in pairs (BRIGHT vs DARK, Hold Feedback 1.00 vs 1.02). Rate 1–5:
   - level retention;
   - texture;
   - pumping;
   - release.
2. Repeat in Live with your own material (M03 in `docs/TEST_PLAN_Max_Live.md`).
3. Decide on H1 (is the BRIGHT 6 dB settle acceptable?) and H3 (adopt the candidate change in v0.1.4?).
