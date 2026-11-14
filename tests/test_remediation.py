"""
EP-3 v0.1.1-dev remediation regression suite (findings F1–F8).

Every test runs on the FIXED engine (dsp/ep3_core.genexpr) and, for comparison, on the frozen
BASELINE v0.1.0-dev engine (../echolivity_ep3_v0.1.0-dev_baseline, read-only). Only the fixed
build must pass; baseline results are reported as "before".

Environment: GenExpr source executed as C (tests/genexpr_sim). NOT Max 9 / Live 12.
Run: python3 tests/test_remediation.py  -> tests/REMEDIATION_TEST_REPORT.md
"""
import os, sys, time, json
import numpy as np
from scipy.signal import butter, sosfiltfilt, hilbert

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, ".."))
sys.path.insert(0, os.path.join(HERE, "genexpr_sim"))
import ep3sim  # noqa: E402

NEW = os.path.join(ROOT, "dsp", "ep3_core.genexpr")
BASE = os.environ.get("EP3_BASELINE", os.path.join(ROOT, "..", "echolivity_ep3_v0.1.0-dev_baseline", "dsp", "ep3_core.genexpr"))
RATES = (44100, 48000, 96000)
RES = []
RAW = {}


def run(gx, x, sr=48000, quiet=True, **kw):
    ep3sim.GX = gx
    o, ns = ep3sim.run_c(x, sr, quiet=quiet, **kw)
    return o, ns


def db(x):
    return float(20 * np.log10(max(abs(x), 1e-30)))


def rms(y):
    return float(np.sqrt(np.mean(np.square(y))))


def tone(f, secs, amp, sr):
    return amp * np.sin(2 * np.pi * f * np.arange(int(secs * sr)) / sr)


def pluck(sr, f0=196, secs=0.6, amp=0.2):
    tt = np.arange(int(secs * sr)) / sr
    y = sum((1 / k) * np.sin(2 * np.pi * f0 * k * tt + k) * np.exp(-3 * k ** 0.5 * tt) for k in range(1, 13))
    return amp * y / np.abs(y).max()


def click(y, a, b, ra, rb, sr, fc=6000):
    hp = sosfiltfilt(butter(8, fc, "hp", fs=sr, output="sos"), y)
    return db(np.abs(hp[int(a * sr):int(b * sr)]).max() / max(np.abs(y[int(ra * sr):int(rb * sr)]).max(), 1e-12))


def rec(tid, finding, name, ok, after, before=""):
    RES.append((tid, finding, name, "PASS" if ok else "FAIL", after, before))
    print(("PASS " if ok else "FAIL ") + f"{tid} [{finding}] {name}\n     after:  {after}\n     before: {before}", flush=True)


# ------------------------------------------------------------------ F1 HOLD
def hold_levels(gx, sr, pbe, hold_fb=1.0, secs=62):
    n = int(secs * sr)
    t = np.arange(n) / sr
    x = np.zeros(n)
    p = pluck(sr)
    x[:len(p)] = p
    o, _ = run(gx, x, sr, vary={"hold": (t > 1.0) * 1.0}, sustain=0.4, dry=0, cable_pf=0, pb_eq=pbe,
               hold_fb=hold_fb, loop_s=112.5)
    y = o[:, 0]
    ref = rms(y[int(0.7 * sr):int(1.7 * sr)])
    lv = {s: db(rms(y[int(s * sr):int((s + 1) * sr)]) / ref) for s in (2, 6, 10, 20, 30, 45, 60) if s + 1 <= secs}
    return lv, bool(np.isnan(o).any()), float(np.abs(y).max())


