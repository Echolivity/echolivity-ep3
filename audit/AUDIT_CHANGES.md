# Changes made while preparing the audit (2026-11-14)

The pre-audit review checked every document against fresh test runs and the sources. These are the problems it found and what was done. No DSP behaviour changed. The only engine-file edits are comments, which changes the embedded codebox text and so the device bytes; the device was rebuilt.

| Found | Fix |
|---|---|
| "Echo Sustain runs away above ~0.8" (engine comment, notes) had never been tested | Measured, and added **E14**: decays at 0.75 (−5.4 dB), builds at 0.8 (+7.3 dB). Claim kept, now evidenced |
| HOLD, TAPE STOP and TAP were ported from the H&H engine but not tested on the EP-3 engine | Added **E15**, **E16**, **E17**. E16's first expectation was wrong (I assumed pitch = 1 kHz × speed); corrected to the physical expectation (speed now ÷ speed when written: 653 Hz); the engine gave 652 Hz throughout |
| Notes still said loop length **UNKNOWN** while §6 used 112.5 s | Updated to SOURCED [S18]; S18 (in2guitar) was cited but missing from SOURCES; added |
| Notes kept an **Output impedance 100 kΩ / 250 pF** row superseded by the output mixer | Removed |
| Notes FET row cited **E06** for a 14 dB gain that E06 no longer measures | Reworded: 14.0 dB is by calculation; E06 evidences the +9.0 dB shelf |
| E03 figure in the notes stale (−44.5 → −45.6 dB) | Updated |
| ClinchFX's "−4–5 dB at 7 kHz" contradicts his own description the model is fitted to | Marked CONFLICT in the notes instead of listing both as agreeing |
| New output-mixer rows had no Status column | Statuses added |
| "Echo Volume (echo level / mix)" in the controls section | Corrected to the blend behaviour |
| UI label "flutter 0.5 = 0.3 %" and the engine comment overstated it (measured 0.256 %) | Now "≤ 0.3 % spec" / "within the 0.3 % spec" |
| "21.6 MB" tape memory assumed 32-bit storage | Now "21.6 MB at 32-bit or 43 MB at 64-bit; confirm in Max (G02)" |
| Test titles: E05 "~3 %" (measured 2.1 %), E10 "at the spec limit", E11 "u > ~4.7", E15 "about constant" | Reworded to match the criteria and results |
| CPU in the test plan stated as 1.8 % | Now "about 2 % (proxy, not Live)" |
| Section "What's needed before writing DSP" was out of date | Renamed "Open questions"; loop length marked answered |
| No Live test for the Echo Volume blend | Added **L10** |
| FET bias point and 14 dB LF gain were hand calculations | Added **D06**, **D07** to the arithmetic checks |

Counts after the audit: 19/19 behaviour, 4/4 theme, 7/7 arithmetic. README and CHANGELOG were updated to match.
