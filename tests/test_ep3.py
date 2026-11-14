"""
EP-3 behaviour tests — run on the shipped dsp/ep3_core.genexpr (C translation via
gx_cgen, cross-checked against the Python transpiler in X01).

Environment: GenExpr source executed outside Max. NOT Max 9 / Live results.
Expected values come from docs/EP3_MODELING_NOTES.md (sourced) or are derived
in the test from the model's stated design.

Run: python3 tests/test_ep3.py  -> tests/EP3_TEST_REPORT.md
"""
import os
import sys
import time
import numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(HERE, "genexpr_sim"))
import ep3sim  # noqa: E402

SR = 48000
RES = []


def rec(tid, name, ok, detail):
    RES.append((tid, name, "PASS" if ok else "FAIL", detail))
    print(("PASS " if ok else "FAIL ") + tid + " " + name + " — " + detail, flush=True)


def tone(f, secs, amp, sr=SR):
    t = np.arange(int(secs * sr)) / sr
    return amp * np.sin(2 * np.pi * f * t)


def zc_freq(y, sr=SR):
    s = np.signbit(y)
    idx = np.nonzero(s[:-1] & ~s[1:])[0]            # upward crossings
    if len(idx) < 3:
        return 0.0
    fr = idx + y[idx] / (y[idx] - y[idx + 1])        # linear interpolation
    return (len(fr) - 1) / ((fr[-1] - fr[0]) / sr)


def rms(y):
    return float(np.sqrt(np.mean(np.square(y))))


def db(x):
    return 20 * np.log10(max(x, 1e-30))


def first_echo_ms(o, start_ms=3, sr=SR):
    a = np.abs(o[:, 0])
    i0 = int(start_ms * sr / 1000)
    return (i0 + int(np.argmax(a[i0:]))) / sr * 1000


def thd(y, f, sr=SR):
    n = len(y)
    w = np.hanning(n)
    Y = np.abs(np.fft.rfft(y * w))
    fr = np.fft.rfftfreq(n, 1 / sr)
    def band(fc):
        k = np.argmin(np.abs(fr - fc))
        return np.sqrt(np.sum(Y[max(k - 3, 0):k + 4] ** 2))
    h1 = band(f)
    hs = np.sqrt(sum(band(f * k) ** 2 for k in range(2, 8) if f * k < sr / 2))
    return hs / h1


# ---------------------------------------------------------------- X01 ---
def x01():
    n = 6000
    t = np.arange(n) / SR
    x = 0.2 * np.sin(2 * np.pi * 700 * t) + 0.05 * np.sin(2 * np.pi * 3100 * t)
    worst = 0.0
    cases = [
        ("throw up", {"slider_pos": np.clip(0.02 + (t > 0.03) * (t - 0.03) * 30, 0, 0.9)}, {}),
        ("throw down, no glide", {"slider_pos": np.clip(0.9 - (t > 0.02) * (t - 0.02) * 60, 0, 1)}, {"glide_ms": 1}),
        ("SOS + playback toggles", {"playback": (t > 0.08) * 1.0, "sos": (t > 0.04) * 1.0}, {"loop_s": 1}),
        ("bypass out, cable 600 pF, manual EQ", {}, {"pre_bypass": 0, "cable_pf": 600, "pb_eq": 1}),
    ]
    for name, vary, extra in cases:
        kw = dict(slider_min_ms=5, slider_max_ms=60, sustain=0.6, head_slew=8, bias_leak=1)
        kw.update(extra)
        oc, _ = ep3sim.run_c(x, SR, vary=vary, **kw)
        op = ep3sim.run_py(x, SR, vary=vary, **kw)
        worst = max(worst, float(np.abs(oc - op).max()))
    rec("X01", "C translation and Python execution of the GenExpr source agree", worst == 0.0,
        f"max |difference| over 8 outputs, 4 scenarios x {n} samples: {worst:g}")


