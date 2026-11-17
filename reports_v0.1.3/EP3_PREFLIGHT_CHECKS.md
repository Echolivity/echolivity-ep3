# EP-3 v0.1.3-dev — Pre-flight checks before the first host session (2026-11-18)

These checks run before any Max or Live session, against real reference material. They reduce the chance of a wasted session. **None of them replaces G01–G05**, and none is reported as host validation.

Status words: PASS = directly checked; INFERRED = indirect evidence; FINDING = noted, not changed.

## 1. The .amxd container against real Ableton devices

**Reference:**
- Ableton's public `maxdevtools` repository (github.com/Ableton/maxdevtools), with real devices: `DoneLoading.amxd`, `CPU Reporter.amxd`, `Test.amxd`.
- Ableton's own .amxd parser, `maxdiff/amxd_textconv.py`.

| Check | Result | Status |
|---|---|---|
| Header layout `ampf` + type + `meta` + `ptch` + size + JSON + trailing null | Byte-for-byte the same layout as Ableton's audio-effect devices; type `aaaa` (Audio Effect) | PASS |
| `ptch` size field = bytes that follow | Insert 292 823 = 292 823; Return 292 872 = 292 872 (same rule holds for CPU Reporter) | PASS |
| Ableton's parser reads both devices | Parsed without error: "Audio Effect Device", 55 parameters, project block, all objects | PASS |
| Every object is a known Max object (Ableton's list of 1 171 objects + aliases) | All 37 classes known (`sel` is listed as an alias of `select`; `codebox` is the gen~ code box) | PASS |

**Effect on K-12** (.amxd header reproduced from public descriptions): the risk is much lower. Whether Live loads the file remains **BLOCKED** (L01).

## 2. Push bank format

**Reference:** the bank in Ableton's `Test.amxd` (saved with Max 9.1.4) and Ableton's parser.
- **Ours:** `{"index": 0, "name": "Dub", "parameters": [8 long names]}`.
- **Ableton's:** the same keys, and `parameters` holds parameter long names (with `"-"` for an empty slot). Ableton's parser prints ours as `0: (Dub) encoders: [Echo Sustain … STOP Latch]`.
- **Status:** format PASS; whether Live / Push uses it is BLOCKED (L18).

**FINDING B-1:** Max 9.1 also writes a `buttons` list (8 entries, for Push's button row). Ours has none.
- Ableton's parser treats it as optional; Live's behaviour without it is unknown.
- Not changed before your test. If Push shows no buttons or behaves oddly, this is the first thing to add.
- Possible improvement for a dub workflow: put HOLD / DRIVE / STOP on Push's buttons and keep the encoders for continuous controls.

## 3. Ableton's Max for Live production checklist (`m4l-production-guidelines`)

| Checklist item | Our device | Status |
|---|---|---|
| No prints to the Max Console on load | No `print` objects; no `delay`/`deferlow` initialisation | INFERRED (see L01) |
| Long names unique and meaningful; no `[1]` suffixes | 55 unique, descriptive | PASS |
| Main parameters Automated and Stored, MIDI-mappable | 53 Automated and Stored, 2 Stored Only (UI state) | PASS |
| Modulation mode set for all parameters | 33 continuous: set; 22 switches/menus: not set (no clip modulation for them) | FINDING B-2 (minor) |
| Info text (hover help in Live) for parameters | None | FINDING B-3 (usability) |
| Device width "not too much of the horizontal space" | **1 410 px** (H&H: 1 216 px); ADVANCED hides controls but not width | **FINDING B-4** (performance ergonomics) |
| Live's font; colours following Live's theme | Arial; own EMBER/EL themes | FINDING B-5 (cosmetic, by design) |
| Undo history not flooded | Momentary pads reset by the patch on release (one extra undo step per press); TAP is a stored button | FINDING B-6 (check in L22: Live's Edit menu) |
| Latency | 0 (a delay needs no compensation) | PASS |
| Several instances run well | Each allocates the 112.5 s tape (~22–43 MB) | K-11 |

Findings B-1…B-6 are recorded in the known-issues register. None is changed before your session; each is checked there (L01, L15, L18, L22).

## 4. Engine names against the official Gen operator list

**Reference:** Cycling '74 documentation, "Gen Common Operators" and "gen~ Operators" (Max 8 pages, fetched 2026-11-18): every operator, alias and constant. The GenExpr page uses `i` as a loop variable in its own examples (`for(i=0; i < 10; i += 1)`), and `i` is also the `int` operator's alias. So a plain variable may share an operator's name. The docs say nothing about user functions named like built-ins, or assignments to constants.

**Tool:** `tests/lint/gen_names.py`, which grades each name by how it is used:
- **HIGH:** a user function with a built-in name, or an assignment to a constant.
- **MEDIUM:** a declaration (Param, History, Data, Buffer, Delay) with a built-in name.
- **LOW:** a plain variable with an operator name.

| Engine | HIGH | MEDIUM | LOW |
|---|---|---|---|
| EP-3 shipped (v0.1.3-dev) | **0** | `s` (a History inside `psmooth`) | `f`, `i`, `gtp` |
| EP-3 v0.1.0-dev (before the v0.1.2 rename) | `dcblock` (function) | `s` | `f`, `lt` |
| H&H v0.2.3-dev | **0** | `s` | `f`, `r` |
| H&H v0.2.2-dev (before the rename) | `dcblock` (function) | `s` | `f`, `lt`, `r` |

The v0.1.2 / v0.2.3 renames removed the only HIGH finding. The remaining names are probably fine (supported by the docs' own `i` example), but that is unproven.

### Fallback test patch, ready if Max complains

- `tests/golden/fallback/EP3_host_harness_FALLBACK_NAMES.maxpat`, built from `ep3_core_fallback.genexpr`.
- It is the same engine with `s→st_s`, `f→fq`, `i→ii`, `gtp→g_tp` (0 findings).
- **Proven identical:** all 9 host-test references regenerated byte-identical (`identity_9_references.txt`), and the behaviour suite passes 19/19 on it.
- The H&H project has its own fallback patch.

**Use only if** the main test patch shows a gen~ error naming one of those variables. Its renders are picked up automatically by `RUN_HOST_CHECKS.bat`. If the fallback compiles and the main patch doesn't, the renames go into the next build.