def r01():
    worst = []
    ok_all = True
    after, before = [], []
    for sr in RATES:
        for pbe in (0, 1):
            lv, nan, pk = hold_levels(NEW, sr, pbe)
            settle = 6 if pbe == 0 else 20
            later = [v for s, v in lv.items() if s >= settle]
            spread = max(later) - min(later)
            mx = max(lv.values())
            ok = (not nan) and mx <= 1.0 and spread <= 2.0
            ok_all &= ok
            after.append(f"{sr}/{'BRIGHT' if pbe == 0 else 'DARK'}: max {mx:+.1f} dB re pre-HOLD, spread {spread:.1f} dB after {settle} s, "
                         f"at 60 s {lv[60]:+.1f}")
            lb, _, _ = hold_levels(BASE, sr, pbe)
            before.append(f"{sr}/{'3nF' if pbe == 0 else '33nF'}: at 60 s {lb[60]:+.1f}, max {max(lb.values()):+.1f}")
            RAW[f"hold/{sr}/{pbe}"] = {"after": lv, "before": lb}
    rec("R01", "F1", "HOLD (Hold Feedback 1.0) never rises above the pre-HOLD level (+1 dB max) and holds within 2 dB "
        "after settling (6 s BRIGHT, 20 s DARK), 60 s, 44.1/48/96 kHz, both voicings", ok_all, "; ".join(after), "; ".join(before))


def r02():
    a = {}
    for hf in (0.95, 1.05):
        lv, _, pk = hold_levels(NEW, 48000, 0, hold_fb=hf, secs=32)
        a[hf] = (lv[30] - lv[10], pk)
    ok = a[0.95][0] < -6 and a[1.05][0] > 3
    rec("R02", "F1", "Hold Feedback keeps its meaning: 0.95 fades, 1.05 grows", ok,
        f"10 s -> 30 s: 0.95 {a[0.95][0]:+.1f} dB, 1.05 {a[1.05][0]:+.1f} dB (peak {a[1.05][1]:.2f}, bounded by saturation/limiter)")


def r03():
    sr = 48000
    n = int(10 * sr)
    t = np.arange(n) / sr
    x = np.zeros(n)
    p = pluck(sr)
    x[:len(p)] = p
    hold = ((t > 1.0) & (t < 4.0)) * 1.0
    out = {}
    for gx, lab in ((NEW, "after"), (BASE, "before")):
        o, _ = run(gx, x, sr, vary={"hold": hold}, sustain=0.4, dry=0, cable_pf=0, loop_s=112.5)
        y = o[:, 0]
        out[lab] = db(rms(y[int(6 * sr):int(7 * sr)]) / rms(y[int(3 * sr):int(4 * sr)]))
    rec("R03", "F1", "HOLD release returns to normal Echo Sustain decay", out["after"] < -15,
        f"level 2–3 s after release vs during HOLD: {out['after']:+.1f} dB", f"{out['before']:+.1f} dB")


# ------------------------------------------------------------------ F2 feedback stability
def growth(gx, sr, s, pbe, secs=6):
    """level change of a decaying/ building loop excited by a broadband pluck"""
    n = int(secs * sr)
    x = np.zeros(n)
    p = pluck(sr, 196, 0.3, 0.05)
    x[:len(p)] = p
    o, _ = run(gx, x, sr, sustain=s, dry=0, slider_pos=0.2, cable_pf=0, protect=0, pb_eq=pbe)
    y = o[:, 0]
    return db(rms(y[int((secs - 1) * sr):int((secs - 0.5) * sr)]) / max(rms(y[int(1 * sr):int(1.5 * sr)]), 1e-30))


def loop_gain_peak(gx, sr, pbe, s=0.3):
    """per-pass loop gain per unit (Sustain x 1.25), sine bursts at 40 Hz–2 kHz; peak over the grid"""
    d = 0.168
    best = (0, 0)
    for f in (40, 56, 80, 100, 130, 160, 200, 250, 300, 400, 500, 700, 1000, 2000):
        n = int(0.10 * sr)
        tt = np.arange(n) / sr
        w = np.ones(n)
        r = int(0.01 * sr)
        w[:r] = np.hanning(2 * r)[:r]
        w[-r:] = np.hanning(2 * r)[r:]
        x = np.zeros(int(1.0 * sr))
        x[:n] = 0.003 * np.sin(2 * np.pi * f * tt) * w
        o, _ = run(gx, x, sr, sustain=s, dry=0, slider_pos=0.2, cable_pf=0, pb_eq=pbe)
        y = o[:, 0]
        m = lambda k: rms(y[int((k * d + 0.03) * sr):int((k * d + 0.08) * sr)])
        g = m(3) / m(2) / (s * 1.25)
        best = max(best, (g, f))
    return best


