# EP-3 v0.1.3-dev — Regression report (Workstream D)

## How it was run (reproducibility)

1. The project tree was zipped and the zip was extracted into a fresh directory (`/tmp/verify`).
2. Every suite ran from there with no `EP3_*` environment overrides.
3. During the run, the old local baseline directory outside the project was **renamed away**. A hidden dependency on it would have failed the run. None did.
4. The frozen v0.1.0-dev engine is now inside the package (`baseline/v0.1.0-dev/ep3_core.genexpr`, read-only, sha256 2a46b3b2…a50b). The remediation suite checks that hash and reports BLOCKED, not PASS, if the baseline is missing or altered.

- **Runner:** the commands are in `remediation/evidence_v0.1.3/archive_run/environment.txt` and `summary.txt`.
- **Engine executed:** GenExpr source as C, bit-exact against the Python transpiler (X01). **Not Max 9 / Live 12.**

The historical 14/14 wasn't copied: R01–R14 were re-executed in this run, against the shipped baseline.

## Results

| Suite | Tests | Result | Time | Log |
|---|---|---|---|---|
| Arithmetic / derived values (`test_derived.py`) | D01–D07 | **7/7 PASS** | <1 s | `archive_run/test_derived.log` |
| Engine behaviour (`test_ep3.py`) | X01, E01–E17, C01 | **19/19 PASS** | 6 s | `archive_run/test_ep3.log` |
| UI structure (`test_ui_theme.py`) | TH01–TH05 | **5/5 PASS** | <1 s | `archive_run/test_ui_theme.log` |
| Workflow: bank, Insert/Return (`test_workflow.py`) | W01–W07 | **8/8 PASS** (W04 run for both variants) | <1 s | `archive_run/test_workflow.log` |
| Remediation vs frozen v0.1.0-dev baseline, 44.1/48/96 kHz (`test_remediation.py`) | R01–R14 | **14/14 PASS** | 170 s | `archive_run/test_remediation.log`, `archive_run/REMEDIATION_TEST_REPORT.md` |
| Host-kit references regenerated (`tests/golden/make_golden_ep3.py`) | 5 tier-A wav + 4 tier-B json | **9/9 byte-identical** to the shipped files; 4/4 tier-B self-checks PASS | — | `archive_run/golden.log` |
| Dub scenarios D1–D10 | measurements | D1–D9 reproduce v0.1.2-dev values exactly; no NaN | — | `remediation/evidence_v0.1.3/dub_scenarios.log` |

Total: **53/53 PASS**, 0 FAIL. Reference reproduction 9/9.

## Not covered

| Item | Status |
|---|---|
| Same tests executed by gen~ in Max 9 (harness G01, G03, G04) | **BLOCKED** |
| Live 12 L01–L24, M01–M08 | **BLOCKED** |

## Key regression guarantees

- **R06:** outside HOLD, with default voicing, output is bit-identical to v0.1.0-dev.
- **W02:** the Insert device equals v0.1.2-dev except for version text, parameter order and the bank. The engine code is identical.
- **Golden references:** byte-identical, so the host kit still matches the shipped engine.