# ---------------------------------------------------------------- E01 ---
def e01():
    imp = np.zeros(int(1.0 * SR))
    imp[0] = 0.5
    res = []
    for pos, exp in ((0.0, 60.0), (0.5, 330.0), (1.0, 600.0)):
        o, _ = ep3sim.run_c(imp, SR, slider_pos=pos, sustain=0, dry=0, cable_pf=0)
        res.append((exp, first_echo_ms(o), o[2000, 2]))
    o, _ = ep3sim.run_c(imp, SR, mode=0, bpm=120, sync_div=3, sync_type=2, sustain=0, dry=0, cable_pf=0)
    res.append((1000 * 60 / 120 * 2 / 3, first_echo_ms(o), o[2000, 2]))
    err = max(abs(m - e) for e, m, _ in res)
    rd = max(abs(r - e) for e, _, r in res)
    rec("E01", "Delay: slider 0 / 0.5 / 1 = 60 / 330 / 600 ms (linear); SYNC 1/4 triplet @120 = 333.3 ms",
        err < 0.3 and rd < 0.01,
        "measured " + ", ".join(f"{m:.2f}" for _, m, _ in res) + f" ms; worst echo error {err:.3f} ms "
        f"(filter group delay), readout error {rd:.4f} ms")


# ---------------------------------------------------------------- E02 ---
def e02():
    # steady 1 kHz, slider moved steadily from t=1.0 s to 1.5 s (330 -> 490 ms).
    secs = 3.2
    t = np.arange(int(secs * SR)) / SR
    x = tone(1000, secs, 0.05)
    pos = np.where(t < 1.0, 0.5, np.where(t < 1.5, 0.5 + (t - 1.0) * 0.6, 0.8))
    o, _ = ep3sim.run_c(x, SR, vary={"slider_pos": pos}, sustain=0, dry=0, glide_ms=1, cable_pf=0)
    y = o[:, 0]
    def f_at(a, b):
        return zc_freq(y[int(a * SR):int(b * SR)])
    f_before = f_at(1.05, 1.30)      # head already moving, but this tape was written before the move
    # head speed over tape during the move: delay rises 320 ms/s -> u = 1.32
    u = o[int(1.25 * SR), 4]
    f_during = f_at(1.45, 1.75)      # written during the move (heard ~0.33–0.45 s later)
    exp_during = 1000 / u
    ok = abs(f_before - 1000) < 1 and abs(f_during - exp_during) / exp_during < 0.01
    rec("E02", "Slider move changes pitch one delay LATER (record head moves), by 1/u",
        ok, f"echo 1.05–1.30 s (head moving, tape written before): {f_before:.1f} Hz (expect 1000); "
        f"1.45–1.75 s: {f_during:.1f} Hz (expect 1000/u = {exp_during:.1f}, u = {u:.3f})")


# ---------------------------------------------------------------- E03 ---
def e03():
    # Head moving WITH the tape at u ~ 0.4: content is squeezed on tape and plays back
    # 2.5x higher. 12 kHz -> 30 kHz is above Nyquist and must be filtered at the write,
    # not aliased to 18 kHz.
    secs = 2.4
    t = np.arange(int(secs * SR)) / SR
    pos = np.where(t < 0.5, 1.0, np.clip(1.0 - (t - 0.5) * (0.6 / 0.998), 0, 1))  # delay falls 600 ms/s -> u = 0.4
    # tape written at time tw (>= 0.5 s) reaches the echo head at tw + d(tw) = 1.3 + 0.4 tw, i.e. from 1.5 s
    kw = dict(sustain=0, dry=0, glide_ms=1, head_slew=8, cable_pf=0, bias_leak=0, slider_min_ms=0.002 * 1000,
              slider_max_ms=1000)
    o_hi, _ = ep3sim.run_c(tone(12000, secs, 0.05), SR, vary={"slider_pos": pos}, **kw)
    o_lo, _ = ep3sim.run_c(tone(1000, secs, 0.05), SR, vary={"slider_pos": pos}, **kw)
    u = o_hi[int(0.9 * SR), 4]
    seg = slice(int(1.65 * SR), int(2.05 * SR))
    r = db(rms(o_hi[seg, 0]) / rms(o_lo[seg, 0]))
    f_lo = zc_freq(o_lo[seg, 0])
    rec("E03", "Write is band-limited: content pushed above Nyquist by a fast move is removed, not aliased",
        r < -40 and 0.3 < u < 0.5 and abs(f_lo - 1000 / u) < 5,
        f"head speed over tape u = {u:.2f}; 1 kHz comes back at {f_lo:.0f} Hz (expect {1000 / u:.0f}); "
        f"12 kHz (would land at {12000 / u / 1000:.0f} kHz) vs that echo: {r:.1f} dB (limit -40)")


