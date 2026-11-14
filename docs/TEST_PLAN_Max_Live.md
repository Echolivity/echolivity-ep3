# EP-3 v0.1.3-dev — tests that need Max 9 / Live 12

Status of every test here: **UNVERIFIED**. No Max or Live is available in the build environment. Record results with screenshots, recordings or console text in `remediation/host_evidence/` (create it). Step-by-step guide: `reports_v0.1.3/EP3_OWNER_TESTING_GUIDE.md`. Status words: PASS, FAIL, BLOCKED, NOT TESTED, INFERRED.

## Part 1 — Max 9 harness (no Live needed): `tests/golden/EP3_host_harness.maxpat`

| ID | Test | How | Pass if |
|---|---|---|---|
| G01 | gen~ compiles | Open the harness (9 gen~ with the device's code) | No gen~ errors in the Max console |
| G02 | Memory | Note Max's memory before and after opening | Opens; 9 tape buffers allocate (≈ 200–390 MB total); no error |
| G03a–e | Sample-exact renders | Audio at 48 kHz; RUN GOLD1…GOLD5; `python3 tests/golden/compare.py tests/golden/expect_<name>.wav tests/golden/out_<name>_max.wav` | Each: residual < −80 dB re peak |
| G04a–d | Behaviour | RUN BEH1…BEH4; `python3 tests/golden/check_behaviour.py <name> tests/golden/out_<name>_max.wav` | Each prints PASS (same limits as R01, R08, R10) |

## Part 2 — Ableton Live 12: `devices/Echolivity_EP3_v0.1.3-dev.amxd` (Insert) and `devices/Echolivity_EP3_v0.1.3-dev_Return.amxd` (Return)

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
| L17 | Long session (G05) | 30 min playback with automation on Echo Delay and Sustain, HOLD and ECHO TONE switched a few times | No dropout, crash, click or level creep; CPU steady |
| L18 | Dub controller bank | Select the device with Push (or a controller in Live's device-control mode) | First bank shows, in order: Echo Sustain, Echo Volume, Echo Delay, Repeat LP, Repeat HP, HOLD Latch, DRIVE Latch, STOP Latch; each moves its control |
| L19 | Bank: MIDI map and automation | MIDI-map all eight; record automation for each in Arrangement; play back | Each maps and plays back; HOLD/DRIVE/STOP Latch toggle; no clicks |
| L20 | Return workflow | Return variant on a Return track; send a track at 0 dB; then invert-polarity test: duplicate the dry track with Utility phase invert, mute the return | Echo Volume shows 1.00 on load; with the return muted the two dry tracks null (only one dry path in the mix); with the return on, only repeats are added |
| L21 | Preset interchange | Save a preset on the v0.1.2-dev device; load it onto v0.1.3-dev Insert and Return | All values restored (long names unchanged) |
| L22 | Transport and bypass (G05) | With echoes sounding: stop/start transport ×10; device on/off ×10 | No click beyond Live's own bypass fade, no stuck HOLD/STOP, tempo sync resumes |
| L23 | Save / reopen (G05) | Set with both variants, non-default values, ADVANCED on, a HOLD latch on; save, close Live, reopen | Every value and view state restored; no audio burst at load |
| L24 | CPU in Live (G) | Live's CPU meter: device idle, under load (riddim, oscillation, HOLD); 48 kHz, 128 buffer | Record values; no dropouts |

## Part 3 — musical checks (dub workflow)

Expected values come from `tests/DUB_SCENARIO_REPORT.md` and `reports_v0.1.3/EP3_HOLD_MUSICAL_ASSESSMENT.md` (engine renders, not Live). Record setup, action, result, rating 1–5 (sound) and 1–5 (control), notes. Listening results are only valid from a human session.

| ID | Move | Setup | Expect |
|---|---|---|---|
| M01 | Basic dub echo, change delay while playing | Insert, Echo Volume 0.5, Sustain 0.55, riddim playing; move ECHO DELAY by hand, then throw it | Pitch bends on the repeats, no click or zipper; level steady (engine: no added HF on a hand move, +4.4 dB HF excess on a 30 ms throw = pitch smear) |
| M02 | Feedback throw | Sustain 0.6 → 0.95 while repeats sound; hold a few seconds; back to 0.45 | Oscillation within ~1 s at −18…−24 dBFS RMS, never clipping; 30 dB down in ~4 s (0.6 s delay) / ~0.7 s (114 ms) |
| M03 | HOLD performance | Freeze a phrase for 4 bars in BRIGHT and DARK; release | BRIGHT full-band: −6 dB by bar 2, then steady; DARK keeps mainly bass and keeps sinking; a melodic phrase without bass dies in DARK (use BRIGHT). Release decays normally, no click |
| M04 | Filter performance | Sustain 0.75; sweep Repeat LP 20 k → 700 Hz and Repeat HP up; Resonance 0 / 0.6 | Smooth darkening / thinning; resonance sings; level bounded |
| M05 | DRIVE | DRIVE pad on one snare | That repeat ~13 dB hotter and saturated; protection keeps the output under the ceiling |
| M06 | STOP | STOP (Stop Time 1.2 s) during playback; release after 2.5 s | Tape winds down and back up (restart chirp is by design); no click at stop or restart; echo level back within ~3 dB in 3 s |
| M07 | Return-track workflow | Return variant on a Return; send skank chops | Fully wet: only repeats on the return, the dry plays once (L20) |
| M08 | Hands-on | Perform M01–M06 using only the eight bank controls (Push or mapped controller), ADVANCED closed | All common dub moves possible without the mouse; note anything you had to reach for |
