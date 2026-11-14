# Echolivity EP-3 v0.1.0-dev — Remediation Backlog

Priorities:
- **P0**: prevents normal use.
- **P1**: significantly degrades musical performance.
- **P2**: usability or polish.
- **P3**: optional.

All fixes preserve the existing DSP architecture. Measurements and settings are in `EP3_PRACTICAL_VALIDATION_REPORT.md`.

---

## GATE — Host validation never run (potential P0s unknown)

1. **What's wrong:** the device has never been compiled in Max 9 or loaded in Live 12.
2. **What happens to the musician:** unknown. A gen~ compile error, a refused 5.4 M-sample buffer or a UI problem would block use entirely.
3. **How often:** every user, once.
4. **Smallest fix:** run `docs/TEST_PLAN_Max_Live.md` (G01–G03, L01–L10) in a single session (about 1 hour) and fix only what fails.
5. **Verification:** the filled-in test plan, with screenshots, a Live CPU figure (L08) and a save/reopen preset check (L07 plus a preset).

---

## P1-01 (F1) — HOLD loop grows instead of holding

1. **What's wrong:** with HOLD engaged at the default Hold Feedback 1.0, loop gain is slightly above unity at low frequencies. The held loop rises +10.3 dB (pluck, 2→30 s) to +14.3 dB, becoming louder, bassier and more saturated. Very sensitive: Hold Feedback 0.97 gives +1.0 dB, 0.95 gives −13.7 dB. **Diagnosed cause** (consistent with the measurements, but the fix itself hasn't been run): the de-emphasis output is normalised to unity at 1 kHz (×1.056 at the 3 nF setting, ×3.86 at 33 nF), and that normalisation sits inside the feedback loop. The 33 nF setting, with the larger factor, misbehaves far more, as expected.
2. **Musician impact:** a "freeze" that swells and distorts after a few seconds. The level creeps up during a performance and the musician has to fight it with Hold Feedback.
3. **How often:** every use of HOLD longer than a few seconds; HOLD is a headline performance pad.
4. **Smallest fix:** a single change in `ep3_core.genexpr`. Apply the 1 kHz normalisation factor only to the echo going to the output, not to the signal feeding Echo Sustain / HOLD. Re-check Hold Feedback 1.0 ≈ neutral, and nudge its default if needed. This is the same change as P1-02.
5. **Verification:** new test — HOLD 60 s drift within ±1.5 dB at Hold Feedback default, for DE-EMPH 3 nF and 33 nF, at 44.1 / 48 / 96 kHz. E14 and E15 still pass. First-echo level change ≤ 0.5 dB.

## P1-02 (F2) — DE-EMPH 33 nF makes the feedback run away

1. **What's wrong:** at 33 nF the same 1 kHz normalisation is ×3.86 (+11.7 dB) at low frequencies, inside the loop. Feedback runs away from Echo Sustain 0.3 (0.8 at 3 nF), so the default Sustain 0.4 self-oscillates. HOLD saturates immediately.
2. **Musician impact:** flipping one voicing switch turns a normal echo into a howling oscillation.
3. **How often:** whenever someone tries the 33 nF voicing, which most explorers will.
4. **Smallest fix:** same change as P1-01.
5. **Verification:** runaway threshold between 0.75 and 0.85 for both DE-EMPH settings (extend E14 to both). E04, E05 and E09 unchanged. The P2-02 click test passes on the same switch.

## P2-01 (F3) — Default Loop Length 112.5 s makes SOS and PLAYBACK impractical

1. **What's wrong:** the authentic ~75 ft loop means a sound-on-sound pass or a PLAYBACK replay comes back after 112.5 s.
2. **Musician impact:** pressing S-O-S or PLAYBK appears to do nothing; the looper feature looks broken.
3. **How often:** every first use of SOS or PLAYBACK.
4. **Smallest fix:** change the default to a musical length (for example 8 s) and keep 112.5 s as the maximum, labelled "authentic". This is a default change only. It's an adviser decision (D4); this review recommends it.
5. **Verification:** L03 in Live (loop returns at the set length). E04 and E08 already pass at short loops.

## P2-02 (F4) — Clicks when switching DE-EMPH and when Cable Load passes 0 pF

1. **What's wrong:**
   - The de-emphasis switch changes the filter corner and its ×1.056 / ×3.86 normalisation instantly (−13.8 dB click).
   - Cable Load bypasses its filter below 1 pF, so moving through 0 pF switches the filter in or out (−38.8 dB click; +6.7 dB HF when an LFO crosses 0).
2. **Musician impact:** an audible click when changing voicing, or when modulating Cable Load from 0.
3. **How often:** occasional; voicing is usually set once, and Cable Load is rarely modulated through 0.
4. **Smallest fix:**
   - DE-EMPH: crossfade the two de-emphasis outputs over ~10 ms (both filters run).
   - Cable Load: keep its low-pass always active, with the corner tending to Nyquist as C → 0, instead of an on/off branch.