# ---------------------------------------------------------------- E04 ---
def e04():
    loop = 1.0
    secs = 5.6
    x = np.zeros(int(secs * SR))
    x[int(0.1 * SR):int(0.15 * SR)] = tone(500, 0.05, 0.1)
    o, _ = ep3sim.run_c(x, SR, sos=1, loop_s=loop, sustain=1.0, dry=0, cable_pf=0, slider_pos=0.5)
    y = o[:, 0]
    # SOS head sits (600 + 62.5) ms upstream of the echo head: first heard at 0.1 + loop - (0.33 + ...)?
    # Measure the burst peak once per pass and compare successive passes.
    pk = []
    for k in range(1, 5):
        seg = y[int((0.05 + k * loop - 0.4) * SR):int((0.05 + k * loop + 0.4) * SR)]
        pk.append(np.abs(seg).max())
    steps = [db(pk[i + 1] / pk[i]) for i in range(len(pk) - 1)]
    ok = all(abs(s + 1.0) < 0.2 for s in steps)
    rec("E04", "Sound-on-sound: loop repeats every loop length, -1 dB per pass (manual alignment); Sustain inactive",
        ok, "pass-to-pass change " + ", ".join(f"{s:+.2f} dB" for s in steps) + " (Echo Sustain at max)")


# ---------------------------------------------------------------- E05 ---
def e05():
    secs = 1.2
    x = tone(1000, secs, 10 ** (-18 / 20) * np.sqrt(2))      # -18 dBFS RMS = 100 mV nominal
    o, _ = ep3sim.run_c(x, SR, sustain=0, dry=0, cable_pf=0, slider_pos=0.5)
    seg = o[int(0.6 * SR):int(1.0 * SR), 0]
    h = thd(seg, 1000) * 100
    rec("E05", "Record level calibration: nominal input (100 mV, -18 dBFS RMS) gives about 2–3 % THD on the echo (window 1.5–5 %)",
        1.5 < h < 5, f"THD {h:.2f} % (manual: adjust record level for max undistorted output)")


# ---------------------------------------------------------------- E06 ---
def e06():
    # dry level through FET + passive mixer, over the Echo Volume (blend) pot; cable 0.
    # ECHO footswitch off so the tone's own echo is not measured (the pot still loads the dry side)
    lv = {}
    for k in (0.0, 0.1, 0.2, 0.3, 0.5, 0.7, 0.9):
        o, _ = ep3sim.run_c(tone(1000, 0.5, 0.01), SR, echo=k, cable_pf=0, sustain=0, echo_on=0)
        lv[k] = db(rms(o[int(0.3 * SR):, 0]) / rms(tone(1000, 0.2, 0.01)))
    kpk = max(lv, key=lv.get)
    sh = {}
    for byp in (1, 0):
        g = []
        for f in (100, 15000):
            o, _ = ep3sim.run_c(tone(f, 0.5, 0.01), SR, echo=0.5, cable_pf=0, pre_bypass=byp, sustain=0, echo_on=0)
            g.append(rms(o[int(0.3 * SR):, 0]))
        sh[byp] = db(g[1] / g[0])
    ok = (-2 < lv[kpk] < 2 and 0.1 <= kpk <= 0.3 and lv[0.9] < lv[kpk] - 6
          and 8 < sh[1] - sh[0] < 11 and -3.5 < sh[0] < -0.5)
    rec("E06", "Dry level through FET + output mixer: peaks near unity at low Echo Volume, then falls (blend pot, wiper grounded)",
        ok, "dry at 1 kHz vs input: " + ", ".join(f"k={k}: {v:+.1f}" for k, v in lv.items()) + " dB; "
        f"15 kHz vs 100 Hz with cable 0: {sh[1]:+.1f} dB with 22 nF, {sh[0]:+.1f} dB without (input RF filter); "
        f"shelf from the 22 nF cap {sh[1] - sh[0]:+.1f} dB")


