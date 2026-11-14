"""
EP-3 host-validation scenarios, shared by make_golden_ep3.py (reference renders from the tested
C execution of the GenExpr source), build/build_harness_ep3.py (the Max 9 harness patch) and
check_behaviour.py (tier-B metrics).

Tier A (sample-exact): static parameters only; noise, drift and flutter off so the result is
deterministic. The Max recording must match the reference within -80 dB (compare.py).
Tier B (behavioural): timed events (HOLD, ECHO TONE switch, loop-length change) that Max can't
schedule sample-accurately; judged by the same metrics and limits as tests/test_remediation.py.
All at 48 kHz.
"""
import numpy as np

SR = 48000
QUIET = {"noise_db": -120, "wow": 0, "flutter": 0}


def pluck(f0, secs, amp):
    tt = np.arange(int(secs * SR)) / SR
    y = sum((1 / k) * np.sin(2 * np.pi * f0 * k * tt + k) * np.exp(-3 * k ** 0.5 * tt) for k in range(1, 13))
    return amp * y / np.abs(y).max()


def phrase(secs, gap=0.5):
    y = np.zeros(int(secs * SR))
    for i, st in enumerate(np.arange(0, 2.0, gap)):
        n = pluck((196, 247, 294, 330)[i % 4], 0.5, 0.2)
        a = int(st * SR)
        y[a:a + len(n)] += n
    return y


def tone(f, secs, amp, on=None):
    t = np.arange(int(secs * SR)) / SR
    y = amp * np.sin(2 * np.pi * f * t)
    if on is not None:
        y = y * (t < on)
    return y


# Tier A: name -> (input signal, static parameters, seconds)
TIER_A = {
    "GOLD1_bright_feedback": (lambda: phrase(5.0), dict(QUIET, sustain=0.6), 5.0),
    "GOLD2_dark_feedback": (lambda: phrase(5.0), dict(QUIET, sustain=0.6, pb_eq=1), 5.0),
    "GOLD3_sos_loop2s": (lambda: phrase(7.0), dict(QUIET, sos=1, loop_s=2), 7.0),
    "GOLD4_oscillation_short": (lambda: phrase(6.0), dict(QUIET, sustain=0.95, slider_pos=0.1), 6.0),
    "GOLD5_voice_late_cable0": (lambda: phrase(4.0), dict(QUIET, sustain=0.4, pre_bypass=0, cable_pf=0, echo=0.8), 4.0),
}

# Tier B: name -> (input, static parameters, seconds, list of (time_s, param, value))
TIER_B = {
    "BEH1_hold_bright": (lambda: pluck(196, 0.6, 0.2), dict(QUIET, sustain=0.4, dry=0, cable_pf=0, loop_s=112.5), 32.0,
                         [(1.0, "hold", 1)]),
    "BEH2_hold_dark": (lambda: pluck(196, 0.6, 0.2), dict(QUIET, sustain=0.4, dry=0, cable_pf=0, loop_s=112.5, pb_eq=1), 32.0,
                       [(1.0, "hold", 1)]),
    "BEH3_echo_tone_switch": (lambda: tone(220, 3.0, 0.1), dict(QUIET, sustain=0.5, slider_pos=0.1), 3.0,
                              [(1.5, "pb_eq", 1)]),
    "BEH4_loop_change": (lambda: tone(220, 8.0, 0.05), dict(QUIET, sustain=0.4, dry=0, cable_pf=0, slider_pos=0.1, loop_s=112.5), 8.0,
                         [(4.0, "loop_s", 4)]),
}
