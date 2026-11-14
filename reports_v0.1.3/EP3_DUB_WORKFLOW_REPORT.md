# EP-3 v0.1.3-dev — Dub performance workflow report (Workstreams B and F)

Status words:
- **PASS:** directly tested and passed.
- **FAIL:** tested and failed.
- **BLOCKED:** couldn't be tested here (no Max 9 / Live 12).
- **NOT TESTED:** no verification attempted.
- **INFERRED:** concluded from code or indirect evidence.

"Engine" means the device's GenExpr code run as C, not Max or Live. **No human listening session took place**, so every listening assessment is **PENDING**.

## B1 — Controller bank (first eight)

**Implementation (`build/build_device.py`)**
- A named parameter bank, **"Dub"**, in the patcher's `parameterbanks`, in the required order: **Echo Sustain, Echo Volume, Echo Delay, Repeat LP, Repeat HP, HOLD Latch, DRIVE Latch, STOP Latch.**
- The same eight are also first in the parameter registry and the box list. That's the order Live falls back to if it ignores the bank.
- The latch versions of HOLD / DRIVE / STOP were chosen for the bank because an encoder or bank button needs a toggle. The momentary versions ("HOLD Momentary" etc.) are still there for MIDI pads.
- **No parameter was renamed,** so existing automation, mappings and presets keep working.

| Check | Result | Status |
|---|---|---|
| Bank exists, eight names in order (Insert and Return) — W04i/W04r | as required | PASS (structure) |
| All eight Automated and Stored | yes | PASS (structure) |
| Names unique, long and short, case-insensitive — W05 | 55/55 unique | PASS |
| All eight on the main panel, none hidden by ADVANCED — W05 | 8/8 | PASS (structure) |
| Everything except order and bank is identical to v0.1.2-dev: boxes, cords, defaults, engine code — W02 | identical | PASS |
| Live shows the bank on Push / controllers in this order — L18 | — | **BLOCKED** |
| MIDI mapping and automation of each — L19 | — | **BLOCKED** |
| Reordered boxes don't change the panel's layering | panels are background-layer | INFERRED; visible in L15/L18 |

Two caveats:
- The `parameterbanks` format follows Max's patcher format as understood here. Whether Live reads it is unverified.
- **No controller compatibility is claimed.**

## B2 — Insert and Return

**Implementation:** a second device, `devices/Echolivity_EP3_v0.1.3-dev_Return.amxd`, built from the same source with `EP3_VARIANT=return`.
- It differs only in the Echo Volume default (1.0) and the panel label RETURN (W03).
- Parameter names are identical, so presets and mappings move between the two.
- **The Insert device and its defaults are unchanged** (Echo Volume 0.5, W02), so the existing default preset isn't silently changed.

**Why a variant device and not a Live preset (.adv):**
- A Live preset file can only be created and checked in Live.
- A variant device is fully verifiable here and gives the same result on load.
- The owner can also save a Live preset ("EP-3 Return") from the Insert device in Live. The owner guide explains how.

| Check | Measured (engine) | Status |
|---|---|---|
| Return (Echo Volume 1) passes no dry — W06 | dry window peak −65.7 dB re input (tape noise on) | PASS (engine) |
| Insert blend unchanged — W06 | Echo Volume 0.5: −0.6 dB; 0: −1.4 dB (as in v0.1.2) | PASS (engine) |
| On a return, the dry stays at its own level — W07 | Return variant +0.00 dB; Insert default would add +5.72 dB (doubled dry) | PASS (engine) |
| Loads on an Ableton Return track, shows 1.00, no duplicate dry — L20 | — | **BLOCKED** |
| v0.1.2 presets load into both variants — L21 | — | **BLOCKED** |

**Stereo (G02):** the engine sums L+R to mono and sends the same signal to both outputs, like the original (INFERRED from code, line 387).
- **On a stereo track as an insert, the dry signal becomes mono too.** On a return, the dry track stays stereo. That's another reason to prefer Return for stereo mixes (K-06).

## Workstream F — M01–M08

| ID | Setup | Action | Expected | Actual (engine) | Listening | Status |
|---|---|---|---|---|---|---|
| M01 | Insert, Echo Volume 0.5, Sustain 0.55, riddim | Echo Delay moved by hand (0.3 s) and thrown (30 ms) | Pitch bends on repeats, no click, steady level | Hand move: +0.1 dB energy above 8 kHz vs the unmoved render (none); throw: +4.4 dB (pitch smear); level change +0.0 / +0.8 dB; peak 0.71 (D10) | PENDING | Engine PASS · Host BLOCKED |
| M02 | Return, Sustain ride 0.6 → 0.95 → 0.45 | Feedback throw | Controlled oscillation, recovery, no clip | 1/8 dotted: plateau −24.0 dBFS RMS after 0.8 s, peak 0.21, 30 dB down 3.95 s after pulling back. 114 ms: −18.2 dBFS, 0.65 s (D2) | PENDING | Engine PASS · Host BLOCKED |
| M03 | Freeze half a bar / a phrase, 4–8 bars, release | HOLD | Holds, releases cleanly | BRIGHT full band −6 dB by bar 2, then steady; melodica BRIGHT −0.4 dB; **DARK melodica dies (−24 dB by bar 2)**; no pumping (≤ 0.17 dB); no release click | PENDING | Engine: PASS with limitation K-03 · Host BLOCKED |
| M04 | Sustain 0.75; sweep Repeat LP 20 k → 700 Hz, Repeat HP up; resonance 0 / 0.6 / 1 | Filter sweep | Smooth, bounded | Peak 0.17 / 0.23 / 0.23, no NaN (D4) | PENDING | Engine PASS · Host BLOCKED |
| M05 | One snare | DRIVE pad | Hotter, saturated repeat, under the ceiling | +13.1 dB on that repeat, peak 0.27 (D7). Centroid unchanged (2697 vs 2690 Hz), so it reads mainly as a level throw with soft saturation, not a bright distortion | PENDING | Engine PASS · Host BLOCKED |
| M06 | Insert, Stop Time 1.2 s | STOP for 2.5 s, release | Wind down / up, no click, recovery | Energy above 8 kHz at stop / restart identical to no-stop (−65.9 / −65.5 dB re music); echo −4.0 dB 1 s and −3.2 dB 3 s after restart (repeats lost while stopped); restart chirp by design (F7) (D6) | PENDING | Engine PASS · Host BLOCKED |
| M07 | Return variant on an Ableton return | Send chops | Fully wet, no dry duplicated | Engine: dry −65.7 dB; summed mix dry +0.00 dB (W06, W07) | — | Engine PASS · Host BLOCKED |
| M08 | Push or mapped controller, ADVANCED closed | Perform M01–M06 with the eight bank controls | All common moves without the mouse | Bank covers Sustain, level, delay, both loop filters, HOLD, DRIVE, STOP. Not covered: ECHO TONE (needed for the K-03 workaround) and Repeat Resonance; both are on the main panel and MIDI-mappable | PENDING | Structure PASS · Host BLOCKED |

**M08 observation (operational):** the brief fixes the bank to these eight. Because of K-03, the ninth control a dub engineer will want is **ECHO TONE**. Recommendation: keep the bank as specified, and map ECHO TONE to a spare pad.
