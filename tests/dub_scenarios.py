"""
EP-3 dub-production scenarios: repeatable audio examples + measurements.

Renders classic dub moves through the shipped engine (GenExpr source executed as C, as in the
other tests; NOT Max/Live) and measures what a dub engineer cares about: throw tails, riding the
feedback into oscillation and back, siren dives, filter sweeps in the loop, HOLD, tape stop,
DRIVE throws, sound-on-sound, BRIGHT vs DARK.

Source material is synthetic and deterministic (no samples): an offbeat organ/guitar skank chop,
a rim shot, and a one-drop kick, at 75 BPM. "Return" scenarios run the device as a send/return
effect (Echo Volume 1 = fully wet) and mix it with the dry source at unity, like a console.

Run: python3 tests/dub_scenarios.py  -> listening/*.wav and tests/DUB_SCENARIO_REPORT.md
"""
import os, sys, json
import numpy as np
from scipy.io import wavfile
from scipy.signal import butter, sosfiltfilt, hilbert

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, ".."))
sys.path.insert(0, os.path.join(HERE, "genexpr_sim"))
import ep3sim  # noqa: E402

SR = 48000
BPM = 75.0
BEAT = 60 / BPM
OUT = os.path.join(ROOT, "listening")
RES = {}


def db(x):
    return float(20 * np.log10(max(abs(x), 1e-30)))


def rms(y):
    return float(np.sqrt(np.mean(np.square(y)))) if len(y) else 0.0


def env_db(y, win=0.05):
    n = int(win * SR)
    k = len(y) // n
    return np.array([db(rms(y[i * n:(i + 1) * n])) for i in range(k)])


# ------------------------------------------------------------------ source material
def chop(f_root=196.0, dur=0.12):
    """offbeat skank: minor triad, organ-ish, fast decay, slight bite"""
    t = np.arange(int(0.25 * SR)) / SR
    y = np.zeros_like(t)
    for ratio in (1, 1.189, 1.498, 2.0):
        for h, a in ((1, 1.0), (2, 0.5), (3, 0.3), (4, 0.15)):
            y += a * np.sin(2 * np.pi * f_root * ratio * h * t)
    env = np.exp(-t / dur) * (1 - np.exp(-t / 0.002))
    return 0.12 * y * env / 4


def rim():
    t = np.arange(int(0.2 * SR)) / SR
    rng = np.random.default_rng(3)
    n = rng.standard_normal(len(t))
    n = sosfiltfilt(butter(2, [1500, 6000], "bp", fs=SR, output="sos"), n)
    y = 0.6 * n * np.exp(-t / 0.025) + 0.4 * np.sin(2 * np.pi * 420 * t) * np.exp(-t / 0.03)
    return 0.35 * y / np.abs(y).max()


def kick():
    t = np.arange(int(0.4 * SR)) / SR
    f = 50 + 70 * np.exp(-t / 0.04)
    return 0.5 * np.sin(2 * np.pi * np.cumsum(f) / SR) * np.exp(-t / 0.18)


def place(buf, snd, at):
    a = int(at * SR)
    if a >= len(buf):
        return
    b = min(len(buf), a + len(snd))
    buf[a:b] += snd[:b - a]


def riddim(bars, chops=True, rims=True, kicks=True, chop_bars=None):
    n = int(bars * 4 * BEAT * SR) + SR
    y = np.zeros(n)
    c, r, k = chop(), rim(), kick()
    for bar in range(bars):
        t0 = bar * 4 * BEAT
        if chops and (chop_bars is None or bar in chop_bars):
            for beat in range(4):
                place(y, c, t0 + (beat + 0.5) * BEAT)        # offbeat skank
        if rims:
            place(y, r, t0 + 2 * BEAT)                      # one-drop: rim and kick on 3
        if kicks:
            place(y, k, t0 + 2 * BEAT)
    return y


def render(x, **kw):
    o, _ = ep3sim.run_c(x, SR, quiet=False, **kw)
    if np.isnan(o).any():
        RES.setdefault("NAN", []).append(str(list(kw))[:80])
    return o


