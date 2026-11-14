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
| Output impedance | High; it shapes the tone with the next stage. EP-4's low-impedance buffer is said to lose the "EP-3" sound. | SOURCED | [S8] |
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

## 6. Proposed device (for your approval; not built)

- **Engine:** reuse the H&H tape buffer, with a moving band-limited write head and a fixed read; bias leakage as an option on fast head moves.
- **Front end:** FET preamp stage (always in circuit, as on the original), with pre-emphasis on the record path.
- **Controls:** Echo Delay slider (HW range), Echo Sustain, Echo Volume, Echo/SOS, Record Level, and an echo-on footswitch (momentary + latch).
- **Shared Echolivity features:** SYNC/TAP/MANUAL with STR/DOT/TRI, HOLD/DRIVE/STOP, output protection, everything mappable, two themes.
- **Mono throughout**, with the H&H device's optional dual mode.
