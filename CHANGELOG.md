# Changelog — Echolivity EP-3

## v0.1.0-dev (2026-11-14)
- Preamp: added the passive output mixer (470k/220k/100k, 500k Echo Volume blend pot with grounded wiper) and the input RF filter; Cable Load default 470 pF, fitted to ClinchFX's descriptions of early and late units (E06, E07). Echo Volume is now the authentic blend (0–1); Dry Level became Dry Trim (default 1); new Echo Trim. 54 parameters.
- First engine (`dsp/ep3_core.genexpr`): moving band-limited record head, fixed echo head, SOS head, 112.5 s loop, PLAYBACK and ECHO footswitches, FET input stage with source-bypass pre-emphasis, cable load, switchable de-emphasis, bias leak, 26/2.5/5 Hz flutter.
- Shared Echolivity features: SYNC/TAP/MANUAL (STR/DOT/TRI), HOLD/DRIVE/STOP, feedback and echo filters, output protection, parameter smoothing, EMBER/EL themes.
- Device: 54 Live parameters (53 automatable + UI Theme).
- Tests: 15/15 behaviour (GenExpr source via C, bit-exact against the Python transpiler), 4/4 theme, 5/5 arithmetic. Not run in Max or Live.
- Loop length found: about 75 ft at 8 ips (~2 minutes), consistent with the manual's "two minute" cartridge.

## v0.0.1-research (2026-11-14)
- New project, separate from the H&H Echo Unit.
- Modelling notes and source list from the Maestro owner/service manual, the CCRMA Echoplex paper, and repair and replica sources.
- Derived-value checks D01–D05 (Python arithmetic only).
- Resolved: the manual's pre-emphasis capacitor is 0.022 µF (the scan's ".22" contradicts its own 2.2 kHz figure).
- Open: playback de-emphasis 0.033 vs 0.003 µF; loop length; delay range (60–600 vs 80–800 ms).