def save(name, y):
    os.makedirs(OUT, exist_ok=True)
    pk = np.abs(y).max()
    if pk > 1:
        y = y / pk                                           # never clip the file (noted in the report)
    wavfile.write(os.path.join(OUT, name), SR, (np.clip(y, -1, 1) * 32767).astype(np.int16))


def note(key, val):
    RES[key] = val
    print(key, "=", val, flush=True)


SYNC_DOT8 = dict(mode=0, bpm=BPM, sync_div=2, sync_type=1)      # 1/8 dotted, the dub workhorse


# ------------------------------------------------------------------ D1 throw on the return
def d1_throw():
    src = riddim(6)
    n = len(src)
    t = np.arange(n) / SR
    # send only the chop on bar 2, beat 2-and (a "throw"); console send = 0 otherwise
    send = np.zeros(n)
    a = int((1 * 4 * BEAT + 1.5 * BEAT) * SR)
    send[a:a + int(0.25 * SR)] = 1.0
    sent = riddim(6, rims=False, kicks=False) * send
    o = render(sent, echo=1.0, sustain=0.6, **SYNC_DOT8)
    ret = o[:, 0]
    mix = src + ret
    save("D1_throw_return_dot8.wav", mix)
    e = env_db(ret, 0.02)
    period = 0.75 * BEAT
    peaks = []
    for k in range(1, 12):
        c = (a / SR + k * period)
        w = ret[int((c - 0.03) * SR):int((c + 0.15) * SR)]
        peaks.append(db(np.abs(w).max()) if len(w) else -200)
    audible = sum(1 for p in peaks if p > peaks[0] - 30)
    note("D1.repeat_peaks_dbfs", [round(p, 1) for p in peaks[:8]])
    note("D1.repeats_within_30dB", audible)
    note("D1.decay_db_per_repeat", round((peaks[5] - peaks[0]) / 5, 2))
    note("D1.return_peak_vs_dry_peak_db", round(db(np.abs(ret).max() / np.abs(src).max()), 1))


# ------------------------------------------------------------------ D2 ride into oscillation and back
def d2_ride():
    """ride Sustain into oscillation while the repeats are still sounding, hold it, pull back"""
    for lab, kw in (("dot8", SYNC_DOT8), ("slap114ms", dict(slider_pos=0.1))):
        n = int(14 * SR)
        t = np.arange(n) / SR
        x = np.zeros(n)
        for k in range(4):
            place(x, chop(), 0.3 + k * BEAT / 2)
        sus = np.interp(t, [0, 1.5, 2.5, 8, 8.3, 14], [0.6, 0.6, 0.95, 0.95, 0.45, 0.45])
        o = render(x, vary={"sustain": sus}, echo=1.0, **kw)
        y = o[:, 0]
        save(f"D2_ride_into_oscillation_{lab}.wav", y)
        e = env_db(y, 0.05)
        tt = np.arange(len(e)) * 0.05
        eq = e[(tt > 6.5) & (tt < 8)]
        reach = next((tt[i] - 2.5 for i in range(len(e)) if tt[i] > 2.5 and e[i] > eq.mean() - 3), None)
        down = next((tt[i] - 8.3 for i in range(len(e)) if tt[i] > 8.3 and e[i] < eq.mean() - 30), None)
        note(f"D2.{lab}.oscillation_plateau_dbfs_rms", round(float(eq.mean()), 1))
        note(f"D2.{lab}.plateau_spread_db", round(float(eq.max() - eq.min()), 1))
        note(f"D2.{lab}.seconds_to_plateau_after_ride", None if reach is None else round(float(reach), 1))
        note(f"D2.{lab}.seconds_to_minus30dB_after_pulling_to_0.45", None if down is None else round(float(down), 2))
        note(f"D2.{lab}.peak", round(float(np.abs(y).max()), 3))


