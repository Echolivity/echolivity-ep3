# EP-3 test report (v0.1.0-dev)

Environment: the shipped `dsp/ep3_core.genexpr`, translated to C (gx_cgen) and cross-checked against a Python execution of the same source (X01). **Not** Max 9 / Live results; those are in `docs/TEST_PLAN_Max_Live.md`.

**15/15 passed** (2026-11-14)

| ID | Test | Result | Detail |
|---|---|---|---|
| X01 | C translation and Python execution of the GenExpr source agree | PASS | max |difference| over 8 outputs, 4 scenarios x 6000 samples: 0 |
| E01 | Delay: slider 0 / 0.5 / 1 = 60 / 330 / 600 ms (linear); SYNC 1/4 triplet @120 = 333.3 ms | PASS | measured 60.15, 330.15, 600.15, 333.48 ms; worst echo error 0.146 ms (filter group delay), readout error 0.0000 ms |
| E02 | Slider move changes pitch one delay LATER (record head moves), by 1/u | PASS | echo 1.05–1.30 s (head moving, tape written before): 1000.0 Hz (expect 1000); 1.45–1.75 s: 755.3 Hz (expect 1000/u = 755.3, u = 1.324) |
| E03 | Write is band-limited: content pushed above Nyquist by a fast move is removed, not aliased | PASS | head speed over tape u = 0.40; 1 kHz comes back at 2500 Hz (expect 2500); 12 kHz (would land at 30 kHz) vs that echo: -45.6 dB (limit -40) |
| E04 | Sound-on-sound: loop repeats every loop length, -1 dB per pass (manual alignment); Sustain inactive | PASS | pass-to-pass change -1.00 dB, -1.00 dB, -1.00 dB (Echo Sustain at max) |
| E05 | Record level calibration: nominal input (100 mV, -18 dBFS RMS) gives ~3 % THD on the echo | PASS | THD 2.11 % (manual: adjust record level for max undistorted output) |
| E06 | Dry level through FET + output mixer: peaks near unity at low Echo Volume, then falls (blend pot, wiper grounded) | PASS | dry at 1 kHz vs input: k=0.0: -0.7, k=0.1: +0.5, k=0.2: +0.7, k=0.3: +0.7, k=0.5: +0.1, k=0.7: -1.5, k=0.9: -7.0 dB; 15 kHz vs 100 Hz with cable 0: +7.4 dB with 22 nF, -1.6 dB without (input RF filter); shelf from the 22 nF cap +9.0 dB |
| E07 | Dry response (cable 470 pF) matches the published descriptions of early and late EP-3s | PASS | early: 200:-0.6, 600:-0.4, 1000:+0.0, 4000:+1.9, 7000:+0.8, 12000:-2.1 dB; late: 200:+0.2, 600:+0.2, 1000:+0.0, 4000:-2.8, 7000:-5.9, 12000:-9.9 dB (re 1 kHz) |
| E08 | PLAYBACK footswitch: record and erase off, the loop replays unchanged; new playing not recorded | PASS | replay after 1 and 2 loops: +0.00 / +0.00 dB; input during playback on tape: -207 dB |
| E09 | Echo Sustain at max runs away (as the manual describes) but stays bounded under the ceiling | PASS | RMS after 3 s 0.114 (self-oscillating), peak 0.2918 (ceiling 0.9661) |
| E10 | Flutter at 0.5 stays at the EP-3 spec limit (0.3 %) with lines at 2.5, 5 and 26 Hz | PASS | peak speed deviation 0.256 %; lines found [2.5, 5.0, 26.0] |
| E11 | Bias leak: only a very fast head move (u > ~4.7) brings the 100 kHz bias into the audio band | PASS | peak head speed u = 11.8 (bias lands near 8 kHz); bias leak peak -38 dB re a normal echo at Bias Leak 1 (present: > -60; level APPROX), without leak -399 dBFS; slider still: -367 dBFS |
| E12 | 44.1 / 96 kHz delay accuracy; NaN input and a sample-rate change mid-stream are safe | PASS | delay error 44.1k 0.159 ms, 96k 0.177 ms; NaN in output: False |
| E13 | ECHO on/off footswitch fades out without a click | PASS | energy above 4 kHz at the switch: -118 dB re signal peak (220 Hz echo; limit -60); echo after: -145 dBFS |
| C01 | CPU proxy (C translation, gcc -O2, includes per-sample timer overhead) | PASS | 476 ns/sample = 2.28 % of one core at 48 kHz (not a Live measurement) |