5. **Verification:** toggle/jump click metric below −60 dB for both, using the report's method. LFO-on-Cable HF change within ±3 dB.

## P2-03 (F5) — Performance face cluttered; ambiguous labels

1. **What's wrong:** about 15 engineering or set-and-forget controls share the face with the performance controls; labels such as ECHO (twice), PLAYBK, S-O-S loss, SOURCE CAP OUT/22nF, DE-EMPH 3nF/33nF, HeadSpd and Drift need explaining.
2. **Musician impact:** slower to learn, easy to touch the wrong control live, voicing switches named by component values.
3. **How often:** constant for new users.
4. **Smallest fix (UI only, no DSP change):**
   - Add an ADVANCED toggle that shows or hides an advanced group. This uses the `thispatcher script show/hide` pattern the H&H device already uses.
   - Advanced group: Bias kHz, Bias Leak, Head Speed Limit, Mode Transition, Hold Feedback, Slider Min/Max, Drive FB path, SOS Loss, Loop Length, Stop/Start Time, Repeat Resonance.
   - Rename the labels, keeping the parameter long names so existing automation stays valid:

     | Current label | New label |
     |---|---|
     | SOURCE CAP | VOICE: LATE / EARLY |
     | DE-EMPH | ECHO TONE: BRIGHT / DARK |
     | ECHO footswitch | ECHO ON |
     | PLAYBK | LOOP PLAY |
     | S-O-S loss | LOOP DECAY |
     | Drift | WOW |
     | HeadSpd | HEAD SPEED |
5. **Verification:** structural checks (no overlaps; show/hide wired; long names unchanged). L-test: each control reachable within one click. A quick usability check with 2–3 players.

## P3-01 (F6) — Changing Loop Length while playing glitches

1. **What's wrong:** the loop wrap point moves, so the heads jump (−36.8 dB transient).
2. **Musician impact:** a glitch if Loop Length is automated or tweaked mid-song.
3. **How often:** rare.
4. **Smallest fix:** make Loop Length "Stored Only" (not automatable) and fade the echo out and in over ~20 ms on change.
5. **Verification:** click metric below −60 dB on change; parameter table shows Stored Only.

## P3-02 (F7) — Tape-start chirp after STOP

1. **What's wrong:** nothing technically. Sound recorded while the tape crawls back up to speed replays ~0.33 s later as a short high chirp (−18.5 dB re signal).
2. **Musician impact:** an audible "squeal" after each STOP release; some will like it, some won't.
3. **How often:** every STOP release.
4. **Smallest fix:** document it. Only if players object, add an option to mute recording during STOP ramps.
5. **Verification:** if implemented, chirp below −60 dB with the option on, unchanged with it off.

## P3-03 (F8) — Aliasing when the input stage is driven hard

1. **What's wrong:** at Input +6 / +12 dB on −6 dBFS RMS material, the FET stage clips and aliases (−37.5 / −31.2 dB re fundamental at 3.1 kHz).
2. **Musician impact:** grainy, inharmonic edge when deliberately overdriving the front end with bright sources. Normal guitar levels are clean (−77.5 dB).
3. **How often:** only in deliberate overdrive.
4. **Smallest fix:** 2× oversample the FET stage only, or add a gentle limiter ahead of the drain clamp.
5. **Verification:** aliasing below −60 dB at +12 dB Input; dry response tests E06 and E07 unchanged.

## P3-04 (F9) — Echo Volume blend needs explaining

1. **What's wrong:** nothing technically. Echo Volume is the original's blend: dry −7.7 dB at 0.9, silent at 1.0 (useful: fully wet for return tracks).
2. **Musician impact:** "my dry signal disappears" confusion.
3. **How often:** first use.
4. **Smallest fix:** parameter info text (Live's Info View), plus one line in the README.
5. **Verification:** info text visible in Live (L10).

## P3-05 (F10) — Repeat darkening; mono output

1. **What's wrong:**
   - Repeats lose ~8 dB at 5 kHz per pass; there's no reference to say whether that's right for an EP-3 (authenticity unknown). The low-end build-up of +0.6 dB per repeat is removed by P1-01.
   - The output is mono by design; this isn't stated on the device.
2. **Musician impact:** long repeat trails get dark sooner than some players expect; stereo sources collapse to mono.
3. **How often:** with long trails; on stereo tracks.
4. **Smallest fix:**
   - Darkening: none now. Revisit only with reference recordings of a real EP-3; don't tune by guesswork.
   - Mono: add "MONO" to the header text.
5. **Verification:** listening comparison against reference recordings, when available.
