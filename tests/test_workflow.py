"""
EP-3 v0.1.3-dev — dub workflow suite (Workstream B): controller bank, Insert / Return configurations.

Structural checks run on the built .maxpat JSON; signal checks run the engine source as C
(tests/genexpr_sim). Neither is Max 9 or Live 12: how Live shows the bank, maps a controller or loads
the Return variant is BLOCKED here and listed in the host plan (L18-L21).

Reference: the frozen v0.1.2-dev device baseline/v0.1.2-dev/Echolivity_EP3_v0.1.2-dev.maxpat (sha256-checked).
Run: python3 tests/test_workflow.py  -> tests/WORKFLOW_TEST_REPORT.md
"""
import os, sys, json, hashlib, subprocess
import numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, ".."))
sys.path.insert(0, os.path.join(HERE, "genexpr_sim"))
import ep3sim  # noqa: E402

REF = os.path.join(ROOT, "baseline", "v0.1.2-dev", "Echolivity_EP3_v0.1.2-dev.maxpat")
REF_SHA = "b34486288cd1e901d841625a37a67d7126049ef51f4c5927948dcba4b310b26f"
BANK = ["Echo Sustain", "Echo Volume", "Echo Delay", "Repeat LP", "Repeat HP", "HOLD Latch", "DRIVE Latch", "STOP Latch"]
RES = []


def rec(tid, name, ok, detail):
    RES.append((tid, name, "PASS" if ok else "FAIL", detail))
    print(("PASS " if ok else "FAIL ") + f"{tid} {name}\n     {detail}", flush=True)


def build(variant, name, hw="1"):
    env = dict(os.environ, EP3_VARIANT=variant, EP3_DEVICE_NAME=name, PYTHONDONTWRITEBYTECODE="1", EP3_HW=hw)
    subprocess.run([sys.executable, os.path.join(ROOT, "build", "build_device.py")], env=env, check=True, capture_output=True)
    d = json.load(open(os.path.join(ROOT, "devices", name + ".maxpat")))["patcher"]
    for ext in (".maxpat", ".amxd"):
        os.remove(os.path.join(ROOT, "devices", name + ext))
    return d


def params(p):
    out = {}
    for b in p["boxes"]:
        v = b["box"].get("saved_attribute_attributes", {}).get("valueof")
        if b["box"].get("parameter_enable") and v:
            out[v["parameter_longname"]] = (b["box"], v)
    return out


def norm_boxes(p, drop_text_ids=()):
    """box id -> box JSON, with the fields this milestone intentionally changes removed"""
    out = {}
    for b in p["boxes"]:
        x = json.loads(json.dumps(b["box"]))
        if x["id"] in drop_text_ids:
            x.pop("text", None)
        out[x["id"]] = x
    return out


