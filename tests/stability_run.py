"""
EP-3 v0.1.3-dev — engine CPU proxy and long-duration stability (Workstream G).

Runs dsp/ep3_core.genexpr as C (tests/genexpr_sim), single thread, gcc -O2. This is an ENGINE proxy:
it is not Max's gen~ code, not Live's audio thread, and has no host overhead (UI, Live's buffer
scheme). Host CPU, transport, bypass, save/reopen and dropout checks are BLOCKED (host plan L08, L17, L22-L24).

1. CPU proxy: ns per sample at 44.1 / 48 / 96 kHz, idle (silence) and under load (riddim, Sustain 0.9
   into oscillation, HOLD, DRIVE), as % of one core in real time. Median of 3.
2. 30-minute stability render (streamed through files: it does not fit in memory) at 48 kHz: riddim with dense automation (Echo Delay slider, Sustain incl.
   rides into oscillation, Echo Volume, Repeat LP/HP, ECHO TONE, VOICE, HOLD, DRIVE, STOP every few
   seconds; seeded). Checks: no NaN/Inf, peak never above the output ceiling, no runaway (1-s RMS stays
   bounded), and automation discontinuities: 10 ms windows whose energy above 10 kHz jumps > 20 dB over
   the median of the surrounding second, compared with the same render without automation.

Run: python3 tests/stability_run.py -> tests/stability_results.json
"""
import os, sys, json, time
import numpy as np
from scipy.signal import butter, sosfilt

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(HERE, "genexpr_sim"))
sys.path.insert(0, HERE)
import ep3sim  # noqa: E402
from hold_study import band, BAR  # noqa: E402

RES = {}


def cpu():
    out = {}
    for sr in (44100, 48000, 96000):
        n = int(20 * sr)
        idle = np.zeros(n)
        load = np.resize(band(8), n) if sr == 48000 else np.resize(band(8), n)
        t = np.arange(n) / sr
        for lab, x, kw in (("idle", idle, {}),
                           ("load", load, dict(vary={"sustain": np.where(t > 8, 0.9, 0.6), "hold": ((t > 14) & (t < 17)) * 1.0,
                                                     "drive": ((t > 5) & (t < 6)) * 1.0}))):
            ns = sorted(ep3sim.run_c(x, sr, quiet=False, **kw)[1] for _ in range(3))[1]
            out[f"{sr}.{lab}"] = {"ns_per_sample": round(ns, 1), "pct_of_one_core_realtime": round(ns * sr / 1e7, 2)}
            print(sr, lab, out[f"{sr}.{lab}"], flush=True)
    RES["cpu_proxy"] = out


class Automation:
    """seeded breakpoint automation, evaluated chunk by chunk (the 30-min run does not fit in memory)"""
    SPEC = {  # name: (kind, lo, hi, period s)  kind s = smooth ramp, h = held step, g = gate (dur s, probability)
        "slider_pos": ("s", 0, 100, 3.1), "sustain": ("s", 0.3, 1.0, 4.3), "echo": ("s", 0.3, 1.0, 5.7),
        "fb_lp_hz": ("s", 700, 20000, 6.3), "fb_hp_hz": ("s", 10, 900, 7.1),
        "pb_eq": ("h", 0, 1, 9.7), "pre_bypass": ("h", 0, 1, 13.3),
        "hold": ("g", 3.0, 0.4, 11.0), "drive": ("g", 0.3, 0.2, 2.3), "tape_stop": ("g", 2.0, 0.3, 17.0),
    }

    def __init__(self, seconds, seed=11):
        rng = np.random.default_rng(seed)
        self.bp = {}
        for k, (kind, a, b, per) in self.SPEC.items():
            m = int(seconds / per) + 3
            self.bp[k] = rng.random(m) < b if kind == "g" else rng.uniform(a, b, m)
        self.names = list(self.SPEC)

    def eval(self, t):
        cols = []
        for k in self.names:
            kind, a, b, per = self.SPEC[k]
            v, idx = self.bp[k], (t / per).astype(int)
            if kind == "s":
                cols.append(np.interp(t, np.arange(len(v)) * per, v))
            elif kind == "h":
                cols.append(v[idx].round())
            else:
                cols.append((v[idx] & ((t % per) < a)) * 1.0)
        return cols


def hf_jumps(y, sr):
    hp = sosfilt(butter(4, 10000, "hp", fs=sr, output="sos"), y)
    w = int(0.01 * sr)
    k = len(hp) // w
    e = 10 * np.log10(np.mean(hp[:k * w].reshape(k, w) ** 2, axis=1) + 1e-20)
    from scipy.ndimage import median_filter
    med = median_filter(e, size=101, mode="nearest")
    return int(np.sum(e - med > 20)), float(np.max(e - med)), np.where(e - med > 20)[0] * 0.01, e


