"""
Tier-B behavioural checks for a Max/Live recording (or the C reference).
usage: python3 tests/golden/check_behaviour.py <scenario name> <recording.wav>
Limits are those of tests/test_remediation.py (R01, R08, R10); event times are found from
the signal, so the Max scheduler's timing jitter does not matter.
"""
import sys, json
import numpy as np
from scipy.signal import butter, sosfiltfilt

SR = 48000


def db(x):
    return float(20 * np.log10(max(abs(x), 1e-30)))


def rms(y):
    return float(np.sqrt(np.mean(np.square(y))))


def click(y, a, b, ra, rb, fc=6000):
    hp = sosfiltfilt(butter(8, fc, "hp", fs=SR, output="sos"), y)
    return db(np.abs(hp[int(a * SR):int(b * SR)]).max() / max(np.abs(y[int(ra * SR):int(rb * SR)]).max(), 1e-12))


def metrics(name, y, t_event=None):
    if name.startswith("BEH1") or name.startswith("BEH2"):
        te = 1.0 if t_event is None else t_event
        ref = rms(y[int((te - 0.3) * SR):int((te + 0.7) * SR)])
        lv = {s: db(rms(y[int((te + s - 1) * SR):int((te + s) * SR)]) / ref) for s in (1, 5, 9, 19, 30) if te + s <= len(y) / SR}
        settle = 5 if name.startswith("BEH1") else 19
        later = [v for s, v in lv.items() if s >= settle]
        ok = max(lv.values()) <= 1.0 and (max(later) - min(later)) <= 2.0
        return {"levels_db_re_pre_hold": {str(k): round(v, 1) for k, v in lv.items()},
                "max_db": round(max(lv.values()), 1), "spread_after_settle_db": round(max(later) - min(later), 1), "pass": ok}
    if name.startswith("BEH3"):
        te = 1.5 if t_event is None else t_event
        c = click(y, te - 0.02, te + 0.15, te - 1.0, te - 0.05)
        return {"click_db": round(c, 1), "pass": c < -60}
    if name.startswith("BEH4"):
        te = 4.0 if t_event is None else t_event
        c = click(y, te - 0.02, te + 0.6, te - 1.0, te - 0.1)
        after = db(rms(y[int((te + 2) * SR):int((te + 3) * SR)]) / rms(y[int((te - 1) * SR):int((te - 0.1) * SR)]))
        return {"click_db": round(c, 1), "level_after_db": round(after, 1), "pass": c < -60 and abs(after) < 1}
    raise ValueError(name)


def find_event(name, y):
    """locate the event in a host recording (scheduler timing is not sample-accurate)"""
    e = np.array([rms(y[i:i + 480]) for i in range(0, len(y) - 480, 480)])
    if name.startswith("BEH4"):                       # echo mutes briefly at the loop change
        k = int(np.argmin(e[int(2.5 * 100):int(6 * 100)])) + int(2.5 * 100)
        return max(k / 100 - 0.05, 0.1)
    return None                                       # BEH1-3: the harness fires them at fixed times; ±10 ms is fine


if __name__ == "__main__":
    from scipy.io import wavfile
    name, path = sys.argv[1], sys.argv[2]
    sr, y = wavfile.read(path)
    assert sr == SR, "record at 48 kHz"
    y = y.astype(float)
    y = y[:, 0] if y.ndim > 1 else y
    m = metrics(name, y, find_event(name, y))
    print(json.dumps(m, indent=1))
    print("PASS" if m["pass"] else "FAIL")
    sys.exit(0 if m["pass"] else 1)