def r04():
    ok_all = True
    after, before = [], []
    for sr in RATES:
        pk = {}
        for pbe in (0, 1):
            pk[pbe] = loop_gain_peak(NEW, sr, pbe)
            g = {s: growth(NEW, sr, s, pbe, 10) for s in (0.4, 0.7, 0.85)}
            ok = g[0.4] < 0 and g[0.7] < 0 and g[0.85] > 0
            ok_all &= ok
            after.append(f"{sr}/{'BRIGHT' if pbe == 0 else 'DARK'}: peak loop gain {pk[pbe][0]:.3f} @ {pk[pbe][1]} Hz; "
                         f"pluck 1 s->9 s: 0.4 {g[0.4]:+.0f}, 0.7 {g[0.7]:+.1f}, 0.85 {g[0.85]:+.1f} dB")
            pb = loop_gain_peak(BASE, sr, pbe)
            gb = growth(BASE, sr, 0.4, pbe, 10)
            before.append(f"{sr}/{'3nF' if pbe == 0 else '33nF'}: peak {pb[0]:.3f} @ {pb[1]} Hz; Sustain 0.4 {gb:+.0f} dB")
        same = abs(pk[0][0] - pk[1][0]) / pk[0][0] < 0.02
        ok_all &= same
    rec("R04", "F2", "Both voicings: stable at default Sustain 0.4 and at 0.7, self-oscillate at 0.85, and have the same measured "
        "peak loop gain (within 2 %), 3 rates", ok_all, "; ".join(after), "; ".join(before))


def r05():
    sr = 48000
    d = 0.168
    worst = 0.0
    rows = []
    for pbe in (0, 1):
        imp = np.zeros(int(0.6 * sr))
        imp[0] = 0.05
        sp = []
        for gx in (NEW, BASE):
            o, _ = run(gx, imp, sr, sustain=0, dry=0, cable_pf=0, slider_pos=0.2, pb_eq=pbe)
            seg = o[int((d - 0.02) * sr):int((d + 0.12) * sr), 0]
            Y = np.abs(np.fft.rfft(seg * np.hanning(len(seg))))
            fr = np.fft.rfftfreq(len(seg), 1 / sr)
            sp.append({f: Y[np.argmin(np.abs(fr - f))] for f in (100, 300, 1000, 3000, 5000, 8000)})
        diff = max(abs(db(sp[0][f] / sp[1][f])) for f in sp[0])
        worst = max(worst, diff)
        rows.append(f"{'BRIGHT' if pbe == 0 else 'DARK'}: max {diff:.3f} dB")
    rec("R05", "F1/F2", "First echo (level and tone, 100 Hz–8 kHz) unchanged vs baseline, both voicings", worst < 0.1, "; ".join(rows))


def r06():
    sr = 48000
    t = np.arange(int(6 * sr)) / sr
    rng = np.random.default_rng(1)
    x = 0.1 * np.sin(2 * np.pi * 220 * t) * (t % 1 < 0.3) + 0.02 * rng.standard_normal(len(t)) * (t % 2 < 0.1)
    cases = [("defaults + noise/flutter", dict(quiet=False)),
             ("Sustain 0.7 + slider LFO", dict(quiet=False, sustain=0.7, vary={"slider_pos": 0.5 + 0.4 * np.sin(2 * np.pi * 0.3 * t)})),
             ("Cable 470 pF", dict(cable_pf=470)), ("SOS", dict(sos=1)), ("DRIVE + TAPE STOP", dict(vary={"drive": (t > 1) * 1.0, "tape_stop": ((t > 2) & (t < 3.5)) * 1.0}))]
    rows, ok = [], True
    for name, kw in cases:
        a, _ = run(BASE, x, sr, loop_s=112.5, **kw)
        b, _ = run(NEW, x, sr, loop_s=112.5, **kw)
        m = float(np.abs(a - b).max())
        ok &= m == 0.0
        rows.append(f"{name}: {m:g}")
    rec("R06", "all", "No silent change: outside HOLD, with the default BRIGHT voicing and equal loop length, output is bit-identical to baseline",
        ok, "; ".join(rows))