# ------------------------------------------------------------------ D3 siren dive (slider during oscillation)
def d3_siren():
    secs = 14.0
    n = int(secs * SR)
    t = np.arange(n) / SR
    x = np.zeros(n)
    place(x, rim(), 0.4)
    sus = np.interp(t, [0, 1, 3, 11, 11.5, 14], [0.6, 0.6, 0.92, 0.92, 0.4, 0.4])
    pos = np.interp(t, [0, 4, 5.5, 7, 8.5, 10, 14], [0.4, 0.4, 0.05, 0.9, 0.2, 0.6, 0.6])   # hand throws
    o = render(x, vary={"sustain": sus, "slider_pos": pos}, echo=1.0, glide_ms=60)
    y = o[:, 0]
    save("D3_siren_slider_dive.wav", y)
    hp = sosfiltfilt(butter(8, 8000, "hp", fs=SR, output="sos"), y)
    note("D3.peak", round(float(np.abs(y).max()), 3))
    note("D3.u_range", [round(float(o[:, 4].min()), 2), round(float(o[:, 4].max()), 2)])
    note("D3.hf_above_8k_peak_re_signal_db", round(db(np.abs(hp[int(4 * SR):int(11 * SR)]).max() / np.abs(y[int(4 * SR):int(11 * SR)]).max()), 1))


# ------------------------------------------------------------------ D4 filter sweep in the loop
def d4_filter():
    secs = 16.0
    n = int(secs * SR)
    t = np.arange(n) / SR
    x = riddim(2, rims=True, kicks=False)
    x = np.concatenate([x, np.zeros(n - len(x))])[:n]
    lp = np.exp(np.interp(t, [0, 3, 8, 12, 16], np.log([20000, 20000, 700, 3000, 20000])))
    hpf = np.exp(np.interp(t, [0, 8, 12, 16], np.log([10, 10, 900, 10])))
    out = {}
    for res in (0.0, 0.6, 1.0):
        o = render(x, vary={"fb_lp_hz": lp, "fb_hp_hz": hpf}, fb_res=res, sustain=0.75, echo=1.0, **SYNC_DOT8)
        y = o[:, 0]
        if res == 0.6:
            save("D4_loop_filter_sweep_res06.wav", y)
        out[res] = {"peak": round(float(np.abs(y).max()), 3), "rms_8_12s_dbfs": round(db(rms(y[8 * SR:12 * SR])), 1),
                    "nan": bool(np.isnan(o).any())}
    note("D4.by_resonance", out)


# ------------------------------------------------------------------ D5 HOLD freeze and release
def d5_hold():
    for pbe, lab in ((0, "BRIGHT"), (1, "DARK")):
        src = riddim(8)
        n = len(src)
        t = np.arange(n) / SR
        send = ((t > 1.5 * 4 * BEAT) & (t < 2 * 4 * BEAT)) * 1.0       # send half a bar of the riddim
        hold = ((t > 2 * 4 * BEAT) & (t < 6 * 4 * BEAT)) * 1.0         # freeze for 4 bars, riddim keeps playing
        o = render(src * send, vary={"hold": hold}, echo=1.0, sustain=0.5, pb_eq=pbe, **SYNC_DOT8)
        ret = o[:, 0]
        save(f"D5_hold_freeze_{lab}.wav", src + ret)
        b = 4 * BEAT
        lv = [round(db(rms(ret[int((2 + k) * b * SR):int((3 + k) * b * SR)])), 1) for k in range(4)]
        rel = round(db(rms(ret[int(6.5 * b * SR):int(7.5 * b * SR)])), 1)
        note(f"D5.{lab}.held_bar_levels_dbfs", lv)
        note(f"D5.{lab}.level_one_bar_after_release_dbfs", rel)
        note(f"D5.{lab}.held_vs_sent_level_db", round(lv[0] - db(rms(ret[int(1.5 * b * SR):int(2 * b * SR)])), 1))


# ------------------------------------------------------------------ D5b HOLD with resonant loop filter
def d5b_hold_resonance():
    n = int(30 * SR)
    t = np.arange(n) / SR
    x = np.zeros(n)
    place(x, chop(), 0.3)
    place(x, rim(), 0.8)
    o = render(x, vary={"hold": (t > 1.5) * 1.0}, echo=1.0, sustain=0.5, fb_res=1.0, fb_lp_hz=1200, **SYNC_DOT8)
    y = o[:, 0]
    save("D5b_hold_with_resonant_loop_filter.wav", y)
    lv = [round(db(rms(y[int(s * SR):int((s + 1) * SR)])), 1) for s in (2, 5, 10, 20, 28)]
    note("D5b.levels_dbfs_at_2_5_10_20_28s", lv)
    note("D5b.peak", round(float(np.abs(y).max()), 3))


