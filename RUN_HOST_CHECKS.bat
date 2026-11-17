@echo off
rem EP-3: checks the Max 9 harness renders (tests\golden\out_*_max.wav) and writes a PASS/FAIL report.
rem Double-click after pressing every RUN button in tests\golden\EP3_host_harness.maxpat.
cd /d "%~dp0"
set PY=
where py >nul 2>nul && set PY=py -3
if not defined PY where python >nul 2>nul && set PY=python
if not defined PY (
  echo Python 3 was not found. Install it from https://www.python.org/downloads/ ^(tick "Add python.exe to PATH"^),
  echo or send the tests\golden\out_*_max.wav files instead.
  pause
  exit /b 2
)
%PY% -c "import numpy, scipy" 2>nul || (
  echo Installing numpy and scipy ^(one time^)...
  %PY% -m pip install --user numpy scipy
)
%PY% tests\golden\run_host_checks.py
echo.
echo Report saved in remediation\host_evidence\  -- send it back with a Max Console screenshot.
pause