# ---------------------------------------------------------------- E07 ---
def e07():
    fs = (200, 600, 1000, 4000, 7000, 12000)
    r = {}
    for byp in (1, 0):
        g = {}
        for f in fs:
            o, _ = ep3sim.run_c(tone(f, 0.5, 0.01), SR, echo=0.5, cable_pf=470, pre_bypass=byp, sustain=0, echo_on=0)
            g[f] = rms(o[int(0.3 * SR):, 0])
        r[byp] = {f: db(g[f] / g[1000]) for f in fs}
    e, l = r[1], r[0]
    # ClinchFX: early "rises very gently from 1kHz to around 4kHz and then falls, again very gently,
    # to 7kHz, after which it falls rapidly"; later "begins to gently roll off ... around 600Hz ...
    # a long way down at 7kHz"
    ok_e = 0.5 < e[4000] < 3 and e[4000] - 3 < e[7000] < e[4000] and e[12000] < e[7000] - 2
    ok_l = l[600] > -1 and l[4000] < -1.5 and l[7000] < -5
    rec("E07", "Dry response (cable 470 pF) matches the published descriptions of early and late EP-3s",
        ok_e and ok_l, "early: " + ", ".join(f"{f}:{v:+.1f}" for f, v in e.items()) +
        " dB; late: " + ", ".join(f"{f}:{v:+.1f}" for f, v in l.items()) + " dB (re 1 kHz)")


# ---------------------------------------------------------------- E08 ---
def e08():
    loop = 1.0
    secs = 3.5
    t = np.arange(int(secs * SR)) / SR
    x = np.zeros_like(t)
    x[int(0.10 * SR):int(0.13 * SR)] = tone(600, 0.03, 0.1)
    x[int(1.60 * SR):int(1.63 * SR)] = tone(600, 0.03, 0.1)      # played while PLAYBACK is on
    pb = (t > 0.5) * 1.0
    o, _ = ep3sim.run_c(x, SR, vary={"playback": pb}, loop_s=loop, sustain=0, dry=0, cable_pf=0, slider_pos=0.5)
    y = np.abs(o[:, 0])
    def pk(a, b):
        return y[int(a * SR):int(b * SR)].max()
    first = pk(0.40, 0.50)                       # 0.10 + 0.33 s
    again = pk(1.40, 1.50)                       # one loop later, record off
    again2 = pk(2.40, 2.50)
    new = pk(1.90, 2.00)                         # 1.60 + 0.33: must NOT be on tape
    ok = abs(db(again / first)) < 0.5 and abs(db(again2 / first)) < 0.5 and db(new / first) < -60
    rec("E08", "PLAYBACK footswitch: record and erase off, the loop replays unchanged; new playing not recorded",
        ok, f"replay after 1 and 2 loops: {db(again / first):+.2f} / {db(again2 / first):+.2f} dB; "
        f"input during playback on tape: {db(new / first):.0f} dB")


# ---------------------------------------------------------------- E09 ---
def e09():
    secs = 4.0
    x = np.zeros(int(secs * SR))
    x[:int(0.05 * SR)] = tone(300, 0.05, 0.3)
    o, _ = ep3sim.run_c(x, SR, sustain=1.0, quiet=False, slider_pos=0.2)
    y = o[:, 0]
    late = rms(y[int(3.0 * SR):])
    pk = np.abs(y).max()
    ok = (not np.isnan(o).any()) and late > 0.05 and pk <= 10 ** (-0.3 / 20) + 1e-9
    rec("E09", "Echo Sustain at max runs away (as the manual describes) but stays bounded under the ceiling",
        ok, f"RMS after 3 s {late:.3f} (self-oscillating), peak {pk:.4f} (ceiling {10 ** (-0.3 / 20):.4f})")