# ------------------------------------------------------------------ D6 tape stop at the end of a phrase
def d6_stop():
    src = riddim(4)
    n = len(src) + 3 * SR
    src = np.concatenate([src, np.zeros(3 * SR)])
    t = np.arange(n) / SR
    stop = ((t > 3 * 4 * BEAT) & (t < 3 * 4 * BEAT + 2.5)) * 1.0
    o = render(src, vary={"tape_stop": stop}, echo=0.5, sustain=0.55, stop_time=1.2, **SYNC_DOT8)
    save("D6_tape_stop_insert.wav", o[:, 0])
    note("D6.peak", round(float(np.abs(o[:, 0]).max()), 3))


# ------------------------------------------------------------------ D7 DRIVE throw
def d7_drive():
    n = int(10 * SR)
    t = np.arange(n) / SR
    x = np.zeros(n)
    place(x, rim(), 0.5)
    place(x, rim(), 0.5 + 2 * BEAT)
    drive = ((t > 0.45) & (t < 0.7)) * 1.0
    o = render(x, vary={"drive": drive}, echo=1.0, sustain=0.6, **SYNC_DOT8)
    o0 = render(x, echo=1.0, sustain=0.6, **SYNC_DOT8)
    y, y0 = o[:, 0], o0[:, 0]
    save("D7_drive_throw.wav", np.concatenate([y0, y]))
    w = slice(int(0.9 * SR), int(1.6 * SR))
    note("D7.first_repeats_level_gain_db", round(db(rms(y[w]) / rms(y0[w])), 1))
    s = y[w]
    Y = np.abs(np.fft.rfft(s * np.hanning(len(s))))
    s0 = y0[w]
    Y0 = np.abs(np.fft.rfft(s0 * np.hanning(len(s0))))
    fr = np.fft.rfftfreq(len(s), 1 / SR)
    note("D7.spectral_centroid_hz_plain_vs_drive", [round(float((Y0 * fr).sum() / Y0.sum())), round(float((Y * fr).sum() / Y.sum()))])
    note("D7.peak", round(float(np.abs(y).max()), 3))


# ------------------------------------------------------------------ D8 sound-on-sound layering (factory 8 s loop)
def d8_sos():
    n = int(26 * SR)
    t = np.arange(n) / SR
    x = np.zeros(n)
    for k in range(4):
        place(x, chop(196), 0.5 + k * 1.0)                         # layer 1, pass 1
    for k in range(4):
        place(x, rim(), 9.0 + k * 1.0)                             # layer 2, pass 2
    o = render(x, sos=1, echo=0.6)
    save("D8_sos_layering_8s.wav", o[:, 0])
    note("D8.peak", round(float(np.abs(o[:, 0]).max()), 3))


# ------------------------------------------------------------------ D9 BRIGHT vs DARK repeat colour
def d9_tone():
    x = np.zeros(int(6 * SR))
    place(x, chop(), 0.2)
    place(x, rim(), 0.2)
    ys = []
    for pbe in (0, 1):
        for s in (0.55, 0.7):
            o = render(x, pb_eq=pbe, sustain=s, echo=1.0, **SYNC_DOT8)
            ys.append(o[:, 0])
            y = o[:, 0]
            period = 0.75 * BEAT
            pk = [db(np.abs(y[int((0.2 + k * period - 0.02) * SR):int((0.2 + k * period + 0.2) * SR)]).max()) for k in (1, 3, 6)]
            note(f"D9.{'BRIGHT' if pbe == 0 else 'DARK'}.sustain{s}.repeat1_3_6_peak_dbfs", [round(v, 1) for v in pk])
    save("D9_bright_vs_dark_s055_s070.wav", np.concatenate(ys))


if __name__ == "__main__":
    for f in (d1_throw, d2_ride, d3_siren, d4_filter, d5_hold, d5b_hold_resonance, d6_stop, d7_drive, d8_sos, d9_tone):
        print("##", f.__name__, flush=True)
        f()
    RES.setdefault("NAN", [])
    json.dump(RES, open(os.path.join(HERE, "dub_scenarios_results.json"), "w"), indent=1)
    print("NaN events:", RES["NAN"])
