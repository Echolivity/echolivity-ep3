# Echolivity EP-3 (v0.1.3-dev)

A Max for Live tape echo modelled on the **Maestro Echoplex EP-3** (solid-state, 1970–1991). It's part of the Echolivity Classic Echo Collection and kept separate from the H&H project.

**Status:** development build v0.1.3-dev, ready for owner testing (ACCEPT WITH LIMITATIONS; host validation BLOCKED here). Start with `reports_v0.1.3/EP3_OWNER_TESTING_GUIDE.md`; decision and evidence in `reports_v0.1.3/EP3_RELEASE_READINESS.md`.

What's different from the H&H device: the **record head** moves (pitch changes are written to tape), a tape loop (8 s default, up to the original's ~2 minutes), **Sound-on-Sound**, the **PLAYBACK** and **ECHO** footswitches, the always-on FET preamp with its pre-emphasis, the original's passive output mixer (Echo Volume is a blend pot, as on the unit) and a cable-load control for its high-impedance output. Mono, like the original.

| Path | What |
|---|---|
| `devices/Echolivity_EP3_v0.1.3-dev.amxd / .maxpat`, `…_Return.amxd / .maxpat` | The device (55 parameters, all mappable except UI Theme and Advanced View) |
| `dsp/ep3_core.genexpr` | The engine (single source of truth) |
| `docs/EP3_MODELING_NOTES.md` | Every value with its source or "APPROX" |
| `docs/SOURCES.md`, `docs/PARAMETERS.md`, `docs/TEST_PLAN_Max_Live.md` | Sources, parameter list, Max/Live tests |
| `tests/test_ep3.py` → `tests/EP3_TEST_REPORT.md` | Behaviour tests on the GenExpr source (C translation, cross-checked against a Python execution) |
| `tests/test_ui_theme.py`, `tests/test_derived.py` | Theme switch and ADVANCED view; arithmetic behind the notes |
| `tests/test_remediation.py` → `tests/REMEDIATION_TEST_REPORT.md` | F1–F8 regression, fixed build vs the frozen v0.1.0-dev baseline, 44.1/48/96 kHz |
| `validation/`, `remediation/` | Practical validation (v0.1.0-dev), remediation, team review, host session guide |
| `reports_v0.1.3/` | v0.1.3-dev reports: release decision, host validation, dub workflow, HOLD, evidence, CPU/stability, regression, known issues, owner guide |
| `baseline/` | Frozen v0.1.0-dev engine and v0.1.2-dev device, used by the regression suites |
| `tests/golden/` | Max 9 host harness, reference renders, comparison tools |
| `tests/dub_scenarios.py`, `listening/` | Dub-production scenarios and their audio |

Build: `python3 build/build_device.py && python3 build/make_param_table.py`. Tests need gcc, numpy and scipy.
