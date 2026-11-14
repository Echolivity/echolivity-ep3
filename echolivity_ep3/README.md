# Echolivity EP-3 (v0.1.1-dev)

A Max for Live tape echo modelled on the **Maestro Echoplex EP-3** (solid-state, 1970–1991). It's part of the Echolivity Classic Echo Collection and kept separate from the H&H project.

**Status:** development build after the practical-validation remediation (findings F1–F8, see `remediation/`). Tested outside Max: 19/19 behaviour, 14/14 remediation regression, 5/5 UI structure, 7/7 arithmetic. It has **not** been opened in Max 9 or Live 12; see `docs/TEST_PLAN_Max_Live.md` (all host gates UNVERIFIED).

What's different from the H&H device: the **record head** moves (pitch changes are written to tape), a tape loop (8 s default, up to the original's ~2 minutes), **Sound-on-Sound**, the **PLAYBACK** and **ECHO** footswitches, the always-on FET preamp with its pre-emphasis, the original's passive output mixer (Echo Volume is a blend pot, as on the unit) and a cable-load control for its high-impedance output. Mono, like the original.

| Path | What |
|---|---|
| `devices/Echolivity_EP3_v0.1.1-dev.amxd / .maxpat` | The device (55 parameters, all mappable except UI Theme and Advanced View) |
| `dsp/ep3_core.genexpr` | The engine (single source of truth) |
| `docs/EP3_MODELING_NOTES.md` | Every value with its source or "APPROX" |
| `docs/SOURCES.md`, `docs/PARAMETERS.md`, `docs/TEST_PLAN_Max_Live.md` | Sources, parameter list, Max/Live tests |
| `tests/test_ep3.py` → `tests/EP3_TEST_REPORT.md` | Behaviour tests on the GenExpr source (C translation, cross-checked against a Python execution) |
| `tests/test_ui_theme.py`, `tests/test_derived.py` | Theme switch and ADVANCED view; arithmetic behind the notes |
| `tests/test_remediation.py` → `tests/REMEDIATION_TEST_REPORT.md` | F1–F8 regression, fixed build vs the frozen v0.1.0-dev baseline, 44.1/48/96 kHz |
| `validation/`, `remediation/` | Practical validation (v0.1.0-dev) and its remediation reports |

Build: `python3 build/build_device.py && python3 build/make_param_table.py`. Tests need gcc, numpy and scipy.
