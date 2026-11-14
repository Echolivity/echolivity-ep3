# Reproducing the evidence

Requirements: Python 3 with numpy and scipy, and gcc (the tests compile the GenExpr source to C). The versions used are in `audit/evidence/environment.txt`. Max and Live are not needed for any of these steps, and none of these steps tests Max or Live.

```sh
cd echolivity_ep3
python3 build/build_device.py        # -> devices/Echolivity_EP3_v0.1.0-dev.{maxpat,amxd}
python3 build/make_param_table.py    # -> docs/PARAMETERS.md
python3 tests/test_derived.py        # 7 checks  -> tests/DERIVED_REPORT.md
python3 tests/test_ep3.py            # 19 tests  -> tests/EP3_TEST_REPORT.md   (~2–4 min)
python3 tests/test_ui_theme.py       # 4 tests   -> tests/UI_THEME_REPORT.md
sha256sum -c audit/evidence/SHA256SUMS.txt   # optional: compare with the audited files
```

Expected results:
- The rebuilt `.amxd` and `.maxpat` match the SHA-256 values in `audit/evidence/SHA256SUMS.txt`.
- Every test number matches `audit/evidence/*.log`, except C01's CPU timing, which depends on the machine.

How the tests run the shipped code: `tests/genexpr_sim/ep3sim.py` translates `dsp/ep3_core.genexpr` to C with `gx_cgen.py`, compiles it into a cached temporary folder, and runs it. X01 runs the same file through `gx_transpile.py` in Python and requires bit-exact agreement. The gen~ semantic assumptions both rely on (A1–A5) are listed at the top of `gx_transpile.py`; Max-side confirmation is G01–G03.

Max / Live: follow `docs/TEST_PLAN_Max_Live.md` (G01–G03, L01–L10) and record results with screenshots or recordings.
