# Claims ledger — Echolivity EP-3 v0.1.0-dev

Every factual or performance claim made in `README.md`, `CHANGELOG.md`, `docs/EP3_MODELING_NOTES.md` §6, the engine comments and the device UI, with its evidence. Test IDs refer to `tests/EP3_TEST_REPORT.md` (E, X, C), `tests/DERIVED_REPORT.md` (D) and `tests/UI_THEME_REPORT.md` (TH). Sources [S#] refer to `docs/SOURCES.md`.

Evidence types:
- **TEST**: a test ran and passed in this environment (GenExpr source outside Max).
- **SOURCE**: published; quoted or paraphrased in the notes.
- **DERIVED**: arithmetic from sourced values.
- **DESIGN**: a decision, not a fact.
- **BLOCKED**: needs Max or Live.

| # | Claim (where) | Evidence | Type | Notes |
|---|---|---|---|---|
| 1 | Record/erase head moves; echo head fixed (notes, engine) | [S1] | SOURCE | Erase-head mobility conflicts with [S3]: CONFLICT recorded |
| 2 | Slider moves change pitch one delay later, by 1/u (notes §6) | E02: 755.3 Hz measured vs 755.3 expected | TEST | |
| 3 | Write is band-limited; ≥ 40 dB alias rejection (notes §6) | E03: −45.6 dB | TEST | 40 dB limit is our design target |
| 4 | Delay 60 / 330 / 600 ms, linear in slider (README, UI) | E01 | TEST | Range itself from [S3] (SOURCE); 0.15 ms offset = filter group delay |
| 5 | SYNC 1/4 triplet @120 = 333.3 ms | E01: 333.48 ms (echo peak), readout exact | TEST | |
| 6 | TAP: 100 BPM → 600 ms; dotted 1/8 = 450 ms | E17 | TEST | |
| 7 | SOS: −1 dB per pass, Sustain inactive (notes, UI) | E04: −1.00 dB ×3; [S1] alignment figure | TEST + SOURCE | |
| 8 | PLAYBACK: record and erase off, loop replays unchanged | E08: ±0.00 dB, new input −207 dB | TEST | Footswitch meaning from [S1] |
| 9 | ECHO footswitch fades without a click | E13: −118 dB HF at the switch | TEST | What the original switches is UNKNOWN (D7) |
| 10 | Loop ≈ 75 ft ≈ 112.5 s (CHANGELOG, notes, UI default) | [S18], consistent with [S1] "two minute" | SOURCE + DERIVED | |
| 11 | Echo Sustain runs away from 0.8 (engine comment, notes) | E14: −5.4 dB at 0.75, +7.3 dB at 0.8 | TEST | Added during audit; previously untested |
| 12 | Sustain at max stays under the ceiling | E09 | TEST | |
| 13 | Nominal input gives ~2–3 % THD on the echo | E05: 2.11 % | TEST | Calibration is our fit to the manual's procedure |
| 14 | Flutter 0.5 stays within the 0.3 % spec; lines 26 / 2.5 / 5 Hz (UI label, notes) | E10: 0.256 %; lines found | TEST | Spec [S1]; lines [S5] |
| 15 | Bias leak only on very fast moves (u > ~4.6) | E11 | TEST | Level APPROX; test checks the mechanism only |
| 16 | 44.1 / 96 kHz delay accuracy; NaN and sample-rate change safe | E12 | TEST | |
| 17 | HOLD keeps repeats; input not recorded during HOLD | E15: +2.0 dB over 2 s; −70 dB | TEST | Added during audit |
| 18 | TAPE STOP ramps speed; pitch = speed now / speed when written | E16: 652 Hz vs 653 expected | TEST | Added during audit |
| 19 | FET bias: source 1.80 V, 0.545 mA at 21.2 V | D06; fitted to [S8] 1.72–1.88 V | DERIVED | Idss / Vp are fitted, not sourced |
| 20 | FET LF gain 14.0 dB; manual's 16.5 dB = ideal Rd/Rs | D07: 13.98 dB; D02 (16.5 = 6.7×) | DERIVED | Not separately measurable at the output since the mixer was added |
| 21 | 22 nF bypass adds a +9.0 dB shelf (2.2 kHz zero) | E06; D01 | TEST + DERIVED | |
| 22 | Echo Volume is a blend; dry peaks ~0.2–0.3 then falls 7.7 dB by 0.9 | E06 | TEST | Topology [S13]–[S15] (replica traces) |
| 23 | Dry response matches early/late descriptions at 470 pF | E07 | TEST (fit) | Target [S16]; conflicts with [S8]'s "−4–5 dB at 7 kHz" (recorded) |
| 24 | Pre-emphasis capacitor is 0.022 µF, not 0.22 | D01: 2192 Hz vs the manual's 2.2 kHz | DERIVED | |
| 25 | C translation = Python execution of the source | X01: 0 difference | TEST | Neither is Max's compiler |
| 26 | Device embeds exactly `dsp/ep3_core.genexpr`; .amxd = .maxpat | Audit check (`audit/evidence/integrity.txt`) | TEST | |
| 27 | Rebuild is byte-identical; test numbers repeatable | Audit check | TEST | C01 timing varies |
| 28 | 54 Live parameters, 53 automatable + UI Theme (Stored Only) | TH04, `docs/PARAMETERS.md` | TEST | Automation/LFO in Live: BLOCKED (L05) |
| 29 | Theme switch recolours everything, changes nothing else | TH01–TH04 | TEST | Redraw in Max: BLOCKED (L07) |
| 30 | CPU about 2 % of one core at 48 kHz | C01 (C proxy, includes timer overhead) | TEST (proxy) | Live figure BLOCKED (L08) |
| 31 | Mono like the original | [S1], [S9]; engine sums L+R, out1 = out2 | SOURCE + DESIGN | |
| 32 | Compiles in Max 9 / loads in Live 12 | — | **BLOCKED** | G01, L01. **Not claimed anywhere as done** |
| 33 | Tape buffer 5.4 M samples (21.6 or 43 MB) | DERIVED from `Data tape(5400064, 1)` | DERIVED | Storage width to confirm in Max (G02) |
| 34 | Tape HF loss 5188 Hz × speed | H&H fit × 8/12 | DESIGN (APPROX) | Not EP-3 data |
| 35 | De-emphasis default 3 nF | Reasoned pairing with pre-emphasis | DESIGN | CONFLICT with the manual scan (D2) |

**Claims with no evidence:** none found. Claims found stale or unsupported during the audit, and fixed, are listed in `audit/AUDIT_CHANGES.md`.
