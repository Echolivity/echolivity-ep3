# EP-3 v0.1.0-dev — tests that need Max 9 / Live 12 (all BLOCKED here: no Max or Live)

| ID | Test | How | Pass if |
|---|---|---|---|
| G01 | gen~ compiles | Open `devices/Echolivity_EP3_v0.1.0-dev.maxpat` in Max 9 | No errors in the Max console; 8 gen~ outlets |
| G02 | Memory | Check Max's memory after load | The 5.4 M-sample tape Data allocates (≈ 21.6 MB) without error |
| G03 | Semantics A1–A5 | Record 2 s of the impulse at slider 50 % | First echo at 330 ms ± 0.3 (matches E01) |
| L01 | Loads in Live | Drop the .amxd on an audio track | Loads, passes audio, no CPU spike |
| L02 | Slider pitch | Play a sustained note, sweep ECHO DELAY | Pitch bends on the repeats, one delay after the move |
| L03 | SOS | S-O-S on, Loop length 4 s, play a phrase, overdub | Phrase returns every 4 s, ~1 dB quieter each pass; overdub adds |
| L04 | PLAYBACK | Record a phrase, press PLAYBK | Loop keeps replaying, new playing is not recorded |
| L05 | Mapping | Map Live's LFO to Echo Delay and Echo Sustain | Smooth modulation, no clicks |
| L06 | Tap / Sync | TAP four times at 100 BPM; SYNC 1/4 TRI | 600 ms; 1/4 triplet at song tempo |
| L07 | Theme | Switch EMBER ↔ EL, save and reopen | Recolours; choice restored |
| L08 | CPU | Live's CPU meter, 48 kHz, 128 buffer | Report the value (C proxy: ~1.8 % of a core) |
| L09 | Sample rates | 44.1 and 96 kHz | Same delay readout; no artefacts |
