# Echolivity EP-3: modelling notes (research phase, 2026-11-14)

Target: **Maestro Echoplex EP-3**, solid-state tape echo, made 1970–1991. This is a separate project from the H&H Echo Unit.

**Status key**
| Status | Meaning |
|---|---|
| **VERIFIED** | Stated in the Maestro owner's/service manual, or checked by arithmetic against it |
| **SOURCED** | Published by a credible secondary source (paper, maker of a replica), not the manual |
| **MEASURED-OTHER** | Measured by others on an Echoplex, possibly not an EP-3 |
| **CONFLICT** | Sources disagree; not resolved |
| **APPROX** | Our modelling choice |
| **UNKNOWN** | Not found |

Source numbers [S#] refer to `docs/SOURCES.md`.

## 1. Architecture

| Item | Value | Status | Source |
|---|---|---|---|
| Moving part | **Record/erase head** on a sliding carrier. Playback (echo) head fixed. | VERIFIED | [S1] "The ECHO DELAY is selected by positioning the Record/Erase Head" |
| Head order along tape | SOS head, then record/erase head, then echo head | VERIFIED | [S1] |
| Erase head: moving or fixed? | EP-3 manual: one **record/erase** head on the carrier (erase moves with record). DAFX/CCRMA (an EP-4 pictured): playback **and erase** fixed, record alone moves. | **CONFLICT** (may differ by model or year) | [S1], [S3] |
| Sound-on-sound | ECHO/SOS switch. In SOS the tape loops past the SOS head and is re-recorded, layering takes. Echo Sustain does nothing in SOS. | VERIFIED | [S1] |
| Channels | Mono in, mono out | VERIFIED | [S1] (single input/output; replicas note the original was mono [S9]) |
| Bias oscillator | "approximate frequency of 100 KC", feeds the erase head; record bias set by a trimmer | VERIFIED (nominal) | [S1] |
| Bias measured on real units | ~71 kHz; another tech expected 40–50 kHz | MEASURED-OTHER | [S6], [S7] |
| Bias trap | 18 mH choke + 90–400 pF trimmer | VERIFIED | [S1] |
| Compressor board (CA3080 OTA) in record path | On some EP-3/EP-4 units for a short time after the EP-4 came out | SOURCED | [S10] |

**The main difference from the H&H model:** on the H&H the *replay* head slides. On the EP-3 the *record* head slides. The pitch change from moving the slider is therefore written onto the tape and heard one delay later, and a fast move compresses or stretches what's recorded. Arnardottir et al. model this with a moving *write* pointer and an anti-aliasing filter whose cutoff follows the head speed [S2]. They also note that fast moves can shift the **bias signal into the audio band** ("sonic booms") [S2]. The H&H engine's buffer and fractional read can be reused, but the write side needs a new interpolated, band-limited write.

## 2. Transport and delay

| Item | Value | Status | Source |
|---|---|---|---|
| Tape speed | "roughly 8 ips" / "nominal 8 ips" | SOURCED | [S2], [S3] |
| Delay range | 60–600 ms | SOURCED (measured unit, likely EP-4) | [S3] |
| Delay range | 80–800 ms, "can vary from one unit to another" | SOURCED (journalism) | [S4] |
| Head travel implied | 12–122 mm for 60–600 ms at 8 ips | Derived (test D04) | — |
| Slider direction | "Longest echo 'delay' achieved when pointer is at the highest number", shortens toward "0" | VERIFIED | [S1] |
| Level change across slider | "less than ± 3dB" after alignment | VERIFIED (service tolerance) | [S1] |
| Wow and flutter | "less than 0.3%" (EP-4: less than 0.15%) | VERIFIED (spec limit) | [S1] |
| Flutter components | Capstan ≈ 26 Hz; pinch wheel ≈ 2.5 and 5.0 Hz | MEASURED-OTHER | [S5] after [S2] |
| Capstan implied | 2.5 mm diameter (26 Hz at 8 ips), consistent with the motor shaft acting as capstan | Derived (test D05) | — |
| Cartridge | "two minute tape cartridge", changed to "three-minute" in the addendum | VERIFIED (wording) | [S1] |
| Loop length / SOS loop time | — | **UNKNOWN**: the "two/three minute" wording is unclear (playing time or something else?) | — |

**Proposed modelling choices (APPROX):** default range 60–600 ms (the measured figure), with Slider Min/Max editable as on the H&H device, so 80–800 is one setting away. Use a linear position-to-delay mapping (head distance is linear in delay at constant speed). Flutter uses sinusoids at 26 Hz and 2.5/5 Hz plus slow drift, scaled to stay within 0.3 % at the default setting.

## 3. Electronics

| Item | Value | Status | Source |
|---|---|---|---|
| Audio supply | 22 V zener (1N4748) from a full-wave bridge; bias oscillator on the raw DC | VERIFIED | [S1] |
| Preamp supply in practice | ~18 V after a 1 k drop; 21.0–21.3 V measured at the 22k/35 µF node on two units | MEASURED-OTHER | [S8] |
| Input stage | Q5 TIS58 JFET, 22k drain, 3.3k source, 1 M gate, 0.1 µF out | SOURCED (consistent across several replica builders) | [S8], [S11] |
| Input stage gain | "16.5dB (6.7X)" (the two figures agree: test D02) | VERIFIED | [S1] |
| Pre-emphasis | 3.3k ∥ 0.022 µF on Q5 source, "fc=2.2kHz, 6dB/octave". The manual scan reads ".22uf", but only 0.022 µF gives 2.2 kHz (test D01), and the addendum says ".022uf". | VERIFIED | [S1] |
| Bypass cap by serial | Fitted in early units, absent in later ones per one builder; added by the factory addendum. Varies by serial. | CONFLICT (by serial) | [S1], [S8] |
| Drain bias | 14.4 V on the schematic (ideal would be ~11 V), so the original bias was "not perfect" | SOURCED | [S8] (ClinchFX) |
| Dry treble | "Top end is down by about 4-5dB at 7KHz" in the first schematic version | SOURCED | [S8] (ClinchFX) |
| Output mixer (dry tone) | Passive network after the FET: 0.1 µF → 470k to ground → 220k → Echo Volume lug → 100k → OUT; echo via 220k / 100k → other lug → 100k → OUT; **the 500k pot's wiper is grounded**, so Echo Volume is a blend and dry level peaks near 0.2 then falls (E06). Thevenin resistance at OUT 68–84k (EchoPre3 reports 59–102k; ClinchFX "region of 200K" for his EP-PRE network) | [S13][S14][S15]; values from replica/forum traces, not a clean EP-3 schematic |
| Cable load | Default **470 pF**: fits ClinchFX's published descriptions of both versions with one value (E07: early +1.9 dB @ 4 kHz, +0.8 @ 7k, −2.1 @ 12k; late −2.8 @ 4k, −5.9 @ 7k) | Fitted to [S16] |
| Input RF filter | 100k series, 100 pF to ground (15.9 kHz) | [S15] (EP-3 has 100 pF; replicas 220 pF) |
| Echo level | Echo source scaled so the first repeat ≈ dry level at Echo Volume 0.5; plus Echo Trim | APPROX |
| Head amp | Q1, Q2 (TIS98); "Overall gain is approximately 60dB at 1kHz" | VERIFIED | [S1] |
| Playback de-emphasis | 18k with **0.033 µF** (manual scan, 268 Hz) or **0.003 µF** (repair forum, 2.95 kHz) | **CONFLICT** | [S1], [S6] |
| Record driver | Q6, Q7 2N3053; T1 "B346-012 CUSTOM COIL" | VERIFIED | [S1] |
| Echo Sustain pot | 500k linear | SOURCED (forum) | [S12] |
| Repeats character | "repeats are compressed" (tech's observation) | MEASURED-OTHER | [S6] |
| Signal-to-noise | "better than 50dB" (in the EP-4 section) | VERIFIED for EP-4 | [S1] |

## 4. Controls on the original (front panel)

ECHO DELAY (slider), ECHO SUSTAIN (repeats), ECHO VOLUME (echo level / mix), ECHO / SOUND ON SOUND switch, RECORD LEVEL (internal screw trimmer), and footswitch jacks for echo on/off and record/playback. [S1], [S4]

## 5. What's needed before writing DSP

1. **A clean EP-3 schematic** for one serial range. The scans here are partly unreadable. Needed to settle de-emphasis (0.033 vs 0.003 µF) and the record EQ, and to fit the playback head-amp response. A clean copy exists in the Maestro owner's/service manual (manualslib, Ronsound) [S1].
2. **Erase head position** (moving with record, or fixed). This decides whether old material between the heads is erased as the slider moves. Photos of the target serial range would settle it.
3. **Loop length**, for SOS timing and for how long the old material survives with Sustain at zero.
4. **Serial range to target:** proposed **12961–28591**, the longest-produced two-board version, with the 22 nF source bypass as a switch (early vs later units).

## 6. What v0.1.0-dev implements (and what is approximate)

Engine: `dsp/ep3_core.genexpr`. Tests: `tests/EP3_TEST_REPORT.md` (15/15, run on the GenExpr source outside Max).

| Part | How it's modelled | Basis |
|---|---|---|
| Moving record/erase head, fixed echo head | Write position = tape + head distance. Every tape cell the head crosses is written, so a slider move changes pitch one delay later, by 1/u (E02) | [S1], [S2] |
| Write anti-aliasing | 4th-order low-pass at 0.35 × sr × head speed over tape (E03: −44.5 dB) | [S2] (variable cutoff), our order and cutoff |
| Tape buffer | 48 000 cells per second of tape, so memory doesn't depend on sample rate (21.6 MB for 112.5 s) | Design |
| Loop | 112.5 s default (~75 ft at 8 ips, "about two minutes"); adjustable 1–112.5 s | in2guitar; [S1] "two minute" |
| Sound-on-sound | SOS head monitors the loop; erase off; old layer × −1 dB per pass (E04); Sustain inactive | [S1] |
| PLAYBACK footswitch | Record and erase off; the loop replays unchanged (E08) | [S1] |
| ECHO footswitch | Mutes the echo return (smooth 2-stage fade, E13). Whether the original also stops recording is **UNKNOWN** | APPROX |
| Q5 FET stage | Square-law JFET with an implicit source-node solve; 22k / 3.3k / 0.022 µF; 21.2 V supply. Idss 3.4 mA and Vp −3 V are **fitted** to the measured 1.8 V source voltage. Gain 14.0 dB at LF (manual's 16.5 dB is the ideal 22k/3.3k), +9 dB pre-emphasis shelf (E06) | [S1], [S8]; FET constants APPROX |
| Output impedance | 100 kΩ into a Cable Load (default 250 pF, E07) | Catalinbread replica spec (Dunlop says 55 kΩ). APPROX |
| De-emphasis | Switch: 18k/3 nF (2.95 kHz, default) or 18k/33 nF (268 Hz, literal manual scan). Default chosen because 54 µs pairs with the 2.2 kHz pre-emphasis (≈ NAB 50 µs). | CONFLICT kept as a switch |
| Tape HF loss | 2-pole at 5188 Hz × speed (H&H fit scaled 8/12) | APPROX |
| Saturation | tanh, calibrated so nominal input gives ~3 % THD on the echo (E05: 2.1 %) | Manual's record-level procedure; curve APPROX |
| Flutter | 26 Hz capstan, 2.5 / 5 Hz pinch wheel, broadband + drift; Flutter 0.5 ≈ 0.3 % spec (E10: 0.256 %) | [S1], [S5]; mix APPROX |
| Bias leak | Bias written into the tape only when the head's speed over the tape puts it below the tape's Nyquist (u > ~4.7). Audible only on hard flicks (E11). Level APPROX | [S2] |
| Echo Sustain | 0–1 → loop gain 0–1.25; runs away above ~0.8, bounded by saturation and output protection (E09) | [S1] behaviour; scale APPROX |
| Head-amp coupling | 30 Hz HP; record coupling 20 Hz HP | APPROX (schematic values unreadable) |
| SOS head position | 62.5 ms beyond the slider's far end | APPROX |
| Polarity | Device is non-inverting; dry and echo in phase | APPROX (original's polarity unknown) |

Still open: a clean schematic (de-emphasis, coupling caps, record EQ, the exact output mixer, the 470 pF on the echo feed which is not modelled), or a measured IR of a real unit to fit the dry path to; the erase-head question (fixed in the DAFX description); what the ECHO footswitch switches.
