"""Checks the arithmetic behind docs/EP3_MODELING_NOTES.md (Python only; no DSP yet)."""
import os, sys
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "reference"))
import ep3_derived as d

s = d.summary()
results = []


def check(tid, desc, ok, detail):
    results.append((tid, desc, "PASS" if ok else "FAIL", detail))


f = s["pre_emphasis_fc_hz_022uF"]
check("D01", "Manual's stated pre-emphasis corner (2.2 kHz) matches 3.3k with 0.022 uF, not 0.22 uF",
      abs(f - 2200) / 2200 < 0.02 and s["pre_emphasis_fc_hz_022uF_if_0.22"] < 300,
      f"0.022 uF → {f:.0f} Hz; 0.22 uF → {s['pre_emphasis_fc_hz_022uF_if_0.22']:.0f} Hz")
g = s["input_gain_db_from_6.7x"]
check("D02", "Manual's input gain figures agree (6.7x = 16.5 dB)", abs(g - 16.5) < 0.1, f"6.7x = {g:.2f} dB")
a, b = s["de_emphasis_fc_hz_033uF"], s["de_emphasis_fc_hz_003uF"]
check("D03", "De-emphasis corner for both candidate capacitors (conflict recorded, not resolved)",
      200 < a < 300 and 2800 < b < 3100, f"0.033 uF → {a:.0f} Hz; 0.003 uF → {b:.0f} Hz")
lo, hi = s["head_travel_mm_dafx"]
check("D04", "Head travel for 60–600 ms at 8 ips fits a hand-sized slider",
      10 < lo < 15 and 115 < hi < 130, f"{lo:.1f}–{hi:.1f} mm (80–800 ms: "
      f"{s['head_travel_mm_guitarworld'][0]:.1f}–{s['head_travel_mm_guitarworld'][1]:.1f} mm)")
cd = s["capstan_diameter_mm"]
check("D05", "26 Hz capstan at 8 ips implies a plausible motor-shaft capstan", 1.5 < cd < 4.0,
      f"diameter {cd:.2f} mm")

out = ["# EP-3 derived values — arithmetic checks", "", "Python only. These check calculations from sourced values; nothing here is a DSP or Max test.", "",
       "| ID | Check | Result | Detail |", "|---|---|---|---|"]
out += [f"| {a} | {b} | {c} | {dd} |" for a, b, c, dd in results]
open(os.path.join(os.path.dirname(os.path.abspath(__file__)), "DERIVED_REPORT.md"), "w").write("\n".join(out) + "\n")
for r in results:
    print(*r)
print(f"{sum(r[2] == 'PASS' for r in results)}/{len(results)} passed")
sys.exit(0 if all(r[2] == "PASS" for r in results) else 1)
