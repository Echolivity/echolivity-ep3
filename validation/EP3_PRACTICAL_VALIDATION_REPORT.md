# Echolivity EP-3 v0.1.0-dev — Practical Product Validation Report

Date: 2026-11-14 · Reviewer stance: independent DSP engineer / Live user · Scope: the EP-3 device as shipped (no code changed for this review)

## 0. Method and limits — read first

| Item | Status |
|---|---|
| Max 9 | **Not available** in this environment |
| Ableton Live 12 | **Not available** in this environment |
| What *was* tested | The shipped engine `dsp/ep3_core.genexpr`, compiled to C from the same source (gx_cgen + gcc -O2, the project's existing harness, bit-exact against a Python execution of the same file in test X01), driven sample by sample with repeatable synthetic program material: plucked-string phrases at −18 dBFS RMS, sines, impulses, bursts |
| What that proves | How the DSP behaves: levels, tone, feedback, pitch, SOS, pads, switching, stability, sample rates, parameter-change smoothness |
| What it cannot prove | That the device compiles and loads, runs in real time in Live, draws its UI, saves presets, receives automation, or behaves at real buffer sizes. Every such item is marked **UNVERIFIED (host)** below |

All measurements are deterministic (fixed noise seed). Two runs of the 10-minute stability test gave identical numbers. The measurement script is described in the Appendix. Unless noted, settings are factory defaults, with noise, drift and flutter switched off where they would hide the quantity measured.

---

## 1. Does it work?

| Requirement | Result | Evidence |
|---|---|---|
| Loads in Max 9 / Live 12 | **UNVERIFIED (host)** | Device file is structurally valid (cords, parameters, defaults all checked in the audit), but it has never been opened |
| Audio passes correctly | **PASS (engine)** | Dry out −0.66 dB re input at defaults; first echo +0.18 dB re dry; delay readout 329.97 ms at slider 50 % |
| Echo time predictable | **PASS (engine)** | Delay exact at 44.1 / 48 / 96 / 192 kHz (168.0 ms at slider 0.2 on all four); slider linear 60–600 ms (test E01); TAP and SYNC exact (E17, E01) |
| Feedback predictable | **PASS (engine), defaults only** | Per-repeat change by Echo Sustain: 0.2 → −11.9 dB, 0.4 → −5.9, 0.6 → −2.4, 0.7 → −1.0, 0.75 → −0.45; runaway from 0.8 (E14). Smooth and monotonic. **Fails with DE-EMPH = 33 nF:** runs away from Sustain 0.3, so the default 0.4 self-oscillates (finding **F2**) |
| Tape-speed changes → intended pitch | **PASS (engine)** | Hand-speed slider move (0.2→0.8 in 250 ms): echo of 1 kHz glides down to 438.7 Hz (head speed over tape u = 2.28), max change 7.5 Hz per ms, no clicks (−77 dB). Instant jump: glides (250.7–1000 Hz), no click. TAPE STOP: echo pitch = speed now ÷ speed when written (652 Hz vs 653 expected, E16) |
| SOS accumulates correctly | **PASS (engine)** | Loop 4 s: layer A returns every 4.000 s at 0.0 / −1.02 / −2.02 dB; layer B added in pass 2 returns at −1.02 dB the next pass; noise floor stays −75 dBFS (no hiss build-up) |
| HOLD | **DEFECT** | Repeats circulate and input is excluded (E15), but the held loop **grows +10.3 dB over 28 s** at defaults (growth +14.3 dB 2→30 s with a plain pluck), getting louder and more saturated (finding **F1**). Release returns to normal decay |
| STOP | **PASS (engine), with an authentic artefact** | Smooth ramp down/up, no click on stop (−123 dB). About 0.33 s after restart, a short high chirp at −18.5 dB re signal peak: sound recorded while the tape crawled is replayed at speed (physically correct, finding **F7**) |
| PLAY (PLAYBACK footswitch) | **PASS (engine)** | Toggle click −72 dB; loop replays at 0.0 dB; new playing not recorded (E08) |
| Automation | **PASS (engine) / UNVERIFIED (host)** | LFO (0.5 Hz, full range) on 10 continuous controls, per sample and stepped every 128 samples: HF content within ±3.5 dB of static, i.e. no zipper or clicks, except **Cable Load** (+6.7 dB HF, finding **F4**). Slider automation stepped every 128 / 1024 samples: no clicks (−77 dB). Live's automation and LFO mapping: UNVERIFIED |
| Presets survive save/reopen | **UNVERIFIED (host)** | 54 parameters with unique long names (UI Theme is Stored Only); actual Live preset recall not tested |
| No crashes / clicks / runaway / dropouts | **Mostly PASS (engine)** | 10-min stress run (program material, slider LFO, Sustain sweeping 0.35–0.75): no NaN, peak 0.835, 0 samples over the ceiling, section RMS steady −15.0 to −16.0 dBFS, DC 1.4e−10. Clicks found on the **DE-EMPH switch** (−13.8 dB) and **Cable Load** crossing 0 pF (−38.8 dB) (F4); **Loop Length** changed while playing (−36.8 dB) (F6); runaway at 33 nF (F2). Crashes: UNVERIFIED (host) |

---

## 2. Does it sound convincing?

Each observation is classed as one of three kinds:
- **[DEFECT]**: technical defect.
- **[DESIGN]**: subjective sound-design decision.
- **[AUTH?]**: uncertainty about how the hardware behaves.

| Aspect | Measurement | Assessment |
|---|---|---|
| Dry signal | Unity at defaults (−0.66 dB). With the 22 nF voicing: +1.9 dB at 4 kHz, +0.8 at 7 kHz, −2.1 at 12 kHz re 1 kHz into 470 pF (E07). Clean at normal levels (2.9 % THD at −6 dBFS RMS, 3.1 kHz, input gain 0) | Convincing "EP-3 sparkle" without obvious colour. **[AUTH?]** Fitted to written descriptions, not measurements. Pushing Input to +6 / +12 dB on hot material aliases (−37.5 / −31.2 dB re fundamental) **[DEFECT, minor, F8]** |
| Echo tone / HF loss | First echo re 1 kHz: −2.2 dB at 5 kHz, −10.6 at 8 kHz, −22.2 at 12 kHz. Each further repeat loses ~8 dB at 5 kHz, and low end rises ~+0.6 dB per repeat | First echo is bright and convincing. Repeats darken quickly **[AUTH?]** (the Echoplex is often described as having bright repeats; no reference recording to compare). The **low-end build-up is a side effect of F1/F2 [DEFECT]** |
| DE-EMPH 33 nF voicing | First echo −10.5 dB at 5 kHz | Darker option, but currently unstable (F2) **[DEFECT]** |
| Saturation | Echo THD 0.3 / 0.7 / 2.1 / 6.3 / 14 / 21 % at −30 / −24 / −18 / −12 / −6 / 0 dBFS RMS input; output compresses from −18 dB input up (−12 → −14.3, 0 → −11.2 dBFS) | Smooth, tape-like compression that rises with level. Musically good **[DESIGN]** |
| Feedback character | Even decay steps; runaway from 0.8 is bounded by tape saturation and the limiter (E09) | Predictable, playable "oscillation" zone like the original's runaway **[DESIGN]** |
| Tape modulation | Default flutter 3.6 cents peak, 1.6 cents RMS (speed ±0.13 %); 26 / 2.5 / 5 Hz components (E10) | Subtle and realistic at default; the Flutter control reaches the 0.3 % spec at 0.5 **[DESIGN]** |
| Pitch transitions | Smooth glides, no steps or clicks under hand moves, jumps or block-stepped automation | Convincing "record-head" behaviour (pitch change arrives one delay later) |
| SOS | Exact loop timing, −1 dB per pass, clean layering, no hiss build-up | Works; **impractical at the default 112.5 s loop** (F3) **[DESIGN]** |
| Overall musical usefulness | — | At defaults it's a good-sounding, stable tape echo with musical saturation and pitch play. Two reachable settings misbehave (HOLD at default, DE-EMPH 33 nF) |

---

## 3. Is it practical to use?

The interface was reviewed from the built device's layout (`docs/ui_preview_*.png`); real drawing in Live is UNVERIFIED.

**What works for a player:**
- The large ECHO DELAY slider with an ms readout.
- Big TAP TEMPO.
- SYNC/TAP/MANUAL with STR/DOT/TRI.
- HOLD / DRIVE / STOP as momentary + latch pads.
- Sustain as the biggest knob.
- **Echo Volume at 1 = fully wet** (dry −600 dB, first echo −3.0 dB), so it works on a return track with no extra control.

| Issue | Detail | Class |
|---|---|---|
| Too many engineering controls on the face | 54 parameters; roughly 15 are set-and-forget or engineering items: Source Cap (OUT/22nF), De-emph (3nF/33nF), Cable pF, Bias kHz, Bias Leak, Head Speed Limit, Mode Transition, Hold Feedback, Slider Min/Max, Drive Feedback Path, SOS Loss, Loop Length, Stop/Start Time, Repeat Resonance. They compete visually with the performance controls on a 1410-px-wide panel | Belongs in an advanced section (F5) |
| Confusing terminology | Two buttons both labelled **ECHO** side by side (the ECHO/S-O-S mode tab and the ECHO footswitch); "PLAYBK"; "S-O-S loss"; "SOURCE CAP OUT / 22nF" and "DE-EMPH 3nF / 33nF" (component values instead of sound); "HeadSpd"; "Drift" for wow | F5 |
| Surprising behaviour | Echo Volume is a blend: dry −7.7 dB at 0.9 and silent at 1.0. Authentic and useful, but unexpected; only a small "Echo Volume = blend" label explains it | F9 (info text only) |
| Poor default | Loop Length 112.5 s: SOS and PLAYBACK give nothing back for almost 2 minutes | F3 |
| Ranges | Sustain 0–1, with runaway in the top 20 %: fine and authentic. Delay 60–600 ms: matches the original. Cable Load 0–2000 pF: fine, but must not click (F4). Hold Feedback 0.9–1.05: exposed only because HOLD drifts (F1) | — |
| Missing controls | None needed for normal use. A stereo/dual mode doesn't exist (the original is mono, and the summed output is by design); worth stating in the docs (F10) | — |

---

## 4. Performance and reliability

| Measure | Result | Status |
|---|---|---|
| CPU | C proxy: 1.91 % of one core at 44.1 kHz, 1.95 % at 48 kHz, 4.23 % at 96 kHz; the same with a fast 2 Hz slider LFO at the maximum head speed (no worst-case spike). Includes per-sample timer overhead. Max's code generator differs | **UNVERIFIED (host)**: needs Live's CPU meter (L08) |
| Memory | Tape buffer: 5.4 M samples (21.6 MB at 32-bit, 43 MB at 64-bit). C proxy process peak RSS 102 MB (64-bit buffer + harness) | **UNVERIFIED (host)** (G02) |
| Initialization | C proxy process for 1 s of audio: 34 ms wall. Not indicative of Max/Live load time | **UNVERIFIED (host)** |
| Long-duration stability | 10 min at 48 kHz with program material, slider and Sustain LFOs: no NaN, no overs, stable level, no DC, tails decay to −64…−79 dBFS | **PASS (engine)** |
| Behaviour during automation | No zipper or clicks per sample or block-stepped (128 / 1024), except Cable Load (F4), DE-EMPH (F4) and Loop Length (F6) | **PASS (engine)** with exceptions |
| Sample rates | 44.1 / 48 / 96 / 192 kHz: delay identical; first-echo tone at 5 kHz within 0.45 dB across rates (−2.25 to −2.69); 12 kHz differs (−26.4 at 44.1 vs −21.0 to −22.2 elsewhere), inaudible in practice | **PASS (engine)** |
| Buffer sizes | gen~ is per-sample, so DSP doesn't depend on buffer size; parameter updates simulated at 128 / 1024-sample steps were clean | **UNVERIFIED (host)** for real buffer sizes |
| Latency | Zero by design (no lookahead) | Engine fact; Live's reported latency UNVERIFIED |

---

## 5. Findings summary

Full detail is in `EP3_REMEDIATION_BACKLOG.md`.

| ID | Pri | Finding |
|---|---|---|
| F1 | **P1** | HOLD loop grows ~+10–14 dB in 30 s at defaults |
| F2 | **P1** | DE-EMPH 33 nF makes feedback run away from Sustain 0.3 (the default self-oscillates) |
| F3 | P2 | Default loop 112.5 s makes SOS and PLAYBACK impractical |
| F4 | P2 | Clicks: DE-EMPH switch (−13.8 dB), Cable Load through 0 pF (−38.8 dB) |
| F5 | P2 | Performance face cluttered with engineering controls; ambiguous labels |
| F6 | P3 | Changing Loop Length while playing glitches (−36.8 dB) |
| F7 | P3 | Tape-start chirp after STOP (authentic; −18.5 dB) |
| F8 | P3 | Aliasing when the input stage is driven hard (−31 to −37 dB) |
| F9 | P3 | Echo Volume blend needs an explanation in Live's info view |
| F10 | P3 | Repeats darken ~8 dB / repeat at 5 kHz (authenticity unknown); mono output undocumented on the face |
| G | Gate | Host validation never run (could hide P0s) |

No P0 was found in the engine. Whether there are P0s in the host is unknown.

---

## Appendix — measurement method (repeatable)

- Harness: `tests/genexpr_sim/ep3sim.py` (`run_c`), which compiles `dsp/ep3_core.genexpr` to C and runs it sample by sample with per-sample parameter columns.
- Program material:
  - plucked-string notes (12 harmonics at 1/n amplitude, decaying), every 0.5 s, normalised to −18 dBFS RMS on active samples;
  - sines;
  - Hann-windowed bursts;
  - impulses of amplitude 0.05.
- Click metric: peak of an 8th-order Butterworth high-pass (6 kHz; 12 kHz for the LFO tests) around the event, in dB relative to the steady signal peak; the static baseline is −197 dB.
- Pitch: Hilbert instantaneous frequency, smoothed over 2–10 ms.
- Tone: FFT band levels (Hann) relative to 1 kHz, per echo window.
- Long run: 10 min, phrase on/off every 30 s, `slider_pos = 0.5 + 0.4 sin(2π·0.05 t)`, `sustain = 0.55 + 0.2 sin(2π·0.013 t)`, noise/drift/flutter at defaults.
- CPU: ns per sample reported by the C driver (includes `clock_gettime` per sample).

The measurement script used for this review (`/tmp/val/validate.py`) was a scratch tool and isn't part of the product. Every number above can be reproduced with the harness and the settings stated in each row.
