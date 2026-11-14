# EP-3 v0.1.3-dev — Implementation report

## What changed

| Area | Change | Files | Affects sound? |
|---|---|---|---|
| B1 controller bank | Named bank "Dub": Echo Sustain, Echo Volume, Echo Delay, Repeat LP, Repeat HP, HOLD Latch, DRIVE Latch, STOP Latch. The same eight are moved to the front of the parameter registry and the box list. No parameter renamed | `build/build_device.py` | No. Changes what Push / controllers show first (host-unverified) |
| B2 Return | New variant device: Echo Volume default 1.0 (fully wet) and RETURN on the panel; otherwise identical. Insert device and its defaults unchanged | `build/build_device.py`, `build/layout_ep3.py`, `devices/Echolivity_EP3_v0.1.3-dev_Return.{amxd,maxpat}` | Only when the Return variant is chosen |
| Device version | v0.1.2-dev → v0.1.3-dev (header text, description, file names); v0.1.2-dev device frozen for comparison | `devices/Echolivity_EP3_v0.1.3-dev.{amxd,maxpat}`, `baseline/v0.1.2-dev/` | No |
| D baseline | Frozen v0.1.0-dev engine shipped read-only in the package. The remediation suite uses it by default and stops with BLOCKED if it's missing or its SHA-256 differs | `baseline/v0.1.0-dev/ep3_core.genexpr`, `tests/test_remediation.py` | No |
| Tests | New workflow suite W01–W07 (bank, Insert/Return, names, dry leakage, return summing) | `tests/test_workflow.py` | — |
| Studies | HOLD study (C), CPU / 30-min stability (G), dub scenarios: D6 click/recovery metrics, new D10 delay change | `tests/hold_study.py`, `tests/stability_run.py`, `tests/dub_scenarios.py` | — |
| E evidence | Obsolete D2 log labelled SUPERSEDED; single fresh run | `remediation/evidence_v0.1.2/SUPERSEDED_*`, `remediation/evidence_v0.1.3/` | — |
| Docs | Test plan L18–L24 and new M01–M08; parameter table regenerated; v0.1.3 reports | `docs/`, `reports_v0.1.3/` | — |

## What did not change

- **The DSP engine.** `dsp/ep3_core.genexpr` is byte-identical to v0.1.2-dev (sha256 daa947e8…ecaef1d8; its header still reads v0.1.2-dev because the engine version didn't change). It's embedded identically in both devices and the harness (W02).
- **The HOLD behaviour.** It was investigated and deliberately left unchanged (see the HOLD assessment).
- **Everything else in the device:** every box, cord, default and parameter definition of the Insert device apart from the order and bank (W02). Existing presets and mappings stay compatible: long names are unchanged.

## Regressions introduced

None detected: all suites PASS from the extracted archive (`EP3_REGRESSION_REPORT.md`). Host regressions can't be checked here (BLOCKED).

## Scope decisions

These were left undone deliberately:
- **No HOLD gain compensation.** The only simple lever (Hold Feedback 1.02) raises tape noise by 20 dB in 60 s.
- **No Live .adv preset.** It can't be created or checked without Live; the variant device does the same job.
- **No ninth bank control (ECHO TONE).** The brief fixes the bank at eight; this is recorded as a recommendation instead.
- **No interface rework.**
