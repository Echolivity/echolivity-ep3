# Echolivity EP-3 — adviser brief (v0.1.0-dev, audit snapshot 2026-11-14)

**What it is.** A Max for Live tape-echo device for Ableton Live 12 / Max 9, modelled on the Maestro Echoplex EP-3 (solid-state, 1970–1991). It's the second unit in the Echolivity Classic Echo Collection, after the H&H Echo Unit, and kept as a separate project.

**Where it stands.**
- The engine, device and documentation exist.
- All tests that can run outside Max pass: 19/19 behaviour, 4/4 theme, 7/7 arithmetic.
- The device has **never been opened in Max 9 or Live**. Every Max and Live test is BLOCKED (no Max or Live in the build environment). Nothing in this pack is a Max or Live result.
- Several tone-defining values are fitted or approximate, because no clean EP-3 schematic and no measurements of a real unit were available.

---

## 1. Architecture in one page

```
in (L+R summed, mono like the original)
 └─ input RF filter (100k / 100 pF)
     └─ Q5 FET stage: square-law JFET, 22k drain, 3.3k source ∥ 22 nF (switchable), 21.2 V
         ├─ DRY ──► passive output mixer (470k, 220k, 100k, 500k Echo Volume blend pot,
         │          wiper grounded) ──► cable/amp load (C) ──► out
         └─ RECORD LEVEL ─► + Echo Sustain feedback ─► tape saturation ─► write anti-alias
              (4th order, follows the head's speed over the tape)
              └─ MOVING RECORD/ERASE HEAD: writes every tape cell it crosses
                  tape loop: 112.5 s, 48 000 cells per tape-second, 8 ips nominal
                  ├─ fixed ECHO head ─► tape HF loss ─► de-emphasis ─► head-amp coupling
                  │     ├─► Echo Sustain (feedback) + Echolivity feedback filters
                  │     └─► echo filters ─► ECHO footswitch ─► output mixer (other pot lug)
                  └─ SOS head (upstream of the record head): monitored in Sound-on-Sound
```

Shared Echolivity layer, ported from the H&H engine: SYNC/TAP/MANUAL with straight/dotted/triplet, HOLD/DRIVE/TAPE STOP pads, parameter smoothing for LFO mapping, output protection (zero-latency limiter + soft clip), EMBER/EL UI themes.

**The defining modelling decision.** On the EP-3 the *record* head moves (the manual says the delay is set by positioning the Record/Erase Head). A slider move therefore changes how sound is *written*: the pitch change is heard one delay later, by a factor of 1/u, where u is the head's speed over the tape. This follows Arnardottir, Abel & Smith (AES 2008). Tests E02 and E03 confirm it, and E11 covers the bias-leak "sonic boom" effect.

**One engine, two independent executions.** `dsp/ep3_core.genexpr` is the only DSP source. Tests run it as C (gx_cgen + gcc) and check it bit-exact against a Python execution of the same file (X01). There is no separate hand-written "reference engine" that could drift from the shipped code. The shipped device embeds exactly this file (checked byte-for-byte).

---

## 2. Evidence by environment

| Environment | Status | What it shows |
|---|---|---|
| Arithmetic on sourced values (`tests/test_derived.py`) | 7/7 PASS | Manual's figures are internally consistent; resolves the "0.22 µF" scan error |
| GenExpr source → C, cross-checked vs Python (`tests/test_ep3.py`) | 19/19 PASS | Behaviour against sourced or derived expectations; X01 bit-exact |
| Device patch structure (`tests/test_ui_theme.py` + audit checks) | 4/4 PASS + checks | Cords valid, every parameter wired, UI defaults = engine defaults, no overlaps, themes complete |
| Max 9 (gen~ compile, semantics A1–A5, memory) | **BLOCKED** | G01–G03 in `docs/TEST_PLAN_Max_Live.md` |
| Ableton Live 12 (load, mapping, CPU, sample rates, sound) | **BLOCKED** | L01–L10 |
| Comparison with a real EP-3 (recordings, IR, measurements) | **NOT AVAILABLE** | No unit, no clean schematic, no licensed IR found |

---

## 3. What is solid, what is fitted, what is guessed

**Solid** (manual, arithmetic, or several agreeing sources; tested):
- Moving record head.
- Head order: SOS → record/erase → echo.
- Sound-on-sound with erase off and −1 dB per pass.
- PLAYBACK = record and erase off.
- Bias ~100 kHz.
- 22 V audio supply.
- Pre-emphasis 3.3k ∥ 0.022 µF (2.2 kHz).
- Wow and flutter ≤ 0.3 %.
- Mono throughout.
- Loop ~75 ft ≈ 112.5 s at 8 ips.