# ------------------------------------------------------------------ F3 default loop
def r07():
    import re
    src = open(NEW).read()
    dflt = float(re.search(r"Param loop_s\(([\d.]+)", src).group(1))
    dev = json.load(open(os.path.join(ROOT, "devices", "Echolivity_EP3_v0.1.2-dev.maxpat")))["patcher"]
    ui = [b["box"]["saved_attribute_attributes"]["valueof"] for b in dev["boxes"] if b["box"].get("varname") == "loop_s"][0]
    sr = 48000
    n = int(26 * sr)
    x = np.zeros(n)
    p = pluck(sr, 220, 0.5)
    x[int(0.5 * sr):int(0.5 * sr) + len(p)] = p
    o, _ = run(NEW, x, sr, sos=1, dry=0, cable_pf=0)               # factory loop length
    env = np.abs(o[:, 0])
    on = []
    for k in (1, 2):
        lo, hi = int((0.5 + 8 * k - 1.0) * sr), int((0.5 + 8 * k + 0.3) * sr)
        on.append((lo + int(np.argmax(env[lo:hi] > 0.3 * env[lo:hi].max()))) / sr)
    per = on[1] - on[0]
    ok = dflt == 8 and ui["parameter_initial"] == [8] and ui["parameter_mmax"] == 112.5 and abs(per - 8) < 0.01
    rec("R07", "F3", "Default loop 8 s (engine and device); SOS returns every 8 s at factory settings; 112.5 s still reachable", ok,
        f"engine default {dflt}, device initial {ui['parameter_initial'][0]}, max {ui['parameter_mmax']}; SOS period {per:.3f} s",
        "default 112.5 s (first return after ~112 s)")


# ------------------------------------------------------------------ F4 clicks
def r08():
    rows, ok_all = [], True
    for sr in RATES:
        t = np.arange(int(2 * sr)) / sr
        x = tone(220, 2, 0.1, sr)
        cases = {"ECHO TONE switch": {"pb_eq": (t > 1.0) * 1.0}, "Cable 0->1500 pF": {"cable_pf": np.where(t > 1.0, 1500.0, 0.0)},
                 "VOICE switch": {"pre_bypass": (t > 1.0) * 1.0}}
        for name, vary in cases.items():
            r = {}
            for gx, lab in ((NEW, "a"), (BASE, "b")):
                o, _ = run(gx, x, sr, vary=vary, sustain=0.5, slider_pos=0.1)
                r[lab] = click(o[:, 0], 0.98, 1.15, 0.5, 0.95, sr)
            ok = r["a"] < -60
            ok_all &= ok
            rows.append((sr, name, r["a"], r["b"]))
    rec("R08", "F4", "Switching ECHO TONE, VOICE and Cable Load through 0 pF is click-free (< -60 dB re signal), 3 rates", ok_all,
        "; ".join(f"{sr}/{n}: {a:.0f} dB" for sr, n, a, b in rows), "; ".join(f"{sr}/{n}: {b:.0f} dB" for sr, n, a, b in rows))


def r09():
    sr = 48000
    t = np.arange(int(8 * sr)) / sr
    x = pluck_phrase(sr, 8)
    l = 0.5 + 0.5 * np.sin(2 * np.pi * 0.5 * t)
    out = {}
    for gx, lab in ((NEW, "a"), (BASE, "b")):
        # reference: the brighter end of the sweep held static (0 pF), so tone changes are not counted as clicks
        bc = max(click(run(gx, x, sr, cable_pf=c)[0][:, 0], 0.5, 7.5, 0.5, 7.5, sr, fc=12000) for c in (0, 2000))
        o, _ = run(gx, x, sr, vary={"cable_pf": 2000 * l})
        out[lab] = click(o[:, 0], 0.5, 7.5, 0.5, 7.5, sr, fc=12000) - bc
    rec("R09", "F4", "LFO on Cable Load (0–2000 pF, 0.5 Hz) adds no clicks (HF above 12 kHz within +3.5 dB of the brightest static setting in the sweep)",
        out["a"] < 3.5, f"{out['a']:+.1f} dB", f"{out['b']:+.1f} dB")


