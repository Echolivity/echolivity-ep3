# EP-3 v0.1.3-dev — CPU and runtime stability (Workstream G)

## Environment and method

- Linux x86-64, gcc -O2, single thread. The engine is `dsp/ep3_core.genexpr` translated to C (`tests/genexpr_sim`, bit-exact against the Python transpiler, test X01).
- Script: `tests/stability_run.py` → `tests/stability_results.json`.
- **This is an engine proxy.** It isn't Max's gen~ code generation, Live's audio thread, or Live's buffer scheme, and it has no UI cost.
- **Every host item is BLOCKED:** Live CPU, dropouts, transport, bypass, save/reopen (L08, L17, L22–L24).

## CPU proxy (median of 3, 20 s renders)

| Rate | Idle (silence) | Load (riddim, Sustain 0.9 oscillation, HOLD, DRIVE) |
|---|---|---|
| 44.1 kHz | 1.92 % of one core | 1.98 % |
| 48 kHz | 2.04 % | 2.16 % |
| 96 kHz | 3.72 % | 4.18 % |

- **Status:** engine proxy PASS (cost is low and nearly flat with load). Live CPU **BLOCKED**.
- **Note:** the 112.5 s tape buffer is allocated at any loop length (≈ 21.6 MB per instance as 32-bit, 43 MB as 64-bit). Live memory: BLOCKED (G02).

## 30-minute stability renders (48 kHz)

Two 30-minute riddim renders:
- one with dense, seeded automation every few seconds (Echo Delay throws, Sustain rides into oscillation, Echo Volume, Repeat LP/HP, ECHO TONE, VOICE, HOLD, DRIVE, STOP);
- a control render without automation.

| Check | Automated | Control | Status |
|---|---|---|---|
| NaN / Inf | none | none | PASS |
| Peak | 0.9661 = output ceiling (protection engaged at least once) | 0.7233 | PASS: never above the ceiling |
| Runaway | max 1-s RMS −6.9 dBFS, median −13.9; 0 s above −6 dBFS RMS | −12.8 / −13.8 | PASS: bounded |
| Automation discontinuities: 10 ms windows whose energy above 10 kHz jumps > 20 dB over the surrounding second | 146 windows (worst 27.9 dB) | 4 windows (21.5 dB) | see below |

### The 146 HF events

**Attribution** (by the nearest automation event within 2.5 s):

| Nearest event | Count |
|---|---|
| no discrete event; continuous ramps (slider, Sustain) only | 45 |
| DRIVE off | 25 |
| ECHO TONE switch | 25 |
| VOICE switch | 17 |
| HOLD on | 11 |
| HOLD off | 9 |
| STOP on | 8 |
| STOP off | 3 |
| DRIVE on | 3 |

**Size:** the HF content of these events is **−39.8 dB re the programme RMS at worst, median −54.1 dB**. The metric is a relative jump in the HF band; it isn't a click detector. In isolation the same switches measure −67 to −103 dB (R08–R11), and STOP and Echo Delay moves add nothing measurable on music (D6, D10). Most of these events are therefore programme changes: DRIVE and ECHO TONE change the brightness of the repeats, and HOLD changes the loop content.

**Status:** INFERRED as not defects. Whether the worst (−40 dB) are audible in a quiet passage is **PENDING listening** (owner guide, M01/M04/M05 and L22).

## Not covered here (BLOCKED in this environment)

- Transport stop/start, device bypass, save/reopen state, Live CPU meter, audio dropouts and crashes (L08, L17, L22, L23, L24).
- Parameter automation as Live sends it (Live's update rate). The engine renders above use per-sample parameter curves, which the device smooths with psmooth/fsmooth.
