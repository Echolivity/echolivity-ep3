"""
Builds tests/golden/EP3_host_harness.maxpat: a standalone Max 9 patch for host gates G01–G03 and the
tier-B behaviour checks, without Ableton Live.

- One fresh gen~ per scenario (empty tape, like the reference), loaded with the SAME codebox as the
  device (dsp/ep3_core.genexpr). Opening the patch compiles them: that is G01 (watch the Max console).
- Static parameters are sent on load; wait ~2 s after opening before pressing RUN (engine settles).
- RUN <name>: plays tests/golden/in_<name>.wav into gen~ (both inputs), records out1, writes
  out_<name>_max.wav next to the patch. Tier-B scenarios also fire their timed events.
- Then, from the project folder:
    python3 tests/golden/compare.py tests/golden/expect_GOLDn_... .wav tests/golden/out_GOLDn_..._max.wav
    python3 tests/golden/check_behaviour.py BEHn_... tests/golden/out_BEHn_..._max.wav
Memory: each gen~ allocates the 5.4 M-sample tape (9 instances: ~200–390 MB). Close the patch after use.
Status: generated here, never opened in Max — UNVERIFIED.
usage: python3 build/build_harness_ep3.py
"""
import json, os, sys

ROOT = os.path.abspath(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
sys.path.insert(0, os.path.join(ROOT, "tests", "golden"))
import scenarios as S  # noqa: E402

CODE = open(os.path.join(ROOT, "dsp", "ep3_core.genexpr")).read()
APPV = {"major": 9, "minor": 0, "revision": 0, "architecture": "x64", "modernui": 1}
boxes, lines, n = [], [], [0]


def box(cls, rect, text=None, nin=1, nout=1, otype=None, **kw):
    n[0] += 1
    b = {"id": f"obj-{n[0]}", "maxclass": cls, "numinlets": nin, "numoutlets": nout, "patching_rect": rect}
    if otype is not None:
        b["outlettype"] = otype
    if text is not None:
        b["text"] = text
    b.update(kw)
    boxes.append({"box": b})
    return b["id"]


def obj(text, rect, nin=1, nout=1, otype=None):
    return box("newobj", rect, text, nin, nout, otype if otype is not None else [""] * nout)


def msg(text, rect):
    return box("message", rect, text, 2, 1, [""])


def cmt(text, rect, size=11.0):
    return box("comment", rect, text, 1, 0, fontsize=size)


def line(a, ao, b, bi):
    lines.append({"patchline": {"source": [a, ao], "destination": [b, bi]}})


def gen_patcher():
    gb = [{"box": {"id": "g-code", "maxclass": "codebox", "code": CODE, "fontface": 0, "fontname": "<Monospaced>",
                   "fontsize": 11.0, "numinlets": 2, "numoutlets": 8, "outlettype": [""] * 8,
                   "patching_rect": [20, 60, 900, 700]}},
          {"box": {"id": "g-in1", "maxclass": "newobj", "text": "in 1", "numinlets": 0, "numoutlets": 1,
                   "outlettype": [""], "patching_rect": [20, 20, 30, 22]}},
          {"box": {"id": "g-in2", "maxclass": "newobj", "text": "in 2", "numinlets": 0, "numoutlets": 1,
                   "outlettype": [""], "patching_rect": [880, 20, 30, 22]}}]
    gl = [{"patchline": {"source": ["g-in1", 0], "destination": ["g-code", 0]}},
          {"patchline": {"source": ["g-in2", 0], "destination": ["g-code", 1]}}]
    for k in range(8):
        gb.append({"box": {"id": f"g-out{k+1}", "maxclass": "newobj", "text": f"out {k+1}", "numinlets": 1,
                           "numoutlets": 0, "patching_rect": [20 + 120 * k, 780, 40, 22]}})
        gl.append({"patchline": {"source": ["g-code", k], "destination": [f"g-out{k+1}", 0]}})
    return {"fileversion": 1, "appversion": APPV, "classnamespace": "dsp.gen", "rect": [50, 50, 960, 840],
            "boxes": gb, "lines": gl}


cmt("ECHOLIVITY EP-3 — host harness (G01 compile, G03 sample-exact renders, tier-B behaviour) — Max audio at 48 kHz",
    [20, 10, 980, 22], 13.0)
cmt("1. Opening compiles 9 gen~: the Max console must show NO gen~ errors (G01).  2. Wait 2 s, then press each RUN "
    "and wait for 'writes …' (duration + 0.5 s).  3. Run compare.py / check_behaviour.py on each out_*_max.wav.",
    [20, 34, 1100, 20])
lb = obj("loadbang", [20, 70, 60, 22], 1, 1, ["bang"])
dsp = msg("; dsp start", [20, 100, 80, 22])
line(lb, 0, dsp, 0)
sr = obj("adstatus sr", [120, 100, 80, 22], 2, 2, ["", "int"])
srn = box("number", [120, 130, 70, 22], None, 1, 2, ["", "bang"])
cmt("← sample rate (must be 48000)", [195, 130, 220, 20])
line(lb, 0, sr, 0)
line(sr, 0, srn, 0)

ALL = [(k, v[1], v[2], []) for k, v in S.TIER_A.items()] + [(k, v[1], v[2], v[3]) for k, v in S.TIER_B.items()]
for i, (name, prm, secs, events) in enumerate(ALL):
    col, row = i % 5, i // 5
    x, y = 20 + col * 300, 180 + row * 420
    tier = "A (sample-exact)" if not events else "B (behaviour)"
    cmt(f"{name} — tier {tier}, {secs:g} s", [x, y, 290, 20], 10.5)
    pm = msg(", ".join(f"{k} {v}" for k, v in prm.items()), [x, y + 24, 290, 22])
    line(lb, 0, pm, 0)
    bin_ = obj(f"buffer~ in_{name} in_{name}.wav", [x, y + 52, 230, 22], 1, 2, ["float", "bang"])
    bout = obj(f"buffer~ out_{name} {int(secs * 1000 + 600)} 1", [x, y + 76, 230, 22], 1, 2, ["float", "bang"])
    run = box("textbutton", [x, y + 104, 140, 26], f"RUN {name.split('_')[0]}", 1, 3, ["", "", "int"])
    tr = obj("t b b b", [x, y + 138, 60, 22], 1, 3, ["bang", "bang", "bang"])
    arm = msg("1", [x + 70, y + 166, 30, 22])
    start = msg("start", [x, y + 166, 40, 22])
    play = obj(f"play~ in_{name} 1", [x, y + 196, 120, 22], 1, 2, ["signal", "bang"])
    gen = box("newobj", [x, y + 232, 120, 22], "gen~", 2, 8, ["signal"] * 8, patcher=gen_patcher())
    rec = obj(f"record~ out_{name} 1", [x, y + 270, 130, 22], 3, 1, ["signal"])
    dly = obj(f"delay {int(secs * 1000 + 300)}", [x + 150, y + 166, 80, 22], 2, 1, ["bang"])
    t2 = obj("t b b", [x + 150, y + 196, 40, 22], 1, 2, ["bang", "bang"])
    stop = msg("0", [x + 150, y + 226, 30, 22])
    wr = msg(f"writewave out_{name}_max.wav", [x + 150, y + 300, 250, 22])
    cmt(f"→ writes out_{name}_max.wav", [x, y + 330, 290, 20], 10.0)
    line(pm, 0, gen, 0)
    line(run, 0, tr, 0)
    line(tr, 2, arm, 0)            # right first: arm the recorder
    line(tr, 1, start, 0)          # then start playback in the same scheduler tick
    line(tr, 0, dly, 0)
    line(arm, 0, rec, 0)
    line(start, 0, play, 0)
    line(play, 0, gen, 0)
    line(play, 0, gen, 1)          # mono source into both inputs (the device sums them)
    line(gen, 0, rec, 0)
    line(dly, 0, t2, 0)
    line(t2, 1, stop, 0)
    line(t2, 0, wr, 0)
    line(stop, 0, rec, 0)
    line(wr, 0, bout, 0)
    for j, (t_ev, p, v) in enumerate(events):
        d = obj(f"delay {int(t_ev * 1000)}", [x + 150, y + 104 + 0 * j, 80, 22], 2, 1, ["bang"])
        m = msg(f"{p} {v}", [x + 235, y + 104, 55, 22])
        line(tr, 0, d, 0)
        line(d, 0, m, 0)
        line(m, 0, gen, 0)

patcher = {"patcher": {"fileversion": 1, "appversion": APPV, "classnamespace": "box",
                       "rect": [40, 60, 1540, 1060], "default_fontsize": 11.0, "default_fontname": "Arial",
                       "gridsize": [8.0, 8.0], "boxes": boxes, "lines": lines, "dependency_cache": [], "autosave": 0}}
out = os.path.join(ROOT, "tests", "golden", "EP3_host_harness.maxpat")
json.dump(patcher, open(out, "w"), indent=1)
print(f"{out}: {len(boxes)} boxes, {len(lines)} lines, {len(ALL)} scenarios")
