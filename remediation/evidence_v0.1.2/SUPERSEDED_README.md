# Superseded evidence in this folder

`SUPERSEDED_dub_scenarios_first_D2_run.log` is the log of the first v0.1.2-dev dub run. Its D2 lines
(`D2.oscillation_level_dbfs_rms = -50.5`, `D2.oscillation_level_spread_db = 42.6`, recovery `None`) come from
an obsolete scenario that cranked Sustain after the repeats had died, so the loop built from tape hiss. That
scenario was replaced before v0.1.2-dev was delivered, and the replacement result was already in
`tests/dub_scenarios_results.json` and `tests/DUB_SCENARIO_REPORT.md`; the log was simply not regenerated.

Kept for history only. **Not active evidence.** Current, authoritative run: `remediation/evidence_v0.1.3/dub_scenarios.log`
(D2: −24.0 dBFS RMS, spread 10.6 dB at 1/8 dotted; −18.2 dBFS, 0.4 dB at 114 ms). All other D1–D9 values
in the old log are identical to the v0.1.3 run. Reconciliation: `reports_v0.1.3/EP3_EVIDENCE_RECONCILIATION.md`.
