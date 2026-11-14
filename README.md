# Echolivity EP-3 (research phase)

A Max for Live tape-echo device modelled on the **Maestro Echoplex EP-3** (solid-state, 1970–1991). It's part of the Echolivity Classic Echo Collection, and kept separate from the H&H Echo Unit project.

**Status:** research only. There's no DSP and no device yet, and nothing has been run in Max or Live.

| File | What |
|---|---|
| `docs/EP3_MODELING_NOTES.md` | Facts, each with a status (verified / sourced / measured by others / conflict / unknown), open questions, and the proposed device |
| `docs/SOURCES.md` | Every source, what it supports, and how reliable it is |
| `reference/ep3_derived.py` | Values computed from sourced component values (filter corners, head travel, capstan size) |
| `tests/test_derived.py` | Checks that arithmetic (5/5); report in `tests/DERIVED_REPORT.md` |

Run: `python3 tests/test_derived.py`

Same rules as the H&H project: no invented component values, approximations marked as such, and no test called passed unless it was run.
