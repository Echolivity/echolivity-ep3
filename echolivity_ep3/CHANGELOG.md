# Changelog — Echolivity EP-3

## v0.1.1-dev (2026-11-14) — practical-validation remediation
Baseline: v0.1.0-dev, engine SHA-256 2a46b3b2…a50b, kept read-only for comparison. Details: `remediation/EP3_REMEDIATION_REPORT.md`.
- F1 HOLD: the hold loop gain is divided by the loop's computed peak gain, and a ±3 % per-pass level trim (active only during HOLD) settles, then locks the held level. HOLD no longer grows (+13 dB/min before); Hold Feedback keeps its meaning.
- F2 ECHO TONE DARK (33 nF): Echo Sustain is scaled by the ratio of peak loop gains, so both voicings run away at the same point (~0.8); DARK no longer self-oscillates at default Sustain. BRIGHT (default) unchanged, bit-identical.
- F3 Loop Length default 112.5 s → 8 s (112.5 s still available).
- F4 Click-free changes: ECHO TONE crossfaded (10 ms), VOICE (source cap) smoothed (10 ms), Cable Load filter always runs (no on/off branch at 0 pF).
- F5 Interface: ADVANCED toggle (new Stored Only parameter "Advanced View") hides ten engineering controls by default; voicing switches renamed VOICE LATE/EARLY and ECHO TONE BRIGHT/DARK; footswitches ECHO ON / PLAYBACK; Wow; header says mono. All parameter long names unchanged.
- F6 Loop Length changes: echo and feedback fade out, the new length applies, and they stay muted until fresh tape reaches the echo head, then fade in (no click).
- F7 restart chirp and F8 overdrive aliasing: unchanged; classified as design characteristic and documented limitation.
- Behaviour changes that musicians will notice: 8 s default loop; HOLD settles slightly below the pre-HOLD level, then holds; in DARK, repeats now lose mids faster at a given Sustain, and HOLD keeps mainly the low end. Everything else is bit-identical to v0.1.0-dev with the default voicing (test R06).
- 55 Live parameters. Tests: behaviour 19/19, remediation 14/14, UI 5/5, arithmetic 7/7. Max 9 / Live 12: not run.

## v0.1.0-dev (2026-11-14)
- Preamp: added the passive output mixer (470k/220k/100k, 500k Echo Volume blend pot with grounded wiper) and the input RF filter; Cable Load default 470 pF, fitted to ClinchFX's descriptions of early and late units (E06, E07). Echo Volume is now the authentic blend (0–1); Dry Level became Dry Trim (default 1); new Echo Trim. 54 parameters.
- First engine (`dsp/ep3_core.genexpr`): moving band-limited record head, fixed echo head, SOS head, 112.5 s loop, PLAYBACK and ECHO footswitches, FET input stage with source-bypass pre-emphasis, cable load, switchable de-emphasis, bias leak, 26/2.5/5 Hz flutter.
- Shared Echolivity features: SYNC/TAP/MANUAL (STR/DOT/TRI), HOLD/DRIVE/STOP, feedback and echo filters, output protection, parameter smoothing, EMBER/EL themes.
- Device: 54 Live parameters (53 automatable + UI Theme).
- Tests: 19/19 behaviour (GenExpr source via C, bit-exact against the Python transpiler), 4/4 theme, 7/7 arithmetic. Not run in Max or Live.
- Loop length found: about 75 ft at 8 ips (~2 minutes), consistent with the manual's "two minute" cartridge.

## v0.0.1-research (2026-11-14)
- New project, separate from the H&H Echo Unit.
- Modelling notes and source list from the Maestro owner/service manual, the CCRMA Echoplex paper, and repair and replica sources.
- Derived-value checks D01–D05 (Python arithmetic only).
- Resolved: the manual's pre-emphasis capacitor is 0.022 µF (the scan's ".22" contradicts its own 2.2 kHz figure).
- Open: playback de-emphasis 0.033 vs 0.003 µF; loop length; delay range (60–600 vs 80–800 ms).