def main():
    if hashlib.sha256(open(REF, "rb").read()).hexdigest() != REF_SHA:
        sys.exit("BLOCKED: v0.1.2-dev reference device missing or modified")
    ref = json.load(open(REF))["patcher"]
    ins = json.load(open(os.path.join(ROOT, "devices", "Echolivity_EP3_v0.1.3-dev.maxpat")))["patcher"]
    ret = json.load(open(os.path.join(ROOT, "devices", "Echolivity_EP3_v0.1.3-dev_Return.maxpat")))["patcher"]
    fresh_ins, fresh_ret = build("insert", "_wf_ins"), build("return", "_wf_ret")

    # W01 shipped devices are what the build script makes (no hand edits)
    rec("W01", "Shipped Insert and Return devices equal a fresh build", fresh_ins == ins and fresh_ret == ret,
        f"insert {'identical' if fresh_ins == ins else 'DIFFERENT'}, return {'identical' if fresh_ret == ret else 'DIFFERENT'}")

    # W02 Insert device vs v0.1.2-dev: only the intended differences. Compared on the build
    # without the hardware-panel image layer (EP3_HW=0); W09 checks that layer adds images only.
    hwfull = ins
    ins = build("insert", "_wf_nohw", hw="0")
    hdr = [b["box"]["id"] for b in ins["boxes"] if "v0.1.3-dev" in b["box"].get("text", "")]
    a, b = norm_boxes(ref, hdr), norm_boxes(ins, hdr)
    box_diff = sorted(k for k in set(a) | set(b) if a.get(k) != b.get(k))
    lines_same = sorted(json.dumps(l, sort_keys=True) for l in ref["lines"]) == sorted(json.dumps(l, sort_keys=True) for l in ins["lines"])
    reg_ref = {k: v for k, v in ref["parameters"].items()}
    reg_ins = {k: v for k, v in ins["parameters"].items() if k != "parameterbanks"}
    other = sorted(k for k in set(ref) | set(ins) if k not in ("boxes", "lines", "parameters", "description") and ref.get(k) != ins.get(k))
    gen_same = [x["box"].get("code") for x in ref["boxes"] if x["box"].get("maxclass") == "gen~" or "code" in x["box"]] == \
               [x["box"].get("code") for x in ins["boxes"] if x["box"].get("maxclass") == "gen~" or "code" in x["box"]]
    ok = not box_diff and lines_same and reg_ref == reg_ins and not other and len(hdr) == 1
    rec("W02", "Insert device = v0.1.2-dev except version text, parameter order and the bank (all boxes, cords, parameters, defaults, engine code)",
        ok, f"changed boxes besides header: {box_diff or 'none'}; cords identical: {lines_same}; parameter registry same content: {reg_ref == reg_ins}; "
            f"other patcher keys changed: {other or 'none'}; engine code identical: {gen_same}; Echo Volume default {params(ins)['Echo Volume'][1]['parameter_initial'][0]}")
    nohw, ins = ins, hwfull

    # W03 Return vs Insert: only Echo Volume default and labelling
    pi, pr = params(ins), params(ret)
    diffs = sorted(n for n in pi if pi[n][1] != pr[n][1])
    hdr_r = [b["box"]["id"] for b in ret["boxes"] if "RETURN" in b["box"].get("text", "")]
    ai, ar = norm_boxes(ins, hdr), norm_boxes(ret, hdr_r)
    ev = pi["Echo Volume"][0]["id"]
    for d in (ai, ar):
        d[ev] = {k: v for k, v in d[ev].items() if k != "saved_attribute_attributes"}
    bdiff = sorted(k for k in set(ai) | set(ar) if ai.get(k) != ar.get(k))
    ok = diffs == ["Echo Volume"] and pr["Echo Volume"][1]["parameter_initial"] == [1.0] and not bdiff and ins["lines"] == ret["lines"] \
        and set(pi) == set(pr)
    rec("W03", "Return variant differs from Insert only in Echo Volume default (1.0) and RETURN labelling; same parameter names (presets / mappings interchange)",
        ok, f"parameters whose definition differs: {diffs}; Return Echo Volume default {pr['Echo Volume'][1]['parameter_initial'][0]}; other box differences: {bdiff or 'none'}")

    # W04 bank definition and fallback order
    for lab, p in (("insert", ins), ("return", ret)):
        bank = p["parameters"].get("parameterbanks", {}).get("0", {})
        reg = [v[0] for k, v in p["parameters"].items() if k not in ("parameterbanks", "inherited_shortname")]
        boxorder = [b["box"]["saved_attribute_attributes"]["valueof"]["parameter_longname"] for b in p["boxes"]
                    if b["box"].get("parameter_enable") and b["box"].get("saved_attribute_attributes")]
        pp = params(p)
        auto = all(pp[n][1]["parameter_invisible"] == 0 for n in BANK)
        ok = bank.get("parameters") == BANK and reg[:8] == BANK and boxorder[:8] == BANK and auto
        rec(f"W04{lab[0]}", f"[{lab}] Controller bank 'Dub' = Sustain, Echo Volume, Echo Delay, Repeat LP, Repeat HP, HOLD, DRIVE, STOP; same order first in registry and box list; all Automated and Stored",
            ok, f"bank: {bank.get('parameters')}; registry[:8] = bank: {reg[:8] == BANK}; box order[:8] = bank: {boxorder[:8] == BANK}; automatable: {auto}")

    # W05 names unambiguous; bank controls on the main view (not ADVANCED)
    pp = params(ins)
    longs = [n.lower() for n in pp]
    shorts = [v["parameter_shortname"].lower() for _, v in pp.values()]
    adv_hidden = {b["box"].get("varname") for b in ins["boxes"] if b["box"].get("hidden")}
    bank_vn = [pp[n][0].get("varname") for n in BANK]
    on_main = [vn for vn in bank_vn if vn not in adv_hidden]
    shown = [pp[n][0].get("presentation", 0) == 1 for n in BANK]
    hid_by_script = set()
    for bx in ins["boxes"]:
        if bx["box"].get("maxclass") == "message":
            for m in bx["box"].get("text", "").split(","):
                tok = m.split()
                if len(tok) >= 3 and tok[0] == "script" and tok[1] == "hide":
                    hid_by_script.add(tok[2])
    scripted = [vn for vn in bank_vn if vn in hid_by_script]
    ok = len(set(longs)) == len(longs) and len(set(shorts)) == len(shorts) and len(on_main) == 8 and all(shown) and not scripted
    rec("W05", "Parameter long and short names unique (case-insensitive); all eight bank controls on the main panel, none hidden by ADVANCED",
        ok, f"{len(longs)} long names unique: {len(set(longs)) == len(longs)}; short names unique: {len(set(shorts)) == len(shorts)}; "
            f"bank controls in presentation: {sum(shown)}/8; hidden by ADVANCED: {scripted or 'none'}")

    # W06 Return configuration is fully wet: no dry signal at Echo Volume 1
    sr = 48000
    x = np.zeros(int(1.0 * sr))
    t = np.arange(int(0.05 * sr)) / sr
    burst = 0.5 * np.sin(2 * np.pi * 440 * t) * np.hanning(len(t))
    x[int(0.1 * sr):int(0.1 * sr) + len(burst)] = burst
    rows = []
    lev = {}
    for echo in (1.0, 0.5, 0.0):
        o, _ = ep3sim.run_c(x, sr, echo=echo, slider_pos=50, sustain=0.0, quiet=False)
        dry_win = o[int(0.1 * sr):int(0.16 * sr), 0]      # before the first repeat (shortest delay > 60 ms)
        lev[echo] = 20 * np.log10(max(np.abs(dry_win).max(), 1e-12) / 0.5)
        rows.append(f"Echo Volume {echo}: dry-window peak {lev[echo]:.1f} dB re input")
    ok = lev[1.0] < -60 and lev[0.5] > -20 and lev[0.0] > -20
    rec("W06", "Return configuration (Echo Volume 1) passes no dry signal (< -60 dB, tape noise on); Insert settings pass dry as before",
        ok, "; ".join(rows))

    # W07 Return on a return track: summing dry track + return output does not duplicate the dry
    o, _ = ep3sim.run_c(x, sr, echo=1.0, slider_pos=50, sustain=0.4, quiet=False)
    mix = x + o[:, 0]
    dup = 20 * np.log10(np.abs(mix[int(0.1 * sr):int(0.16 * sr)]).max() / np.abs(x).max())
    o2, _ = ep3sim.run_c(x, sr, echo=0.5, slider_pos=50, sustain=0.4, quiet=False)
    mix2 = x + o2[:, 0]
    dup2 = 20 * np.log10(np.abs(mix2[int(0.1 * sr):int(0.16 * sr)]).max() / np.abs(x).max())
    # W09 hardware panel layer: images and their drivers only; parameters, engine and audio cords unchanged
    hb = {b["box"]["id"]: b["box"] for b in hwfull["boxes"]}
    nb = {b["box"]["id"]: b["box"] for b in nohw["boxes"]}
    added = [b for i, b in hb.items() if i not in nb or nb[i]["maxclass"] != b["maxclass"]]
    kinds = sorted({b["maxclass"] if b["maxclass"] != "newobj" else b["text"].split()[0] for b in added})
    p_same = params(hwfull).keys() == params(nohw).keys() and all(
        params(hwfull)[k][1] == params(nohw)[k][1] for k in params(nohw))
    g = lambda P: [x["box"].get("code") for x in P["boxes"] if "code" in x["box"]]
    nfp = sum(1 for b in hwfull["boxes"] if b["box"]["maxclass"] == "fpic")
    deps = {d["name"] for d in hwfull["dependency_cache"]}
    pics = {b["box"]["pic"] for b in hwfull["boxes"] if b["box"]["maxclass"] == "fpic"}
    imgs_ok = all(os.path.exists(os.path.join(ROOT, "devices", n)) for n in deps) and pics <= deps
    rec("W09", "Hardware panel layer adds only images (fpic), their frame drivers, the theme/ADVANCED messages' image lines and a fallback note; parameters and engine identical",
        set(kinds) <= {"fpic", "expr", "prepend", "comment", "sel", "thispatcher", "message", "live.thisdevice"}
        and p_same and g(hwfull) == g(nohw) and imgs_ok,
        f"{nfp} fpic images; added/renumbered box kinds {kinds}; parameters identical {p_same}; "
        f"engine identical {g(hwfull) == g(nohw)}; {len(deps)} images listed and present {imgs_ok}")

    rec("W07", "Return use: dry track + return output keeps the dry at its own level (Return variant); the Insert default would add the dry again",
        abs(dup) < 0.1, f"dry level in the summed mix: Return variant {dup:+.2f} dB (expect 0); Insert default Echo Volume 0.5 {dup2:+.2f} dB (the pitfall the Return variant removes)")

    npass = sum(r[2] == "PASS" for r in RES)
    with open(os.path.join(HERE, "WORKFLOW_TEST_REPORT.md"), "w") as f:
        f.write("# EP-3 v0.1.3-dev — workflow test report (controller bank, Insert / Return)\n\n"
                "Generated by `tests/test_workflow.py`. Structural tests read the built .maxpat; W06–W07 run the engine source as C. "
                "**Not Max 9 / Live 12**: Live's bank display, controller mapping and loading of the Return variant are BLOCKED (host plan L18–L21).\n\n"
                f"Result: **{npass}/{len(RES)} PASS**\n\n| ID | Test | Result | Detail |\n|---|---|---|---|\n")
        for r in RES:
            f.write(f"| {r[0]} | {r[1]} | {r[2]} | {r[3]} |\n")
    print(f"{npass}/{len(RES)} passed")
    sys.exit(0 if npass == len(RES) else 1)


if __name__ == "__main__":
    main()
