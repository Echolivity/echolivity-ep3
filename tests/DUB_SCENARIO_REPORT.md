# EP-3 dub scenarios — measurements (v0.1.2-dev)

Rendered by `tests/dub_scenarios.py` through the engine source executed as C. **Not Max / Live.** Raw values: `tests/dub_scenarios_results.json`. Audio: `listening/*.wav` (48 kHz mono 16-bit, normalised only if a file would clip; none did).

Material: synthetic offbeat skank chop, rim shot, one-drop kick, 75 BPM. "Return" scenarios run the device fully wet (Echo Volume 1) and add it to the dry riddim at unity. No NaN in any render.

| ID | Move | Measured |
|---|---|---|
| D1 | Throw one chop into a return (1/8 dotted, Sustain 0.6) | −2.1 dB per repeat; 11 repeats within 30 dB; first repeat −21.0 dBFS |
| D2 | Ride Sustain 0.6 → 0.95 while repeats sound, hold 5.5 s, pull to 0.45 | 1/8 dotted (0.6 s): plateau −24.0 dBFS RMS after 0.8 s, 30 dB down 3.95 s after pulling back, peak 0.21. Slapback (114 ms): plateau −18.2 dBFS RMS after 0.9 s, 30 dB down in 0.65 s, peak 0.22 |
| D3 | Siren: slider thrown by hand during oscillation | Head speed over tape 0.75–1.31; HF artefacts −61.9 dB re signal; peak 0.20 |
| D4 | Repeat LP 20 k → 700 Hz, Repeat HP 10 → 900 Hz, Sustain 0.75 | Resonance 0 / 0.6 / 1.0: peak 0.17 / 0.23 / 0.23, RMS −32 / −21 / −21 dBFS; bounded, no NaN |
| D5 | Freeze half a bar for 4 bars, then release | BRIGHT held bars −34.3, −37.2, −38.9, −39.1 dBFS (sags ~5 dB over 2 bars, then steady). DARK −23.1, −25.6, −28.2, −29.5 (still sagging in bar 4). Both decay normally after release |
| D5b | HOLD with Repeat Resonance 1, Repeat LP 1.2 kHz | Rises from −25.3 to −18.6 dBFS within ~10 s, then steady; peak 0.24 (bounded) |
| D6 | Tape stop at the end of a phrase (insert) | Peak 0.70; behaves as designed (incl. the restart chirp, F7) |
| D7 | DRIVE pad on one snare | That repeat +13.1 dB hotter, saturated; peak 0.27 |
| D8 | Sound-on-sound, factory 8 s loop, two layers | Layers stack; peak 0.35 |
| D9 | BRIGHT vs DARK, Sustain 0.55 / 0.7 (repeats 1, 3, 6) | BRIGHT −17.4/−24.4/−33.3 and −17.4/−20.6/−23.6 dBFS; DARK −12.6/−23.9/−38.4 and −12.6/−19.8/−28.0 |