# ---------------------------------------------------------------- E10 ---
def e10():
    secs = 8.0
    o, _ = ep3sim.run_c(np.zeros(int(secs * SR)), SR, quiet=True, flutter=0.5)
    v = o[int(1 * SR):, 5] - 1
    pkpct = 100 * np.abs(v).max()
    V = np.abs(np.fft.rfft(v * np.hanning(len(v))))
    fr = np.fft.rfftfreq(len(v), 1 / SR)
    top = sorted(fr[np.argsort(V)[-40:]])
    lines = [f for f in (2.5, 5.0, 26.0) if any(abs(f - x) < 0.2 for x in top)]
    rec("E10", "Flutter at 0.5 stays within the EP-3 spec (0.3 %), with lines at 2.5, 5 and 26 Hz",
        0.2 < pkpct <= 0.32 and len(lines) == 3, f"peak speed deviation {pkpct:.3f} %; lines found {lines}")


# ---------------------------------------------------------------- E11 ---
def e11():
    secs = 2.0
    t = np.arange(int(secs * SR)) / SR
    pos = np.where(t < 0.3, 0.0, np.clip((t - 0.3) / 0.05, 0, 1))   # flick: +540 ms in 50 ms
    res = {}
    for leak in (0.0, 1.0):
        o, _ = ep3sim.run_c(np.zeros_like(t), SR, vary={"slider_pos": pos}, bias_leak=leak, sustain=0, dry=0,
                            glide_ms=1, head_slew=12, cable_pf=0)
        res[leak] = o
    umax = res[1.0][:, 4].max()
    a = np.abs(res[1.0][int(0.3 * SR):int(1.4 * SR), 0]).max()
    b = np.abs(res[0.0][int(0.3 * SR):int(1.4 * SR), 0]).max()
    o2, _ = ep3sim.run_c(np.zeros(int(1.0 * SR)), SR, bias_leak=1.0, sustain=0, dry=0, cable_pf=0)
    c = np.abs(o2[int(0.5 * SR):, 0]).max()
    # reference: the echo of a nominal input (1 kHz, -18 dBFS RMS) at the same settings
    on, _ = ep3sim.run_c(np.concatenate([tone(1000, 0.3, 10 ** (-18 / 20) * np.sqrt(2)), np.zeros(int(0.5 * SR))]),
                         SR, sustain=0, dry=0, cable_pf=0)
    ref = np.abs(on[int(0.35 * SR):, 0]).max()
    rel = db(a / ref)
    # level is APPROX (no source gives it): check the mechanism, not a loudness target
    ok = rel > -60 and b < 1e-9 and c < 1e-9
    rec("E11", "Bias leak: only a very fast head move (u > ~4.6) brings the 100 kHz bias into the audio band",
        ok, f"peak head speed u = {umax:.1f} (bias lands near {100 / umax:.0f} kHz); bias leak peak {rel:.0f} dB re a normal echo at Bias Leak 1 (present: > -60; level APPROX), "
        f"without leak {db(b) if b > 0 else -999:.0f} dBFS; slider still: {db(c) if c > 0 else -999:.0f} dBFS")


# ---------------------------------------------------------------- E12 ---
def e12():
    imp = np.zeros(int(1.0 * 96000))
    imp[0] = 0.5
    errs = []
    for sr in (44100, 96000):
        o, _ = ep3sim.run_c(imp[:int(0.8 * sr)], sr, slider_pos=0.5, sustain=0, dry=0, cable_pf=0)
        errs.append(abs(first_echo_ms(o, sr=sr) - 330))
    x = tone(440, 1.0, 0.1)
    x[1000:1010] = np.nan
    o, _ = ep3sim.run_c(x, SR, srswitch=(24000, 96000))
    ok = max(errs) < 0.3 and not np.isnan(o).any() and np.abs(o[:, 0]).max() < 1.0
    rec("E12", "44.1 / 96 kHz delay accuracy; NaN input and a sample-rate change mid-stream are safe",
        ok, f"delay error 44.1k {errs[0]:.3f} ms, 96k {errs[1]:.3f} ms; NaN in output: {np.isnan(o).any()}")


