"""
Writes the inputs and reference outputs for the EP-3 Max harness.
  in_<name>.wav      mono float32 input (the harness feeds it to both gen~ inputs; the device is mono)
  expect_<name>.wav  mono float32 reference output (out1; out2 is identical) — tier A only
  expect_<name>.json reference metrics — tier B (computed by check_behaviour.py on the C render)
References come from the GenExpr source executed as C (tests/genexpr_sim), the engine
the regression suites test. Run: python3 tests/golden/make_golden_ep3.py
"""
import os, sys, json
import numpy as np
from scipy.io import wavfile

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
sys.path.insert(0, os.path.join(HERE, "..", "genexpr_sim"))
import ep3sim  # noqa: E402
import scenarios as S  # noqa: E402
import check_behaviour as CB  # noqa: E402


def wav(path, y):
    wavfile.write(path, S.SR, np.asarray(y, np.float32))


def main():
    for name, (sig, prm, secs) in S.TIER_A.items():
        x = sig()
        x = np.concatenate([x, np.zeros(max(0, int(secs * S.SR) - len(x)))])[:int(secs * S.SR)]
        o, _ = ep3sim.run_c(x, S.SR, quiet=False, **prm)
        wav(os.path.join(HERE, f"in_{name}.wav"), x)
        assert np.array_equal(o[:, 0], o[:, 1])
        wav(os.path.join(HERE, f"expect_{name}.wav"), o[:, 0])
        print(name, "peak", round(float(np.abs(o[:, 0]).max()), 3))
    for name, (sig, prm, secs, events) in S.TIER_B.items():
        n = int(secs * S.SR)
        x = sig()
        x = np.concatenate([x, np.zeros(max(0, n - len(x)))])[:n]
        vary = {}
        for t_ev, p, v in events:
            base = prm.get(p, {"hold": 0, "pb_eq": 0, "loop_s": 8}[p])
            arr = np.full(n, float(base))
            arr[int(t_ev * S.SR):] = v
            vary[p] = arr
        o, _ = ep3sim.run_c(x, S.SR, quiet=False, vary=vary, **prm)
        wav(os.path.join(HERE, f"in_{name}.wav"), x)
        m = CB.metrics(name, o[:, 0])
        json.dump(m, open(os.path.join(HERE, f"expect_{name}.json"), "w"), indent=1)
        print(name, m)


if __name__ == "__main__":
    main()
