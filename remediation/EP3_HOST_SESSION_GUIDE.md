# EP-3 v0.1.2-dev — Host Session Guide (Max 9, then Live 12)

Purpose: turn one session into evidence. Record everything in `remediation/host_evidence/`: screenshots, console text, recordings, and the filled-in results table at the end.

You need Max 9 (standalone, or the one inside Live), Ableton Live 12 Suite, and Python 3 with numpy and scipy (to run the checks). The project folder is unzipped.

## Part 1 — Max 9 harness (~20 min, no Live needed)

1. In Max: Options → Audio Status, set the sample rate to **48000**, choose any output device.
2. Open `tests/golden/EP3_host_harness.maxpat`.
   - **G01:** open the Max Console. Any red gen~ error = FAIL; copy it into the evidence folder.
   - **G02:** note Max's memory use (Activity Monitor / Task Manager) before and after opening. Nine 5.4 M-sample tapes load.
3. Check the patch's sample-rate box shows 48000. Wait 2 s.
4. Press **RUN GOLD1**. After 5.5 s, `out_GOLD1_bright_feedback_max.wav` appears next to the patch. Repeat for GOLD2…GOLD5 and BEH1…BEH4 (BEH1/BEH2 take 32 s each).
5. In a terminal, from the project folder:
   ```sh
   for n in GOLD1_bright_feedback GOLD2_dark_feedback GOLD3_sos_loop2s GOLD4_oscillation_short GOLD5_voice_late_cable0; do
     python3 tests/golden/compare.py tests/golden/expect_$n.wav tests/golden/out_${n}_max.wav; done
   for n in BEH1_hold_bright BEH2_hold_dark BEH3_echo_tone_switch BEH4_loop_change; do
     python3 tests/golden/check_behaviour.py $n tests/golden/out_${n}_max.wav; done
   ```
   - **G03a–e:** each compare must print PASS (< −80 dB).
   - **G04a–d:** each check must print PASS.
6. If a GOLD test fails, keep the output wav and the printed residual. The first failing scenario points at the gen~ semantic that differs:

| First failure | Suggests |
|---|---|
| GOLD1 | basic tape engine |
| GOLD2 | DARK voicing / loop equalisation |
| GOLD3 | SOS / loop wrap |
| GOLD4 | saturation / guard |
| GOLD5 | FET without the source cap / cable bypass |

## Part 2 — Ableton Live 12 (~1 h)

Load `devices/Echolivity_EP3_v0.1.2-dev.amxd`. Run L01–L17 from `docs/TEST_PLAN_Max_Live.md` in order. Take screenshots of the device in both themes and with ADVANCED on, Live's CPU meter for L08, and a short recording for each audible test.

## Part 3 — Dub producer session (~30 min)

Set up:
- a riddim on a track;
- the device on a **Return** track at **Echo Volume 1**;
- a MIDI controller mapped as in M08.

Then:
1. Run **M01–M08** (`docs/TEST_PLAN_Max_Live.md`, Part 3).
2. For each move, rate 1–5 for musical result and 1–5 for control, and note anything that surprised you.
3. Listen to `listening/*.wav` first, for the expected behaviour.

Questions to answer (from the team review):
- Does HOLD hold "enough" (T3)?
- Does the DARK level jump get in the way (T5)?
- Would a "Return" preset and a dub controller bank help (T2, T7)?

## Results table (fill in)

| ID | PASS / FAIL / notes | Evidence file |
|---|---|---|
| G01 | | |
| G02 (MB) | | |
| G03a–e | | |
| G04a–d | | |
| L01–L17 | | |
| M01–M08 (rating / notes) | | |