def pluck_phrase(sr, secs):
    y = np.zeros(int(secs * sr))
    for i, st in enumerate(np.arange(0, secs - 0.5, 0.5)):
        n = pluck(sr, (196, 247, 294, 330)[i % 4], 0.5, 1.0)
        a = int(st * sr)
        y[a:a + len(n)] += n
    act = y[np.abs(y) > 1e-4]
    return y * (10 ** (-18 / 20) / rms(act))


# ------------------------------------------------------------------ F6 loop-length change
def r10():
    rows, ok_all = [], True
    for sr in RATES:
        n = int(14 * sr)
        t = np.arange(n) / sr
        x = tone(220, 14, 0.05, sr)
        ls = np.where(t > 10.0, 4.0, 112.5)
        r = {}
        for gx, lab in ((NEW, "a"), (BASE, "b")):
            o, _ = run(gx, x, sr, vary={"loop_s": ls}, sustain=0.4, dry=0, cable_pf=0, slider_pos=0.1)
            y = o[:, 0]
            r[lab] = (click(y, 9.98, 10.6, 9.0, 9.9, sr), bool(np.isnan(o).any()), db(rms(y[int(12 * sr):int(13 * sr)]) / rms(y[int(9 * sr):int(9.9 * sr)])))
        ok = r["a"][0] < -60 and not r["a"][1] and abs(r["a"][2]) < 1
        ok_all &= ok
        rows.append((sr, r))
    rec("R10", "F6", "Changing Loop Length while playing (112.5 -> 4 s) is click-free and the echo resumes, 3 rates", ok_all,
        "; ".join(f"{sr}: {r['a'][0]:.0f} dB, level after {r['a'][2]:+.1f} dB" for sr, r in rows),
        "; ".join(f"{sr}: {r['b'][0]:.0f} dB" for sr, r in rows))


# ------------------------------------------------------------------ core behaviour at 3 rates
def r11():
    rows, ok_all = [], True
    for sr in RATES:
        # SOS layering
        n = int(9 * sr)
        x = np.zeros(n)
        p = pluck(sr, 220, 0.5)
        x[int(0.5 * sr):int(0.5 * sr) + len(p)] = p
        o, _ = run(NEW, x, sr, sos=1, loop_s=2, dry=0, cable_pf=0)
        env = np.abs(o[:, 0])
        pks = [env[int((0.5 + 2 * k - 0.8) * sr):int((0.5 + 2 * k + 0.3) * sr)].max() for k in (1, 2, 3)]
        sos_step = [db(pks[i + 1] / pks[i]) for i in range(2)]
        # pitch: steady move, echo pitch 1000/u
        t = np.arange(int(3.2 * sr)) / sr
        pos = np.where(t < 1.0, 0.5, np.where(t < 1.5, 0.5 + (t - 1.0) * 0.6, 0.8))
        o2, _ = run(NEW, tone(1000, 3.2, 0.05, sr), sr, vary={"slider_pos": pos}, sustain=0, dry=0, glide_ms=1, cable_pf=0)
        u = o2[int(1.25 * sr), 4]
        seg = o2[int(1.45 * sr):int(1.75 * sr), 0]
        ph = np.unwrap(np.angle(hilbert(seg)))
        f_meas = float(np.median(np.diff(ph))) * sr / (2 * np.pi)
        pitch_err = abs(f_meas - 1000 / u) / (1000 / u)
        # tape stop pitch ratio
        t3 = np.arange(int(3 * sr)) / sr
        o3, _ = run(NEW, tone(1000, 3, 0.05, sr), sr, vary={"tape_stop": (t3 > 1.0) * 1.0}, stop_time=1.0, sustain=0, dry=0, slider_pos=0.2, cable_pf=0)
        seg3 = o3[int(1.45 * sr):int(1.55 * sr), 0]
        ph3 = np.unwrap(np.angle(hilbert(seg3)))
        f3 = float(np.median(np.diff(ph3))) * sr / (2 * np.pi)
        D = -0.5 + np.sqrt(0.25 + 2 * 0.168)
        f3e = 1000 * 0.5 / (0.5 + D)
        # saturation at nominal level
        x4 = np.concatenate([tone(1000, 0.4, 10 ** (-18 / 20) * np.sqrt(2), sr), np.zeros(int(0.4 * sr))])
        o4, _ = run(NEW, x4, sr, sustain=0, dry=0, cable_pf=0, slider_pos=0.2)
        s4 = o4[int(0.25 * sr):int(0.5 * sr), 0]
        Y = np.abs(np.fft.rfft(s4 * np.hanning(len(s4))))
        fr = np.fft.rfftfreq(len(s4), 1 / sr)
        h = [Y[np.argmin(np.abs(fr - 1000 * k))] for k in range(1, 8)]
        thd = 100 * np.sqrt(sum(v * v for v in h[1:])) / h[0]
        ok = all(abs(s + 1) < 0.2 for s in sos_step) and pitch_err < 0.01 and abs(f3 - f3e) < 15 and 1.5 < thd < 5
        ok_all &= ok
        rows.append(f"{sr}: SOS {sos_step[0]:+.2f}/{sos_step[1]:+.2f} dB per pass, pitch err {100 * pitch_err:.2f} %, stop pitch {f3:.0f} Hz (exp {f3e:.0f}), THD {thd:.2f} %")
    rec("R11", "regression", "SOS layering, pitch manipulation, tape-speed transition and saturation unchanged in behaviour at 44.1/48/96 kHz",
        ok_all, "; ".join(rows))