**Sourced but secondary:**
- 8 ips and the 60–600 ms range (CCRMA, from a unit they pictured as an EP-4).
- Flutter lines at 26 / 2.5 / 5 Hz (measured on an Echoplex).
- The output mixer topology and values (replica builders' traces).
- The dry-tone descriptions of early and late units (ClinchFX).

**Fitted:**
- FET constants Idss 3.4 mA and Vp −3 V, fitted to source voltages measured on two units (1.72–1.88 V).
- Cable load 470 pF, fitted so the dry response matches ClinchFX's descriptions of both versions (E07).
- Record-level calibration (~2 % THD at nominal level).

**Approximate (our choice, no data):**
- Tape HF loss, scaled from the H&H fit.
- Saturation curve.
- Head-amp and record coupling corners.
- SOS head position.
- Echo level relative to dry.
- Bias-leak level.
- Head-speed limit.
- Polarity.

**Conflicting sources, kept as switches:**
- Playback de-emphasis, 18k with 3 nF or 33 nF. Default 3 nF, because it pairs with the pre-emphasis; the literal manual scan says 33 nF.
- Source bypass cap present or absent (varies by serial).

**Unknown:**
- Whether the erase head moves (EP-3 manual) or is fixed (DAFX text).
- What exactly the ECHO footswitch switches.

Every item, with its source, is in `docs/EP3_MODELING_NOTES.md` and `audit/CLAIMS_LEDGER.md`.

---

## 4. Decisions that need you

| # | Decision | Options | Current default and why |
|---|---|---|---|
| D1 | Target serial range | 9068–9450 early / 9451–12960 / **12961–28591** / 23700–24000 single-board | 12961–28591 (longest production), with the 22 nF cap fitted as per the factory addendum |
| D2 | De-emphasis default | **3 nF (2.95 kHz)** / 33 nF (268 Hz) | 3 nF: forms a pre/de-emphasis pair (54 µs ≈ NAB 50 µs). 33 nF is the literal scan and makes echoes much darker. Needs a clean schematic |
| D3 | Echo Volume behaviour | **Authentic blend** (grounded wiper: dry falls as echo rises) / independent dry and echo | Authentic, with Dry Trim and Echo Trim added so users keep independent control |
| D4 | Default loop length | **112.5 s (authentic)** / shorter for usable sound-on-sound | Authentic; 1–112.5 s adjustable |
| D5 | Delay range default | **60–600 ms** (CCRMA measurement) / 80–800 ms (Guitar World) | 60–600; editable Slider Min/Max |
| D6 | Data acquisition | Buy/borrow a unit · commission measurements · obtain the Maestro manual scan (manualslib / Ronsound) · licensed IR | None yet. **The largest single risk to authenticity** (§5) |
| D7 | ECHO footswitch semantics | Mute the echo return (current) / also stop recording | Mute only (unknown) |
| D8 | Release gate | What Max/Live evidence is required before calling anything "verified" | Proposed: G01–G03 and L01–L10 all pass, plus a CPU figure from Live |
| D9 | Naming / IP | "EP-3 TAPE ECHO" in the UI, "Echoplex"/"Maestro" only in the docs as the modelled unit; no logos or artwork | As described; EchoPre3 (AGPL) used only as a published comparison, no code or data |

---

## 5. Risks (highest first)

1. **Never compiled in Max.** gen~ semantics are assumed (A1–A5 in `tests/genexpr_sim/gx_transpile.py`). Particular items to check:
   - the 5.4 M-sample `Data` buffer (21.6 MB at 32-bit or 43 MB at 64-bit samples; gen~'s storage width is unconfirmed);
   - `for` loops with run-time bounds;
   - a function returning three values.

   Mitigation: G01–G03 are the first thing to run.
2. **Tone of the echo path is not validated against a real EP-3.** The dry path is fitted to written descriptions, not to measurements. The echo path's HF loss, saturation and de-emphasis are approximate or conflicting. Mitigation: D6.
3. **Component values from replica traces** (output mixer, input filter), not from a clean schematic. Mitigation: obtain the Maestro manual scan.
4. **CPU in Live unmeasured.** The C proxy gives about 2.1–2.4 % of one core at 48 kHz, including timer overhead; Max's code generator and Live's overhead differ.
5. **Untested features, outside Max:**
   - DRIVE;
   - the feedback and echo filters;
   - the tape-noise level;
   - Hold Feedback above 1;
   - click-free behaviour under LFO modulation.

   This code is the H&H code, which was tested there, but it hasn't been re-tested on the EP-3 engine. It's covered by L05 in Live.
6. **The authentic defaults may surprise users.** The 112.5 s loop makes SOS slow to come round, and Echo Volume lowers the dry signal. See D3 and D4.

---

## 6. Proposed roadmap

| Step | Content | Gate |
|---|---|---|
| 1 | Max/Live bring-up: G01–G03, L01–L10; fix any compile issues | Your Max/Live session |
| 2 | Data: clean schematic (resolves D2, the mixer, coupling caps); a unit or measurements if possible | D6 |
| 3 | Fit the echo path (HF loss, saturation, de-emphasis) and refit the dry path to measurements | Step 2 |
| 4 | Fill the test gaps in §5.5; add listening comparisons | — |
| 5 | Release candidate: freeze, checksums, release notes, immutable reference (as for H&H v0.2.1) | D8 |
| Later | Phase-1 master stages shared with H&H (tube, EQ, limiter); RE-201 | — |

---

## 7. How to check this yourself

See `audit/REPRODUCE.md`. Three commands rebuild the device and rerun every test. The rebuilt device is byte-identical to the shipped one, and test numbers are identical across runs, apart from the CPU timing.
