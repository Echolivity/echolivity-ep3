# EP-3 v0.1.3-dev — Host validation report (Workstream A)

## Environment

- Linux x86-64 cloud workspace, Python 3, gcc.
- **Max 9: not available. Ableton Live 12: not available.** Neither can be installed here (proprietary, needs a GUI and audio hardware).

Per the brief, no static analysis, simulation or code inspection is reported as host validation. Every gate below is **BLOCKED**.

| Gate | Scope | Status | Host test that closes it | Prepared support (not a substitute) |
|---|---|---|---|---|
| G01 | Device loading: opens without errors, objects resolve, no missing dependencies | **BLOCKED** | Harness G01; L01 | Device uses only built-in objects (plugin~, gen~, live.*, thispatcher, etc.); no abstractions or externals (INFERRED from the patcher). gen~ name-collision scan clean (v0.1.2) |
| G02 | Audio passes, no silence / clipping / routing errors, stereo | **BLOCKED** | L01, L09, L10, L20 | Engine is mono by design: L+R summed, both outputs equal (INFERRED, line 387). 2 in, 2 out in the patcher |
| G03 | Parameters, automation, persistence, presets | **BLOCKED** | L05, L16, L19, L21, L23 | 55 parameters, unique names (W05); Insert identical to v0.1.2 apart from bank/order (W02) |
| G04 | Interface, ADVANCED view, UI reflects DSP | **BLOCKED** | L07, L15, L18 | UI structure tests 5/5 (TH01–TH05) |
| G05 | Long playback, transport, bypass, repeated changes, save/reopen | **BLOCKED** | L17, L22, L23 | Engine 30-min automated render clean (`EP3_CPU_RUNTIME_STABILITY.md`) |
| B1-host | Controller bank in Live / Push | **BLOCKED** | L18, L19 | Structure PASS (W04) |
| B2-host | Return variant on an Ableton return | **BLOCKED** | L20 | Engine PASS (W06, W07) |

## Ready-to-run kit

- **Max 9 only (no Live):** `tests/golden/EP3_host_harness.maxpat`
  - G01: compile.
  - G03a–e: 5 sample-exact references, pass < −80 dB.
  - G04a–d: 4 behaviour checks.
  - The harness gen~ code equals the shipped device's engine (engine unchanged since v0.1.2-dev).
  - Its tools were re-run against fresh C renders: references reproduced bit-identically (see `EP3_REGRESSION_REPORT.md`).
- **Live 12:** `docs/TEST_PLAN_Max_Live.md`, L01–L24 and M01–M08; procedure in `EP3_OWNER_TESTING_GUIDE.md`.

## Conclusion

Host compatibility is **unproven**. No PASS is claimed for any host gate.
