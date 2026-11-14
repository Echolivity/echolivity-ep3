"""
Echolivity EP-3: values derived by calculation from sourced component values.

Nothing here is measured. Each function states its inputs and where they come
from (see docs/SOURCES.md). The test file checks these numbers so the modelling
notes cannot drift from the arithmetic.
"""
import math

IPS_TO_MM = 25.4


def rc_corner_hz(r_ohm, c_farad):
    return 1.0 / (2.0 * math.pi * r_ohm * c_farad)


def db(x):
    return 20.0 * math.log10(x)


# --- Input FET stage (Q5, TIS58) -------------------------------------------
# Manual: pre-emphasis "3.3K resistor and a .22uf capacitor on the source of Q5
# (fc=2.2kHz)". The stated fc only works with 0.022 uF; the addendum also says
# ".022uf". So the ".22" is a scan/OCR error.
PRE_R = 3.3e3
PRE_C_STATED_OCR = 0.22e-6
PRE_C_ADDENDUM = 0.022e-6

# Manual: input stage gain "16.5dB (6.7X)".
INPUT_GAIN_X = 6.7
INPUT_GAIN_DB_STATED = 16.5

# --- Playback de-emphasis ---------------------------------------------------
# Manual (OCR): ".033uf capacitor and an 18K ohm resistor on the collector of Q2".
# Forum (HotBluePlates, el34world): ".003uF and 18k". Unresolved.
DE_R = 18e3
DE_C_MANUAL_OCR = 0.033e-6
DE_C_FORUM = 0.003e-6

# --- Tape transport ------------------------------------------------------------
TAPE_IPS = 8.0                     # "roughly 8 ips" (Arnardottir/Abel/Smith 2008; DAFX 2nd ed.)
DELAY_RANGE_DAFX_MS = (60.0, 600.0)
DELAY_RANGE_GUITARWORLD_MS = (80.0, 800.0)
CAPSTAN_HZ = 26.0                  # measured Echoplex capstan component (Kaloinen, after Arnardottir et al.)
PINCH_HZ = (2.5, 5.0)              # measured pinch-wheel components (same source)


def head_gap_mm(delay_ms, ips=TAPE_IPS):
    """Record-to-playback head distance needed for a given delay."""
    return delay_ms * 1e-3 * ips * IPS_TO_MM


def capstan_diameter_mm(ips=TAPE_IPS, f_hz=CAPSTAN_HZ):
    """Capstan diameter implied by tape speed and rotation rate (consistency check)."""
    return ips * IPS_TO_MM / (math.pi * f_hz)


def summary():
    return {
        "pre_emphasis_fc_hz_022uF": rc_corner_hz(PRE_R, PRE_C_ADDENDUM),
        "pre_emphasis_fc_hz_022uF_if_0.22": rc_corner_hz(PRE_R, PRE_C_STATED_OCR),
        "input_gain_db_from_6.7x": db(INPUT_GAIN_X),
        "de_emphasis_fc_hz_033uF": rc_corner_hz(DE_R, DE_C_MANUAL_OCR),
        "de_emphasis_fc_hz_003uF": rc_corner_hz(DE_R, DE_C_FORUM),
        "head_travel_mm_dafx": tuple(head_gap_mm(d) for d in DELAY_RANGE_DAFX_MS),
        "head_travel_mm_guitarworld": tuple(head_gap_mm(d) for d in DELAY_RANGE_GUITARWORLD_MS),
        "capstan_diameter_mm": capstan_diameter_mm(),
    }


if __name__ == "__main__":
    for k, v in summary().items():
        print(f"{k:40s} {v}")
