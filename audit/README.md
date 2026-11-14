# Audit pack — Echolivity EP-3 v0.1.0-dev (2026-11-14)

Scope: the EP-3 project only (the H&H Echo Unit is a separate project and not covered).

Read in this order:
1. `ADVISER_BRIEF.md`: status, architecture, evidence by environment, what's solid / fitted / guessed, **decisions needed (D1–D9)**, risks, roadmap.
2. `CLAIMS_LEDGER.md`: every claim in the docs, engine and UI, with its evidence.
3. `AUDIT_CHANGES.md`: what the pre-audit review found and fixed.
4. `REPRODUCE.md`: rebuild and rerun everything.
5. `evidence/`: logs of the final clean run (fresh copy, empty build cache), environment, integrity checks, SHA-256 of every project file.

Supporting documents in the project: `docs/EP3_MODELING_NOTES.md` (each value with status and source), `docs/SOURCES.md` (S1–S18, each with what it supports and its reliability), `docs/PARAMETERS.md`, `docs/TEST_PLAN_Max_Live.md`, `tests/*_REPORT.md`.

Headline: everything testable outside Max passes (19 + 4 + 7). **Nothing has been run in Max 9 or Live 12**, and no real EP-3 has been measured. Those are the two gates the adviser should weigh first (risks 1–2, decision D6).
