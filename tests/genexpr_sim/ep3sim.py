"""
ep3sim — runs the shipped dsp/ep3_core.genexpr for tests.

Two independent executions of the same GenExpr source:
  run_c()  : C translation (gx_cgen.py) compiled with gcc -O2. Fast; used for
             long behaviour tests and the CPU proxy.
  run_py() : Python execution (gx_transpile.py). Slow; used to cross-check the
             C translation on short runs (test X01).
Neither is Max 9's gen~ compiler. Both rely on the gen~ semantic assumptions
A1–A5 listed in gx_transpile.py, which must be confirmed in Max (G-tests).
"""
import hashlib
import os
import subprocess
import sys
import tempfile
import numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, "..", ".."))
GX = os.path.join(ROOT, "dsp", "ep3_core.genexpr")
sys.path.insert(0, HERE)
from gx_cgen import CGen  # noqa: E402

BUILD = os.path.join(tempfile.gettempdir(), "ep3_build")
QUIET = {"noise_db": -120, "wow": 0, "flutter": 0}


def _build():
    src = open(GX).read()
    h = hashlib.sha1(src.encode() + open(os.path.join(HERE, "ep3_run.c"), "rb").read()).hexdigest()[:12]
    exe = os.path.join(BUILD, f"ep3_run_{h}")
    if os.path.exists(exe):
        return exe
    os.makedirs(BUILD, exist_ok=True)
    g = CGen(src)
    open(os.path.join(BUILD, "ep3_core_gen.c"), "w").write(g.build())
    inc = ['static int set_param(const char* kv) {', '\tchar name[64]; double v;',
           '\tif (sscanf(kv, "%63[^=]=%lf", name, &v) != 2) return 0;']
    inc += [f'\tif (!strcmp(name, "{n}")) {{ P_{n} = v; return 1; }}' for n, _ in g.params]
    inc += ['\treturn 0;', '}']
    open(os.path.join(BUILD, "ep3_params.inc"), "w").write("\n".join(inc))
    subprocess.run(["cp", os.path.join(HERE, "ep3_run.c"), BUILD], check=True)
    subprocess.run(["gcc", "-O2", "-w", "-o", exe, "ep3_run.c", "-lm"], cwd=BUILD, check=True)
    return exe


def params():
    return CGen(open(GX).read()).params if False else _param_list()


def _param_list():
    g = CGen(open(GX).read())
    g.build()
    return list(g.params)


def run_c(x, sr=48000, quiet=True, vary=None, srswitch=None, **p):
    """x: mono input. vary: {param: per-sample array}. p: fixed params. Returns (n, 8) array and ns/sample."""
    exe = _build()
    x = np.asarray(x, float)
    vary = vary or {}
    names = list(vary)
    cols = [x] + [np.broadcast_to(np.asarray(vary[k], float), x.shape) for k in names]
    data = np.stack(cols, axis=1).astype(np.float64)
    fixed = dict(QUIET) if quiet else {}
    fixed.update(p)
    with tempfile.TemporaryDirectory() as td:
        fi, fo = os.path.join(td, "in.bin"), os.path.join(td, "out.bin")
        data.tofile(fi)
        args = [exe, str(sr), fi, str(len(cols)), ",".join(names) if names else "-", fo]
        if srswitch:
            args.append(f"srswitch={srswitch[0]}:{srswitch[1]}")
        args += [f"{k}={v}" for k, v in fixed.items()]
        r = subprocess.run(args, capture_output=True, text=True, check=True)
        out = np.fromfile(fo, dtype=np.float64).reshape(-1, 8)
    ns = float(r.stdout.split("ns_per_sample=")[1])
    return out, ns


def run_py(x, sr=48000, quiet=True, vary=None, **p):
    from gx_transpile import GenProgram
    g = GenProgram(GX, sr)
    fixed = dict(QUIET) if quiet else {}
    fixed.update(p)
    for k, v in fixed.items():
        g.set(k, v)
    vary = vary or {}
    last = {}
    out = np.zeros((len(x), 8))
    for i, xv in enumerate(x):
        for k, arr in vary.items():
            v = float(np.broadcast_to(arr, np.shape(x))[i])
            if last.get(k) != v:
                g.set(k, v)
                last[k] = v
        out[i] = g.tick(float(xv), float(xv))
    return out