def r12():
    sr = 48000
    t = np.arange(int(8 * sr)) / sr
    x = pluck_phrase(sr, 8)
    l = 0.5 + 0.5 * np.sin(2 * np.pi * 0.5 * t)
    targets = {"sustain": 0.2 + 0.5 * l, "echo": 0.1 + 0.8 * l, "rec_db": -12 + 24 * l, "cable_pf": 2000 * l,
               "in_gain_db": -12 + 18 * l, "echo_trim_db": -24 + 30 * l, "dry": l, "sat": l, "flutter": l, "hold_fb": 0.9 + 0.15 * l,
               "slider_pos": 0.2 + 0.6 * l}
    worst, rows = -99.0, []
    for k, v in targets.items():
        # reference: the brighter of the sweep's two ends held static (tone changes are not clicks)
        bc = max(click(run(NEW, x, sr, **{k: float(e)})[0][:, 0], 0.5, 7.5, 0.5, 7.5, sr, fc=12000) for e in (v.min(), v.max()))
        vv = v.copy()
        for i in range(0, len(vv), 128):
            vv[i:i + 128] = vv[i]
        o, _ = run(NEW, x, sr, vary={k: vv})
        c = click(o[:, 0], 0.5, 7.5, 0.5, 7.5, sr, fc=12000) - bc
        worst = max(worst, c)
        rows.append(f"{k} {c:+.1f}")
    rec("R12", "regression", "Automation: LFO on 11 continuous controls, stepped every 128 samples, adds no clicks (HF > 12 kHz within +3.5 dB of the brighter static end of the sweep)",
        worst < 3.5, ", ".join(rows))


