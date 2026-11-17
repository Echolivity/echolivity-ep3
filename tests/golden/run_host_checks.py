"""
EP-3 — one-step check of the Max 9 harness renders (owner testing, Part 1).

Run after pressing every RUN button in tests/golden/EP3_host_harness.maxpat:
    Windows: double-click RUN_HOST_CHECKS.bat in the project folder
    any OS : python tests/golden/run_host_checks.py

For each scenario it looks for tests/golden/out_<name>_max.wav and runs
compare.py (GOLD1-5, sample-exact, PASS < -80 dB) or check_behaviour.py (BEH1-4).
A missing render is reported as NOT RUN, never as PASS.
The report is printed and saved to remediation/host_evidence/host_checks_<date-time>.md
"""
import os, sys, subprocess, datetime, platform

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, "..", ".."))
GOLD = ["GOLD1_bright_feedback", "GOLD2_dark_feedback", "GOLD3_sos_loop2s",
        "GOLD4_oscillation_short", "GOLD5_voice_late_cable0"]
BEH = ["BEH1_hold_bright", "BEH2_hold_dark", "BEH3_echo_tone_switch", "BEH4_loop_change"]


def need_libs():
    try:
        import numpy, scipy  # noqa: F401
        return None
    except ImportError:
        return ("numpy / scipy missing. Install them once with:\n"
                f'    "{sys.executable}" -m pip install numpy scipy\n'
                "then run this again.")


def run(script, args):
    p = subprocess.run([sys.executable, os.path.join(HERE, script)] + args,
                       capture_output=True, text=True)
    out = (p.stdout + p.stderr).strip()
    if p.returncode == 0 and "PASS" in out:
        return "PASS", out
    if "FAIL" in out:
        return "FAIL", out
    return "ERROR", out


def main():
    msg = need_libs()
    if msg:
        print(msg)
        return 2
    rows = []
    for n in GOLD + BEH:
        cands = [os.path.join(HERE, f"out_{n}_max.wav"), os.path.join(HERE, "fallback", f"out_{n}_max.wav")]
        found = [c for c in cands if os.path.isfile(c)]
        out = max(found, key=os.path.getmtime) if found else cands[0]   # newest render wins (main or fallback harness)
        if not found:
            rows.append((n, "NOT RUN", f"no out_{n}_max.wav: press RUN {n.split('_')[0]} in the harness"))
            continue
        if n in GOLD:
            st, txt = run("compare.py", [os.path.join(HERE, f"expect_{n}.wav"), out])
        else:
            st, txt = run("check_behaviour.py", [n, out])
        src = "fallback harness: " if os.sep + "fallback" + os.sep in out else ""
        rows.append((n, st, src + " ".join(txt.split())[:300]))
    counts = {s: sum(1 for r in rows if r[1] == s) for s in ("PASS", "FAIL", "ERROR", "NOT RUN")}
    stamp = datetime.datetime.now().strftime("%Y-%m-%d_%H%M")
    lines = [f"# EP-3 host checks — {stamp}", "",
             f"Machine: {platform.platform()} · Python {platform.python_version()}",
             "Renders: tests/golden/out_*_max.wav from Max 9 (EP3_host_harness.maxpat)", "",
             f"**PASS {counts['PASS']} · FAIL {counts['FAIL']} · ERROR {counts['ERROR']} · NOT RUN {counts['NOT RUN']}** (of {len(rows)})",
             "", "| Scenario | Result | Detail |", "|---|---|---|"]
    lines += [f"| {n} | {s} | {d.replace('|', '/')} |" for n, s, d in rows]
    lines += ["", "G01 (compile) is not checked here: also send a screenshot of the Max Console."]
    report = "\n".join(lines) + "\n"
    print(report)
    ev = os.path.join(ROOT, "remediation", "host_evidence")
    os.makedirs(ev, exist_ok=True)
    path = os.path.join(ev, f"host_checks_{stamp}.md")
    with open(path, "w", encoding="utf-8") as f:
        f.write(report)
    print(f"Saved: {path}")
    return 0 if counts["PASS"] == len(rows) else 1


if __name__ == "__main__":
    sys.exit(main())