# ---------------------------------------------------------------- E13 ---
def e13():
    secs = 1.0
    t = np.arange(int(secs * SR)) / SR
    x = tone(220, secs, 0.1)
    eo = np.where(t < 0.5, 1.0, 0.0)
    o, _ = ep3sim.run_c(x, SR, vary={"echo_on": eo}, dry=0, sustain=0.5, slider_pos=0.05)
    y = o[:, 0]
    from scipy.signal import butter, sosfiltfilt
    hp = sosfiltfilt(butter(8, 4000, "hp", fs=SR, output="sos"), y)
    click = db(np.abs(hp[int(0.45 * SR):int(0.6 * SR)]).max() / np.abs(y[int(0.3 * SR):int(0.45 * SR)]).max())
    gone = rms(y[int(0.65 * SR):])
    rec("E13", "ECHO on/off footswitch fades out without a click", click < -60 and gone < 1e-5,
        f"energy above 4 kHz at the switch: {click:.0f} dB re signal peak (220 Hz echo; limit -60); "
        f"echo after: {db(gone) if gone > 0 else -999:.0f} dBFS")


# ---------------------------------------------------------------- E14 ---
def e14():
    # documented claim: Echo Sustain "runs away above ~0.8"
    n = int(6 * SR)
    x = np.zeros(n)
    x[:int(0.05 * SR)] = tone(300, 0.05, 0.02)
    g = {}
    for sv in (0.7, 0.75, 0.8, 0.85):
        o, _ = ep3sim.run_c(x, SR, sustain=sv, dry=0, slider_pos=0.2, cable_pf=0, protect=0)
        y = o[:, 0]
        g[sv] = db(rms(y[int(5 * SR):int(5.5 * SR)]) / rms(y[int(1 * SR):int(1.5 * SR)]))
    ok = g[0.7] < 0 and g[0.75] < 0 and g[0.8] > 0 and g[0.85] > 0
    rec("E14", "Echo Sustain threshold: repeats decay at 0.75 and build up (run away) from 0.8",
        ok, "level change 1 s -> 5 s: " + ", ".join(f"{k}: {v:+.1f} dB" for k, v in g.items()))


# ---------------------------------------------------------------- E15 ---
def e15():
    # HOLD: input is removed from the record path and the repeat gain goes to Hold Feedback (1.0)
    secs = 4.0
    t = np.arange(int(secs * SR)) / SR
    x = tone(400, secs, 0.05) * (t < 0.3)
    x2 = tone(900, secs, 0.05) * (t > 1.5) * (t < 1.8)          # played while HOLD is on
    hold = (t > 1.0) * 1.0
    o, _ = ep3sim.run_c(x + x2, SR, vary={"hold": hold}, sustain=0.4, dry=0, slider_pos=0.5, cable_pf=0)
    y = o[:, 0]
    a, b = rms(y[int(1.2 * SR):int(1.5 * SR)]), rms(y[int(3.2 * SR):int(3.5 * SR)])
    seg = y[int(1.9 * SR):int(2.5 * SR)]
    Y = np.abs(np.fft.rfft(seg * np.hanning(len(seg))))
    fr = np.fft.rfftfreq(len(seg), 1 / SR)
    new_in = Y[np.argmin(np.abs(fr - 900))] / Y[np.argmin(np.abs(fr - 400))]
    drift = db(b / a)
    ok = abs(drift) < 3 and db(new_in) < -40
    rec("E15", "HOLD: repeats keep circulating (within ±3 dB over 2 s); input played during HOLD is not recorded",
        ok, f"echo level 2 s later: {drift:+.1f} dB; 900 Hz played during HOLD vs held 400 Hz: {db(new_in):.0f} dB")


