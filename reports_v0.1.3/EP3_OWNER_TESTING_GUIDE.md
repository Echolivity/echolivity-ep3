# EP-3 v0.1.3-dev — Owner testing guide

This build has passed every test possible without Max and Live. **Your session is the one that proves it works in Max and Live.** About 2½ hours in total; Part 1 alone (20 min) already answers the biggest question: does it compile?

Record everything in `remediation/host_evidence/` (create it): console text, screenshots, short recordings, and the results table at the end. Status words: **PASS / FAIL / BLOCKED / NOT TESTED**.

**You need:**
- Max 9 (standalone, or the one inside Live);
- Ableton Live 12 Suite;
- Python 3 with numpy and scipy (to run the checks);
- ideally Push or a MIDI controller;
- one or two real riddims or dub stems.

## Part 1 — Max 9 harness (~20 min, no Live needed)

1. In Max: Options → Audio Status, set **48000** Hz.
2. Open `tests/golden/EP3_host_harness.maxpat`. Open the Max Console.
   - **G01:** any red gen~ error means FAIL. Copy it out, stop here, and send it back. Nothing else matters until the engine compiles.
3. Press RUN for GOLD1…GOLD5 and BEH1…BEH4, one at a time (BEH1/BEH2 take 32 s). Each writes `out_<name>_max.wav` next to the patch.
4. From the project folder:
   ```sh
   for n in GOLD1_bright_feedback GOLD2_dark_feedback GOLD3_sos_loop2s GOLD4_oscillation_short GOLD5_voice_late_cable0; do
     python3 tests/golden/compare.py tests/golden/expect_$n.wav tests/golden/out_${n}_max.wav; done
   for n in BEH1_hold_bright BEH2_hold_dark BEH3_echo_tone_switch BEH4_loop_change; do
     python3 tests/golden/check_behaviour.py $n tests/golden/out_${n}_max.wav; done
   ```
   Every line must print PASS. If one fails, keep the wav and the printed figure.

## Part 2 — Live 12 (~1 h)

1. **Load.** Drag `devices/Echolivity_EP3_v0.1.3-dev.amxd` onto an audio track (L01).
   - If Live refuses the file: create an empty Max Audio Effect, open it in the editor, open `devices/Echolivity_EP3_v0.1.3-dev.maxpat` in Max, select all, copy, paste into the device and save. Note this as FAIL for the .amxd container (K-12) and carry on.
2. Run **L02–L17** from `docs/TEST_PLAN_Max_Live.md`.
3. **Controller bank (L18–L19).** Select the device on Push, or on a controller in Live's device-control mode. The first bank must read:
   **Echo Sustain · Echo Volume · Echo Delay · Repeat LP · Repeat HP · HOLD Latch · DRIVE Latch · STOP Latch.**
   Photograph it. Then MIDI-map all eight, record automation for each, and play it back.
4. **Return (L20).**
   1. Put `Echolivity_EP3_v0.1.3-dev_Return.amxd` on Return A. Echo Volume must read 1.00.
   2. Send a skank track at 0 dB.
   3. Duplicate the skank track, put Utility on the copy with both phase-invert buttons on, and mute Return A. The two tracks must cancel to silence, which shows there's only one dry path.
   4. Unmute the return: you should hear only repeats.
5. **Optional Live preset.** The Insert device with Echo Volume 1 is the same as the Return variant. You can save it with the device's Save Preset button as "EP-3 Return".
6. **Presets, transport, save/reopen, CPU (L21–L24).**

## Part 3 — Dub session (~1 h, a dub engineer at the controls)

- **Setup:** a real riddim, the Return variant on a return, the controller mapped (bank plus ECHO TONE on a spare pad).
- **Run M01–M08** (`docs/TEST_PLAN_Max_Live.md`, Part 3). For each, note:
  - what you did;
  - what you heard;
  - a sound rating 1–5;
  - a control rating 1–5;
  - anything you reached for that wasn't there.
- **Before M03 (HOLD),** listen to `listening/hold_study/` and `listening/D5_*`.

Then answer these three questions:
1. Is the BRIGHT HOLD settle (~6 dB over 2 bars) acceptable? (K-05)
2. Should HOLD in DARK keep the mid-range? (K-03; candidate change in `EP3_HOLD_MUSICAL_ASSESSMENT.md`)
3. Are any switching changes audible in quiet passages? (K-10)

## Results table

| ID | Status | Notes / rating | Evidence file |
|---|---|---|---|
| G01 compile | | | |
| G02 memory (MB) | | | |
| GOLD1–5 | | | |
| BEH1–4 | | | |
| L01–L17 | | | |
| L18 bank on Push / controller | | | |
| L19 mapping / automation | | | |
| L20 Return null test | | | |
| L21–L24 | | | |
| M01–M08 | | | |
| Q1–Q3 answers | | | |

Send this table and the evidence folder back. Fixes are made only against what the session shows, and every suite is re-run after each fix.