def attribute(times, auto, y, sr, e_hf):
    """nearest automation event before each flagged window (gate/step edges; ramps excluded) and the
    HF burst level re the broadband 1-s RMS around it"""
    ev = []
    for k in auto.names:
        kind, a, b, per = auto.SPEC[k]
        if kind == "s":
            continue
        v = auto.bp[k]
        for i in range(len(v)):
            t0 = i * per
            if kind == "g" and v[i]:
                ev += [(t0, k + " on"), (t0 + a, k + " off")]
            elif kind == "h" and i and round(v[i]) != round(v[i - 1]):
                ev.append((t0, k + " switch"))
    ev.sort()
    et = np.array([e[0] for e in ev])
    cause, rel = {}, []
    for t in times:
        j = np.searchsorted(et, t) - 1
        lab = ev[j][1] if j >= 0 and t - et[j] < 2.5 else "none within 2.5 s (ramps only)"
        key = lab.replace(" on", "").replace(" off", "") + (" (" + lab.split()[-1] + ")" if lab.endswith((" on", " off")) else "")
        cause[key] = cause.get(key, 0) + 1
        a, b = int(max(0, t - 0.5) * sr), int((t + 0.5) * sr)
        bb = 10 * np.log10(np.mean(y[a:b] ** 2) + 1e-20)
        rel.append(e_hf[int(t / 0.01)] - bb)
    return dict(sorted(cause.items(), key=lambda x: -x[1])), (round(float(np.max(rel)), 1) if rel else None), (round(float(np.median(rel)), 1) if rel else None)


def long_run(minutes=30, sr=48000):
    import subprocess, tempfile
    exe = ep3sim._build()
    n = int(minutes * 60 * sr)
    # no drums: hi-hat transients above 10 kHz would mask clicks (the first run with drums flagged ~5000
    # windows with AND without automation, so it could not discriminate)
    loop = band(16, ("bass", "organ", "skank", "melodica"))
    auto = Automation(minutes * 60 + 1)
    out = {}
    CH = 60 * sr
    for lab in ("automated", "control_no_automation"):
        with tempfile.TemporaryDirectory(dir=os.environ.get("EP3_SCRATCH")) as td:
            fi, fo = os.path.join(td, "in.bin"), os.path.join(td, "out.bin")
            names = auto.names if lab == "automated" else []
            with open(fi, "wb") as f:
                for a in range(0, n, CH):
                    idx = np.arange(a, min(n, a + CH))
                    cols = [loop[idx % len(loop)]] + (auto.eval(idx / sr) if names else [])
                    np.stack(cols, axis=1).astype(np.float64).tofile(f)
            fixed = dict(mode=0, bpm=75, sync_div=2, sync_type=1)
            if not names:
                fixed["sustain"] = 0.6
            t0 = time.time()
            r = subprocess.run([exe, str(sr), fi, str(1 + len(names)), ",".join(names) or "-", fo] + [f"{k}={v}" for k, v in fixed.items()],
                               capture_output=True, text=True, check=True)
            ns = float(r.stdout.split("ns_per_sample=")[1])
            os.remove(fi)
            o = np.memmap(fo, dtype=np.float64, mode="r").reshape(-1, 8)
            y = np.array(o[:, 0])
            finite = bool(np.isfinite(o[:, :2]).all())
            del o
        sec = len(y) // sr
        rr = 20 * np.log10(np.sqrt(np.mean(y[:sec * sr].reshape(sec, sr) ** 2, axis=1)) + 1e-20)
        jumps, worst, times, e_hf = hf_jumps(y, sr)
        cause, rel_max, rel_med = attribute(times, auto, y, sr, e_hf) if lab == "automated" else ({}, None, None)
        out[lab] = {
            "minutes": minutes, "finite": finite, "peak": round(float(np.abs(y).max()), 4),
            "ceiling_linear": round(10 ** (-0.3 / 20), 4), "rms_1s_max_dbfs": round(float(rr.max()), 1),
            "rms_1s_median_dbfs": round(float(np.median(rr)), 1),
            "seconds_above_minus6dBFS_rms": int(np.sum(rr > -6)),
            "hf_jump_windows_gt20dB": jumps, "hf_jump_worst_db": round(worst, 1),
            "hf_jump_cause_counts": cause, "hf_burst_db_re_broadband_rms_max": rel_max, "hf_burst_db_re_broadband_rms_median": rel_med,
            "ns_per_sample": round(ns, 1), "render_wall_s": round(time.time() - t0, 1),
        }
        print(lab, out[lab], flush=True)
        del y
    RES["long_run_48k"] = out


if __name__ == "__main__":
    if "--long-only" in sys.argv and os.path.exists(os.path.join(HERE, "stability_results.json")):
        RES.update(json.load(open(os.path.join(HERE, "stability_results.json"))))
    else:
        cpu()
    long_run()
    json.dump(RES, open(os.path.join(HERE, "stability_results.json"), "w"), indent=1)