# ---------------------------------------------------------------- E16 ---
def e16():
    secs = 3.0
    t = np.arange(int(secs * SR)) / SR
    stop = (t > 1.0) * 1.0
    o, _ = ep3sim.run_c(tone(1000, secs, 0.05), SR, vary={"tape_stop": stop}, stop_time=1.0, sustain=0, dry=0,
                        slider_pos=0.2, cable_pf=0)
    v = o[:, 5]
    mid = v[int(1.5 * SR)]
    y = o[:, 0]
    f_mid = zc_freq(y[int(1.45 * SR):int(1.55 * SR)])
    end = rms(y[int(2.3 * SR):])
    # The echo heard at 1.5 s was written while the tape was faster. With v(t) = 2 - t, the tape
    # written at tw reaches the head when the integral of v from tw to 1.5 s equals the head
    # distance (0.168 s of tape at slider 0.2): (0.5 + D/2) D = 0.168 -> D = 0.2655 s,
    # v(tw) = 0.7655, pitch = 1000 x 0.5 / 0.7655 = 653 Hz.
    D = -0.5 + np.sqrt(0.25 + 2 * 0.168)
    f_exp = 1000 * 0.5 / (0.5 + D)
    ok = v[int(0.9 * SR)] == 1 and abs(mid - 0.5) < 0.01 and abs(f_mid - f_exp) < 10 and end < 1e-4
    rec("E16", "TAPE STOP: tape speed ramps to zero over Stop Time; echo pitch = speed now / speed when written; silent after",
        ok, f"speed at 0.5 s into a 1 s stop: {mid:.3f}; echo pitch then {f_mid:.0f} Hz (expect {f_exp:.0f}); "
        f"RMS after stop {db(end):.0f} dBFS")


# ---------------------------------------------------------------- E17 ---
def e17():
    secs = 3.0
    n = int(secs * SR)
    taps = np.zeros(n)
    for i, tt in enumerate((0.2, 0.8, 1.4, 2.0)):              # 100 BPM
        taps[int(tt * SR):] = i + 1
    o, _ = ep3sim.run_c(np.zeros(n), SR, vary={"tap": taps}, mode=1, tap_div=3, tap_type=0, glide_ms=1)
    bpm, d = o[-1, 3], o[-1, 2]
    o2, _ = ep3sim.run_c(np.zeros(n), SR, vary={"tap": taps}, mode=1, tap_div=2, tap_type=1, glide_ms=1)
    ok = abs(bpm - 100) < 0.01 and abs(d - 600) < 0.1 and abs(o2[-1, 2] - 450) < 0.1
    rec("E17", "TAP: four taps at 100 BPM -> 1/4 = 600 ms; dotted 1/8 = 450 ms", ok,
        f"tap BPM {bpm:.3f}; 1/4 delay {d:.2f} ms; dotted 1/8 {o2[-1, 2]:.2f} ms")


# ---------------------------------------------------------------- C01 ---
def c01():
    secs = 10.0
    x = tone(220, secs, 0.1) * (np.arange(int(secs * SR)) % SR < SR // 4)
    _, ns = ep3sim.run_c(x, SR, quiet=False, sustain=0.6)
    pct = ns * SR / 1e9 * 100
    rec("C01", "CPU proxy (C translation, gcc -O2, includes per-sample timer overhead)", pct < 10,
        f"{ns:.0f} ns/sample = {pct:.2f} % of one core at 48 kHz (not a Live measurement)")


if __name__ == "__main__":
    for f in (x01, e01, e02, e03, e04, e05, e06, e07, e08, e09, e10, e11, e12, e13, e14, e15, e16, e17, c01):
        f()
    n_ok = sum(r[2] == "PASS" for r in RES)
    out = ["# EP-3 test report (v0.1.0-dev)", "",
           "Environment: the shipped `dsp/ep3_core.genexpr`, translated to C (gx_cgen) and cross-checked against "
           "a Python execution of the same source (X01). **Not** Max 9 / Live results; those are in "
           "`docs/TEST_PLAN_Max_Live.md`.", "", f"**{n_ok}/{len(RES)} passed** ({time.strftime('%Y-%m-%d')})", "",
           "| ID | Test | Result | Detail |", "|---|---|---|---|"]
    out += [f"| {a} | {b} | {c} | {d} |" for a, b, c, d in RES]
    open(os.path.join(HERE, "EP3_TEST_REPORT.md"), "w").write("\n".join(out) + "\n")
    print(f"{n_ok}/{len(RES)} passed")
    sys.exit(0 if n_ok == len(RES) else 1)
