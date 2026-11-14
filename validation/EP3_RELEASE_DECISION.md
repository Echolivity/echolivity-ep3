# Echolivity EP-3 v0.1.0-dev — Release Decision

## Decision: **NOT READY**

### Why
1. **It has never run in its host.** No one has compiled it in Max 9 or loaded it in Live 12. Loading, real-time CPU, preset recall, automation in Live and UI drawing are all unverified. A product can't be called ready, or even functional, for music production without that.
2. **Two P1 defects are reachable at normal settings.**
   - HOLD, a headline performance pad, swells +10–14 dB within 30 s at its default setting.
   - The 33 nF ECHO TONE voicing makes the default feedback self-oscillate.

   Both trace to one placement error (a normalisation gain inside the feedback loop; diagnosed from the measurements, the fix not yet run), and both should have a small, local fix.

### What is already good (engine level, measured)
- **Sound:** clean unity dry path with the EP-3 high-end lift. A first echo that matches the dry level. Smooth tape compression (2 % THD at nominal, rising musically).
- **Pitch play:** convincing record-head behaviour; glides stay click-free under hand moves, jumps and stepped automation.
- **Timing and features:** exact timing at every sample rate. Working SOS, PLAYBACK and TAPE STOP. Echo Volume at 1 doubles as a fully wet return mode.
- **Reliability:** 10 minutes of heavy modulation with no NaN, no overs and stable levels.
- **CPU:** about 2 % of one core at 48 kHz on the C proxy.

### Path to BETA
1. Fix P1-01 and P1-02 (one change) and pass their verification tests.
2. Run the host gate: G01–G03 and L01–L10 pass in Max 9 / Live 12, including a Live CPU figure and a preset save/reopen.

### Path to READY (after BETA)
- Fix P2-01 to P2-03: musical default loop length, click-free switches, a performance-first face with advanced controls tucked away and plain labels.
- Run a short listening comparison against reference recordings, if any can be obtained.

---

## The three most valuable actions

1. **Run it in Max 9 and Live 12** (test plan G01–G03, L01–L10, about one hour). It's the only way to rule out unknown P0s, and it gives real CPU, memory and preset results.
2. **Move the de-emphasis normalisation out of the feedback loop** (one local change in `ep3_core.genexpr`). It fixes the HOLD swell, the 33 nF runaway and the low-end build-up on repeats, with tests for both voicings and three sample rates.
3. **Make the face performance-first:**
   - set an 8 s default loop so SOS and PLAYBACK respond immediately;
   - put about 15 engineering controls behind an ADVANCED toggle and rename voicing switches by sound, not component value;
   - make the two switch clicks inaudible.

   No DSP architecture changes are needed.
