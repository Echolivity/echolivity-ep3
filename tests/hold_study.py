"""
EP-3 v0.1.3-dev — HOLD musical assessment (Workstream C). Measurement only: no DSP change.

Engine: dsp/ep3_core.genexpr executed as C (tests/genexpr_sim), tape noise, wow and flutter ON
(device defaults). NOT Max / Live, and no listening has been done: the renders in
listening/hold_study/ are for the owner's listening session.

Material: synthetic, deterministic riddim at 75 BPM (no recordings are available in this
environment): bass line, organ bubble, offbeat skank, one-drop drums with hi-hats, melodica line.
Three captures are frozen: a full band bar, the melodica phrase alone, the skank + rim alone.

For each capture x ECHO TONE (BRIGHT/DARK) x feedback setting:
  - level retention: held level at bar 2 and bar 4 vs the first held pass, and vs the echo level just before HOLD
  - transient preservation: crest factor (peak / RMS) per bar
  - tone: spectral centroid per bar (shows whether the sag is level loss or high-frequency loss)
  - pumping: pass-to-pass level wobble around a smooth trend (dB)
  - recovery: release click (energy > 6 kHz around release vs the held signal) and time to fall 30 dB
  - noise accumulation: HOLD on an empty loop, tape noise at default, 60 s
Feedback settings: Sustain before HOLD 0.5 / 0.75; Hold Feedback (ADVANCED) 1.00 (default) / 1.02.

Run: python3 tests/hold_study.py -> tests/hold_study_results.json, listening/hold_study/*.wav
"""
import os, sys, json
import numpy as np
from scipy.io import wavfile
from scipy.signal import butter, sosfiltfilt

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, ".."))
sys.path.insert(0, os.path.join(HERE, "genexpr_sim"))
sys.path.insert(0, HERE)
import ep3sim  # noqa: E402
from dub_scenarios import chop, rim, kick, place, SR, BEAT, SYNC_DOT8, db, rms  # noqa: E402

OUT = os.path.join(ROOT, "listening", "hold_study")
BAR = 4 * BEAT
PASS = 0.75 * BEAT            # 1/8 dotted at 75 BPM = 0.6 s
RES = {}
NAN = []


def bass_note(f, dur):
    t = np.arange(int(dur * SR)) / SR
    y = np.sin(2 * np.pi * f * t) + 0.25 * np.sin(4 * np.pi * f * t) + 0.08 * np.sin(6 * np.pi * f * t)
    return 0.35 * y * (1 - np.exp(-t / 0.005)) * np.exp(-t / 0.6)


def bubble(f, dur=0.18):
    t = np.arange(int(dur * SR)) / SR
    y = sum(a * np.sin(2 * np.pi * f * k * t) for k, a in ((1, 1), (2, 0.6), (3, 0.3), (4, 0.2), (6, 0.1)))
    return 0.05 * y * np.exp(-t / 0.07) * (1 - np.exp(-t / 0.003))


def hat(rng):
    t = np.arange(int(0.06 * SR)) / SR
    n = sosfiltfilt(butter(4, 7000, "hp", fs=SR, output="sos"), rng.standard_normal(len(t)))
    return 0.08 * n / np.abs(n).max() * np.exp(-t / 0.012)


def melodica(f, dur):
    t = np.arange(int(dur * SR)) / SR
    ph = 2 * np.pi * np.cumsum(f * (1 + 0.004 * np.sin(2 * np.pi * 5.5 * t))) / SR
    y = sum((1 / k) * np.sin(k * ph) for k in range(1, 14))      # reedy saw
    env = (1 - np.exp(-t / 0.03)) * np.exp(-t / 1.5) * (t < dur - 0.02)
    return 0.07 * y * env


def band(bars, parts=("bass", "organ", "skank", "drums", "melodica")):
    n = int(bars * BAR * SR) + SR
    y = np.zeros(n)
    rng = np.random.default_rng(7)
    line = [(0, 55.0, 1.2), (1.5, 65.4, 0.45), (2.0, 73.4, 0.9), (3.0, 61.7, 0.8)]      # A1 C2 D2 B1
    mel = [(0.5, 440.0, 0.4), (1.0, 523.3, 0.4), (1.5, 587.3, 0.9), (2.75, 523.3, 0.25), (3.0, 440.0, 0.8)]
    for b in range(bars):
        t0 = b * BAR
        if "bass" in parts:
            for at, f, d in line:
                place(y, bass_note(f, d), t0 + at * BEAT)
        if "organ" in parts:
            for k in range(8):
                place(y, bubble(220.0 if k % 2 else 110.0), t0 + k * BEAT / 2 + BEAT / 4)
        if "skank" in parts:
            for beat in range(4):
                place(y, chop(), t0 + (beat + 0.5) * BEAT)
        if "drums" in parts:
            place(y, rim(), t0 + 2 * BEAT)
            place(y, kick(), t0 + 2 * BEAT)
            for k in range(8):
                place(y, hat(rng), t0 + k * BEAT / 2)
        if "melodica" in parts:
            for at, f, d in mel:
                place(y, melodica(f, d * BEAT), t0 + at * BEAT)
    return y


CAPTURES = {
    "fullband": ("bass", "organ", "skank", "drums", "melodica"),
    "melodica": ("melodica",),
    "skank_rim": ("skank", "drums"),
}
HOLD_BARS = 8
T_SEND = (1.0 * BAR, 2.0 * BAR)                 # send bar 2 to the echo
T_HOLD = (2.0 * BAR, (2 + HOLD_BARS) * BAR)     # HOLD for 8 bars from bar 3


