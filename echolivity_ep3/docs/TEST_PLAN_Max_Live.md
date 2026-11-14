# EP-3 v0.1.1-dev — tests that need Max 9 / Live 12

Status of every test here: **UNVERIFIED**. No Max or Live is available in the build environment. Record results with screenshots, recordings or Max console text. The v0.1.0-dev tests are kept; L11–L16 are new for the v0.1.1-dev remediation.

| ID | Test | How | Pass if |
|---|---|---|---|
| G01 | gen~ compiles | Open `devices/Echolivity_EP3_v0.1.1-dev.maxpat` in Max 9 | No errors in the Max console; 8 gen~ outlets |
| G02 | Memory | Check Max's memory after load | The 5.4 M-sample tape Data allocates without error; note the memory used (21.6 MB if 32-bit, 43 MB if 64-bit) |
| G03 | Semantics A1–A5 | Record 2 s of the impulse at slider 50 % | First echo at 330 ms ± 0.3 (matches E01) |
| L01 | Loads in Live | Drop the .amxd on an audio track | Loads, passes audio, no CPU spike, no console errors |
| L02 | Slider pitch | Play a sustained note, sweep ECHO DELAY | Pitch bends on the repeats, one delay after the move |
| L03 | SOS | S-O-S on (factory loop 8 s), play a phrase, overdub on the next pass | Phrase returns every 8 s, ~1 dB quieter each pass; overdub adds |
| L04 | PLAYBACK | Record a phrase, press PLAYBACK | Loop keeps replaying; new playing is not recorded |
| L05 | Mapping | Map Live's LFO to Echo Delay, Echo Sustain, Echo Volume and Cable Load | Smooth modulation, no clicks |
| L06 | Tap / Sync | TAP four times at 100 BPM; SYNC 1/4 TRI | 600 ms; 1/4 triplet at song tempo |
| L07 | Theme | Switch EMBER ↔ EL, save and reopen | Recolours; choice restored |
| L08 | CPU | Live's CPU meter at 44.1 / 48 / 96 kHz, buffers 64 / 128 / 512 | Report values (C proxy: about 2 % of one core at 48 kHz; not a Live figure) |
| L09 | Sample rates | 44.1, 48 and 96 kHz | Same delay readout; no artefacts |
| L10 | Echo Volume blend | Dry signal, sweep Echo Volume 0 → 1 | Dry rises slightly to ~0.2–0.3, then falls (−7 dB by 0.9, silent at 1) |
| L11 | HOLD (F1) | Play a chord with Sustain 0.4, press HOLD (latch) for 60 s, both ECHO TONE settings | Loop never gets louder than before HOLD. BRIGHT holds steady after a few seconds; DARK sheds its upper content, then holds steady |
| L12 | Feedback (F2) | ECHO TONE = DARK at default Sustain 0.4, then sweep Sustain | No self-oscillation at 0.4 or 0.7; runaway only from about 0.8, as with BRIGHT |
| L13 | Switch clicks (F4) | While a sustained note echoes: toggle ECHO TONE, toggle VOICE, move Cable Load to and from 0 | No audible click |
| L14 | Loop change (F6) | In ECHO mode with repeats sounding, change LOOP s | Echo dips out for about one delay and returns cleanly; no click |
| L15 | ADVANCED view (F5) | Toggle ADVANCED; save the set with ADVANCED on, reopen | Controls appear and disappear; hint text shows when off; state restored on reopen; no overlaps |
| L16 | Presets | Save a device preset with non-default values (including DARK, VOICE LATE, loop 20 s), load it on a new instance | All values restored, including Stored Only UI state |