def r13():
    rows, ok_all = [], True
    for sr, mins in ((48000, 10), (44100, 2), (96000, 2)):
        n = int(mins * 60 * sr)
        t = np.arange(n) / sr
        ph = pluck_phrase(sr, 8.0)
        x = np.tile(ph, int(np.ceil(n / len(ph))))[:n] * (((t // 30) % 2) == 0)
        hold = (((t // 45) % 4) == 3) * 1.0                       # HOLD engaged every 4th 45 s block
        vary = {"slider_pos": 0.5 + 0.4 * np.sin(2 * np.pi * 0.05 * t), "sustain": 0.55 + 0.2 * np.sin(2 * np.pi * 0.013 * t),
                "hold": hold, "pb_eq": (((t // 70) % 2) == 1) * 1.0}
        o, ns = run(NEW, x, sr, quiet=False, vary=vary)
        y = o[:, 0]
        overs = int(np.sum(np.abs(y) > 10 ** (-0.3 / 20) + 1e-9))
        secs = [db(rms(y[i:i + 10 * sr])) for i in range(0, n - 10 * sr, 30 * sr)]
        ok = (not np.isnan(o).any()) and overs == 0 and max(secs) < -3
        ok_all &= ok
        rows.append(f"{sr} {mins} min: NaN {bool(np.isnan(o).any())}, peak {np.abs(y).max():.3f}, overs {overs}, loudest 10 s {max(secs):.1f} dBFS, DC {np.mean(y):.1e}")
    rec("R13", "regression", "Extended playback with slider/Sustain LFOs, periodic HOLD and ECHO TONE switching: no NaN, no overs, bounded level",
        ok_all, "; ".join(rows))


def r14():
    import resource, subprocess, tempfile
    rows = []
    worst = 0.0
    for sr in RATES:
        x = pluck_phrase(sr, 20)
        r = {}
        for gx, lab in ((NEW, "a"), (BASE, "b")):
            _, ns = run(gx, x, sr, quiet=False, vary={"slider_pos": 0.5 + 0.45 * np.sin(2 * np.pi * 2 * np.arange(len(x)) / sr)}, head_slew=12)
            r[lab] = ns * sr / 1e9 * 100
        worst = max(worst, r["a"])
        rows.append(f"{sr}: {r['a']:.2f} % (before {r['b']:.2f} %)")
    rss = {}
    for gx, lab in ((NEW, "a"), (BASE, "b")):
        ep3sim.GX = gx
        exe = ep3sim._build()
        with tempfile.TemporaryDirectory() as td:
            np.zeros(48000).tofile(td + "/i.bin")
            code = ("import resource,subprocess,sys; subprocess.run(sys.argv[1:],capture_output=True,check=True); "
                    "print(resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss)")
            r = subprocess.run([sys.executable, "-c", code, exe, "48000", td + "/i.bin", "1", "-", td + "/o.bin"],
                               capture_output=True, text=True, check=True)
            rss[lab] = int(r.stdout.strip())
    rec("R14", "regression", "CPU proxy (C, gcc -O2, incl. per-sample timer; fast slider LFO at max head speed) and memory; not Live figures",
        worst < 10, "CPU " + "; ".join(rows) + f"; C process peak RSS {rss['a'] / 1024:.0f} MB for 1 s of audio (only touched pages of the 43 MB 64-bit tape buffer are resident; "
        "Max allocates and clears it, so expect the full buffer there)", f"C process peak RSS {rss['b'] / 1024:.0f} MB")


if __name__ == "__main__":
    t0 = time.time()
    for f in (r06, r01, r02, r03, r04, r05, r07, r08, r09, r10, r11, r12, r13, r14):
        f()
    n_ok = sum(r[3] == "PASS" for r in RES)
    out = ["# EP-3 v0.1.1-dev remediation regression report", "",
           "Environment: the GenExpr source executed as C (`tests/genexpr_sim`), fixed build vs the frozen v0.1.0-dev baseline. "
           "**Not Max 9 / Live 12.**", "", f"**{n_ok}/{len(RES)} passed** ({time.strftime('%Y-%m-%d')}, {time.time() - t0:.0f} s)", "",
           "| ID | Finding | Test | Result | After (current build) | Before (v0.1.0-dev) |", "|---|---|---|---|---|---|"]
    out += [f"| {a} | {b} | {c} | {d} | {e} | {f} |" for a, b, c, d, e, f in RES]
    open(os.path.join(HERE, "REMEDIATION_TEST_REPORT.md"), "w").write("\n".join(out) + "\n")
    json.dump(RAW, open(os.path.join(HERE, "remediation_raw.json"), "w"), indent=1, default=float)
    print(f"{n_ok}/{len(RES)} passed")
    sys.exit(0 if n_ok == len(RES) else 1)