def centroid(y):
    s = np.abs(np.fft.rfft(y * np.hanning(len(y))))
    f = np.fft.rfftfreq(len(y), 1 / SR)
    return float((s * f).sum() / max(s.sum(), 1e-20))


def crest(y):
    return db(np.abs(y).max() / max(rms(y), 1e-20))


def analyse(ret, key):
    seg = lambda a, b: ret[int(a * SR):int(b * SR)]
    h0 = T_HOLD[0]
    bars = [seg(h0 + k * BAR, h0 + (k + 1) * BAR) for k in range(HOLD_BARS)]
    lv = [db(rms(b)) for b in bars]
    pre = db(rms(seg(h0 - 0.5 * BAR, h0)))
    passes = [db(rms(seg(h0 + k * PASS, h0 + (k + 1) * PASS))) for k in range(int(HOLD_BARS * BAR / PASS))]
    p = np.array(passes)
    wob = float(np.max(np.abs(p[2:-1] - 0.5 * (p[1:-2] + p[3:])))) if len(p) > 4 else 0.0
    rel_t = T_HOLD[1]
    held = rms(seg(rel_t - PASS, rel_t))
    hp = sosfiltfilt(butter(8, 6000, "hp", fs=SR, output="sos"), ret)
    clk = db(np.abs(hp[int((rel_t - 0.02) * SR):int((rel_t + 0.05) * SR)]).max() /
             max(np.abs(ret[int((rel_t - 2 * PASS) * SR):int(rel_t * SR)]).max(), 1e-12))
    e = [db(rms(seg(rel_t + k * 0.05, rel_t + (k + 1) * 0.05))) for k in range(int(8 / 0.05))]
    down = next((k * 0.05 for k, v in enumerate(e) if v < db(held) - 30), None)
    RES[key] = {
        "pre_hold_echo_dbfs": round(pre, 1),
        "bar_levels_dbfs": [round(v, 1) for v in lv],
        "retention_bar2_db": round(lv[1] - lv[0], 1),
        "retention_bar4_db": round(lv[3] - lv[0], 1),
        "retention_bar8_db": round(lv[7] - lv[0], 1),
        "bar1_vs_pre_hold_db": round(lv[0] - pre, 1),
        "crest_db_bar1_bar4_bar8": [round(crest(bars[k]), 1) for k in (0, 3, 7)],
        "centroid_hz_bar1_bar4_bar8": [round(centroid(bars[k])) for k in (0, 3, 7)],
        "pass_wobble_db": round(wob, 2),
        "release_click_db": round(clk, 1),
        "release_to_minus30dB_s": None if down is None else round(down, 2),
        "peak": round(float(np.abs(ret).max()), 3),
    }
    print(key, RES[key], flush=True)


def run(x, **kw):
    o, _ = ep3sim.run_c(x, SR, quiet=False, **kw)
    if np.isnan(o).any():
        NAN.append(str(kw)[:80])
    return o[:, 0]


def save(name, y):
    os.makedirs(OUT, exist_ok=True)
    pk = np.abs(y).max()
    y = y / pk if pk > 1 else y
    wavfile.write(os.path.join(OUT, name), SR, (np.clip(y, -1, 1) * 32767).astype(np.int16))


def main():
    total = 2 + HOLD_BARS + 3
    for cap, parts in CAPTURES.items():
        src = band(total, parts)
        n = len(src)
        t = np.arange(n) / SR
        send = ((t >= T_SEND[0]) & (t < T_SEND[1])) * 1.0
        hold = ((t >= T_HOLD[0]) & (t < T_HOLD[1])) * 1.0
        for pbe, voice in ((0, "BRIGHT"), (1, "DARK")):
            for sus in (0.5, 0.75):
                for hfb in (1.0, 1.02):
                    if cap != "fullband" and (sus, hfb) != (0.5, 1.0):
                        continue                      # the full grid on the full band; defaults on the others
                    ret = run(src * send, vary={"hold": hold}, echo=1.0, sustain=sus, hold_fb=hfb, pb_eq=pbe, **SYNC_DOT8)
                    key = f"{cap}.{voice}.sus{sus}.holdfb{hfb}"
                    analyse(ret, key)
                    if (sus, hfb) == (0.5, 1.0) or cap == "fullband" and sus == 0.5:
                        save(f"HOLD_{cap}_{voice}_holdfb{hfb:.2f}.wav", 0.5 * band(total) + ret if cap == "fullband" else ret)
    # noise accumulation: HOLD on an empty loop for 60 s, default tape noise (-60), both voicings
    n = int(62 * SR)
    t = np.arange(n) / SR
    for pbe, voice in ((0, "BRIGHT"), (1, "DARK")):
        for hfb in (1.0, 1.02):
            y = run(np.zeros(n), vary={"hold": (t > 1.0) * 1.0}, echo=1.0, sustain=0.5, hold_fb=hfb, pb_eq=pbe, **SYNC_DOT8)
            RES[f"noise.{voice}.holdfb{hfb}"] = {f"rms_dbfs_at_{s}s": round(db(rms(y[int(s * SR):int((s + 1) * SR)])), 1) for s in (0, 5, 15, 30, 60)}
            print(f"noise.{voice}.holdfb{hfb}", RES[f"noise.{voice}.holdfb{hfb}"], flush=True)
    RES["NAN"] = NAN
    json.dump(RES, open(os.path.join(HERE, "hold_study_results.json"), "w"), indent=1)
    print("NaN events:", NAN)


if __name__ == "__main__":
    main()
