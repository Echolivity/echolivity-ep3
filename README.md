# Echolivity EP-3 (v0.1.0-dev)

A Max for Live tape echo modelled on the **Maestro Echoplex EP-3** (solid-state, 1970–1991). It's part of the Echolivity Classic Echo Collection and kept separate from the H&H project.

**Status:** first build. The DSP is written and tested outside Max (15/15 behaviour tests, 4/4 theme tests, 5/5 arithmetic checks). It has **not** been opened in Max 9 or Live yet; see `docs/TEST_PLAN_Max_Live.md`.

What's different from the H&H device: the **record head** moves (pitch changes are written to tape), a ~2-minute tape loop, **Sound-on-Sound**, the **PLAYBACK** and **ECHO** footswitches, the always-on FET preamp with its pre-emphasis, the original's passive output mixer (Echo Volume is a blend pot, as on the unit) and a cable-load control for its high-impedance output. Mono, like the original.

| Path | What |
|---|---|
| `devices/Echolivity_EP3_v0.1.0-dev.amxd / .maxpat` | The device (54 parameters, all mappable except UI Theme) |
| `dsp/ep3_core.genexpr` | The engine (single source of truth) |
| `docs/EP3_MODELING_NOTES.md` | Every value with its source or "APPROX" |
| `docs/SOURCES.md`, `docs/PARAMETERS.md`, `docs/TEST_PLAN_Max_Live.md` | Sources, parameter list, Max/Live tests |
| `tests/test_ep3.py` → `tests/EP3_TEST_REPORT.md` | Behaviour tests on the GenExpr source (C translation, cross-checked against a Python execution) |
| `tests/test_ui_theme.py`, `tests/test_derived.py` | Theme switch; arithmetic behind the notes |

Build: `python3 build/build_device.py && python3 build/make_param_table.py`. Tests need gcc, numpy and scipy.
