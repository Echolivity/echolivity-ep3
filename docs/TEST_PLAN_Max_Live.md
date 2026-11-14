# EP-3 v0.1.2-dev — tests that need Max 9 / Live 12

Status of every test here: **UNVERIFIED**. No Max or Live is available in the build environment. Record results with screenshots, recordings or console text in `remediation/host_evidence/` (create it). Step-by-step session guide: `remediation/EP3_HOST_SESSION_GUIDE.md`.

## Part 1 — Max 9 harness (no Live needed): `tests/golden/EP3_host_harness.maxpat`

| ID | Test | How | Pass if |
|---|---|---|---|
| G01 | gen~ compiles | Open the harness (9 gen~ with the device's code) | No gen~ errors in the Max console |
| G02 | Memory | Note Max's memory before and after opening | Opens; 9 tape buffers allocate (≈ 200–390 MB total); no error |
| G03a–e | Sample-exact renders | Audio at 48 kHz; RUN GOLD1…GOLD5; `python3 tests/golden/compare.py tests/golden/expect_<name>.wav tests/golden/out_<name>_max.wav` | Each: residual < −80 dB re peak |
| G04a–d | Behaviour | RUN BEH1…BEH4; `python3 tests/golden/check_behaviour.py <name> tests/golden/out_<name>_max.wav` | Each prints PASS (same limits as R01, R08, R10) |

## Part 2 — Ableton Live 12: `devices/Echolivity_EP3_v0.1.2-dev.amxd`

| ID | Test | How | Pass if |
|---|---|---|---|
| L01 | Loads in Live | Drop the .amxd on an audio track | Loads, passes audio, no CPU spike, no console errors |
| L02 | Slider pitch | Play a sustained note, sweep ECHO DELAY | Pitch bends on the repeats, one delay after the move |
| L03 | SOS | S-O-S on (factory loop 8 s), play a phrase, overdub on the next pass | Phrase returns every 8 s, ~1 dB quieter each pass; overdub adds |
| L04 | PLAYBACK | Record a phrase, press PLAYBACK | Loop keeps replaying; new playing not recorded |
| L05 | Mapping | Map Live's LFO to Echo Delay, Echo Sustain, Echo Volume, Cable Load | Smooth modulation, no clicks |
| L06 | Tap / Sync | TAP four times at 100 BPM; SYNC 1/4 TRI | 600 ms; 1/4 triplet at song tempo |
| L07 | Theme | EMBER ↔ EL, save and reopen | Recolours; choice restored |
| L08 | CPU | Live's CPU meter at 44.1 / 48 / 96 kHz, buffers 64 / 128 / 512 | Record values (C proxy ≈ 2 % of one core at 48 kHz; not a Live figure) |
| L09 | Sample rates | 44.1, 48, 96 kHz | Same delay readout; no artefacts |
| L10 | Echo Volume blend | Sweep Echo Volume 0 → 1 on a dry signal | Dry rises slightly to ~0.2–0.3, then falls (silent at 1) |
| L11 | HOLD | Chord, Sustain 0.4, HOLD (latch) 60 s, both ECHO TONE settings | Never louder than before HOLD; BRIGHT steady after a few seconds; DARK sheds its highs, then steady |
| L12 | Feedback, DARK | ECHO TONE DARK, Sustain 0.4, then sweep | No self-oscillation at 0.4 or 0.7; runaway only from ~0.8 |
| L13 | Switch clicks | Toggle ECHO TONE and VOICE, move Cable Load to and from 0, while echoes sound | No audible click |
| L14 | Loop change | Change LOOP s while repeats sound | Echo dips out about one delay, returns cleanly, no click |
| L15 | ADVANCED view | Toggle; save the set with it on; reopen | Controls show/hide; hint shows when off; state restored; no overlaps |
| L16 | Presets | Save a device preset with non-default values (DARK, VOICE LATE, loop 20 s, ADVANCED on); load on a new instance | All values restored |
| L17 | Long session | 30 min playback with automation on Echo Delay and Sustain, HOLD and ECHO TONE switched a few times | No dropout, crash, click or level creep; CPU steady |

## Part 3 — musical checks (dub workflow)

Expected values come from `tests/DUB_SCENARIO_REPORT.md` (engine renders, 75 BPM). Each check gets a 1–5 rating and notes from the producer, plus the numbers where given.

| ID | Move | Setup | Expect |
|---|---|---|---|
| M01 | Throw on a return | Device on a Return track, **Echo Volume 1**, SYNC 1/8 dotted, Sustain 0.6; send a single skank chop | Long, even tail: ~2 dB lost per repeat; no doubled dry signal |
| M02 | Ride into oscillation and back | Sustain from 0.6 to 0.9–1.0 while repeats are still sounding; after a few seconds pull to 0.45 | Oscillation builds within ~1–2 s, settles around −20…−30 dBFS RMS (never near clipping); 30 dB down ~4 s after pulling back (0.7 s at short delays) |
| M03 | Siren | While oscillating, throw the ECHO DELAY slider by hand | Smooth pitch sweeps, no zipper or clicks |
| M04 | Filter in the loop | Sustain 0.75, sweep Repeat LP 20 k → 700 Hz and Repeat HP up, Resonance 0.6 | Repeats darken / thin, resonance sings, level stays bounded |
| M05 | Freeze | Send half a bar, press HOLD (latch) for 4 bars, release | The loop holds (BRIGHT sags ~5 dB over ~2 bars, then steady); decays normally after release |
| M06 | Voicing in performance | Switch ECHO TONE BRIGHT ↔ DARK on a running delay | No click. Expect DARK's first repeat to be louder on bass-heavy material (+5 dB here) and its tail to die faster at the same Sustain |
| M07 | DRIVE throw | Hit DRIVE on one snare | That repeat comes back ~13 dB hotter and saturated, then the tail decays normally |
| M08 | Controller | Map Sustain, Echo Volume, Echo Delay, Repeat LP/HP, HOLD, DRIVE, STOP to a MIDI controller | Everything maps; pads respond as momentary (CC) or latch (note) |
