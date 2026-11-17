# Experiment K-03: keep the mid-range when HOLD is used in DARK

**Status: candidate only. Not in any device. The shipped v0.1.3-dev build is unchanged.** It needs your listening decision.

## The problem (K-03)

With ECHO TONE on DARK, the loop's de-emphasis (33 nF) has a 3.4× gain peak in the bass. HOLD sets the loop to unity at that peak, so everything above the bass dies within about two bars. A frozen melodica or vocal line turns into tape hiss.

## The candidate

`ep3_core_k03.genexpr`: while HOLD is engaged, the **loop** uses the BRIGHT (3 nF) de-emphasis. The echo **output** keeps DARK, so what you hear stays dark.
- The change crossfades with HOLD's existing 10 ms smoothing.
- **Outside HOLD it is bit-identical** to the shipped engine. It's a 4-place change; see the diff below.

## Measurements

Engine run as C, same script and material as the HOLD study (`tests/hold_study.py`): 75 BPM synthetic riddim, HOLD for 8 bars starting at **6.4 s**, released at **32 s**.

| Freeze, ECHO TONE DARK | Bar 2 | Bar 4 | Bar 8 | Tone (centroid, bar 8) | Pumping |
|---|---|---|---|---|---|
| Melodica, current | −24.0 dB | −33.3 | −33.6 (hiss only) | 5574 Hz | 0.5 dB |
| Melodica, **candidate** | **−1.1** | **−1.8** | **−3.8** | 1084 Hz | 0.05 dB |
| Full band, current | −4.1 | −7.4 | −9.8 | 305 Hz | 0.13 dB |
| Full band, **candidate** | −7.2 | −11.9 | −12.7 | 500 Hz | 0.17 dB |
| Skank + rim, current | −2.5 | −6.4 | −9.0 | 634 Hz | 0.06 dB |
| Skank + rim, **candidate** | −4.6 | −8.8 | −9.9 | 664 Hz | 0.09 dB |

Levels are relative to held bar 1.

Other measurements:
- **Behaviour test BEH2** (DARK chord freeze): current sinks to −35.4 dB at 30 s; candidate holds at −3.9 dB (spread 0.0 dB).
- **Tape noise during a long DARK HOLD:** −79.7 → −71.9 dBFS, steady (no build-up). At Hold Feedback 1.02 it rises in both versions.
- **BRIGHT:** identical in every case (by design).
- **Release:** no click in any case (−54 to −64 dB). The candidate decays after release a little faster in the full band (3.6 s vs 4.45 s to −30 dB).

**The trade-off in plain words:** the candidate keeps what you froze (melodies, chords, skanks). But a full-mix freeze in DARK becomes a little quieter and less bass-heavy. Today, DARK's freeze collapses into a bass drone, and some engineers may like exactly that.

## Regression (candidate engine, run in a separate copy)

| Suite | Result |
|---|---|
| Derived 7/7, behaviour 19/19, UI 5/5 | PASS |
| Remediation R01–R14 vs v0.1.0-dev, 44.1/48/96 kHz | **14/14 PASS** |
| Workflow | 7/8: W02 fails **as expected** (it checks the engine is unchanged from v0.1.2-dev) |
| Max host-kit references | 8/9 unchanged; BEH2 reference changes (it's the DARK HOLD scenario) |

Logs: `test_remediation.log`, `test_workflow.log`, `regression_summary_candidate.txt`, `hold_study_results_candidate.json`.

## Listen (headphones are fine)

The `listening/` folder holds pairs for the same material: **A = current, B = candidate**, plus `melodica_BRIGHT_reference.wav`. HOLD starts at 6.4 s and is released at 32 s. Levels are not matched, because the level difference is part of the result.

1. `melodica_DARK_A_current` vs `_B_candidate`: does B sound like a freeze of what was played?
2. `fullband_DARK_A_current` vs `_B_candidate`: which freeze is more useful in a dub mix, the bass drone (A) or the fuller but quieter loop (B)?
3. `skank_rim_DARK_A` vs `_B`.

## Your decision

- **Adopt:** goes into v0.1.4-dev with the BEH2 reference regenerated, W02 rebased, all suites re-run and the CHANGELOG updated.
- **Reject:** K-03 stays a documented limitation (use BRIGHT for melodic freezes).
- **Make it switchable:** a stored ADVANCED option "HOLD loop: DARK / BRIGHT". This adds a parameter, so it only goes in if you want it.

## Diff against `dsp/ep3_core.genexpr`

```
fb_amt: the HOLD term divides by pk_hold (peak gain of the loop voicing in use) instead of pk_loop
+ pbl = pbs * (1 - hold_s);  pk_hold = (1 - pbl) * ck_pk3 + pbl * ck_pk33;
+ nz = lp1(noise(), 10000) * ck_ng;   (same noise, computed once, added to both paths)
+ ypl = loop playback signal with pbl instead of pbs (own lg fade, own 30 Hz coupling)
  HOLD level trim (hp_env) and the feedback filters read ypl; the echo output still reads ypb
```
