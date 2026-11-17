{
 "patcher": {
  "fileversion": 1,
  "appversion": {
   "major": 9,
   "minor": 0,
   "revision": 0,
   "architecture": "x64",
   "modernui": 1
  },
  "classnamespace": "box",
  "rect": [
   40,
   60,
   1540,
   1060
  ],
  "default_fontsize": 11.0,
  "default_fontname": "Arial",
  "gridsize": [
   8.0,
   8.0
  ],
  "boxes": [
   {
    "box": {
     "id": "obj-1",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      10,
      980,
      22
     ],
     "text": "ECHOLIVITY EP-3 \u2014 host harness (G01 compile, G03 sample-exact renders, tier-B behaviour) \u2014 Max audio at 48 kHz",
     "fontsize": 13.0
    }
   },
   {
    "box": {
     "id": "obj-2",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      34,
      1100,
      20
     ],
     "text": "1. Opening compiles 9 gen~: the Max console must show NO gen~ errors (G01).  2. Wait 2 s, then press each RUN and wait for 'writes \u2026' (duration + 0.5 s).  3. Run compare.py / check_behaviour.py on each out_*_max.wav.",
     "fontsize": 11.0
    }
   },
   {
    "box": {
     "id": "obj-3",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      20,
      70,
      60,
      22
     ],
     "outlettype": [
      "bang"
     ],
     "text": "loadbang"
    }
   },
   {
    "box": {
     "id": "obj-4",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      100,
      80,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "; dsp start"
    }
   },
   {
    "box": {
     "id": "obj-5",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      120,
      100,
      80,
      22
     ],
     "outlettype": [
      "",
      "int"
     ],
     "text": "adstatus sr"
    }
   },
   {
    "box": {
     "id": "obj-6",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      120,
      130,
      70,
      22
     ],
     "outlettype": [
      "",
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-7",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      195,
      130,
      220,
      20
     ],
     "text": "\u2190 sample rate (must be 48000)",
     "fontsize": 11.0
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      180,
      290,
      20
     ],
     "text": "GOLD1_bright_feedback \u2014 tier A (sample-exact), 5 s",
     "fontsize": 10.5
    }
   },
   {
    "box": {
     "id": "obj-9",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      204,
      290,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "noise_db -120, wow 0, flutter 0, sustain 0.6"
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      20,
      232,
      230,
      22
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ in_GOLD1_bright_feedback in_GOLD1_bright_feedback.wav"
    }
   },
   {
    "box": {
     "id": "obj-11",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      20,
      256,
      230,
      22
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ out_GOLD1_bright_feedback 5600 1"
    }
   },
   {
    "box": {
     "id": "obj-12",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      20,
      284,
      140,
      26
     ],
     "outlettype": [
      "",
      "",
      "int"
     ],
     "text": "RUN GOLD1"
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      20,
      318,
      60,
      22
     ],
     "outlettype": [
      "bang",
      "bang",
      "bang"
     ],
     "text": "t b b b"
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      90,
      346,
      30,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "1"
    }
   },
   {
    "box": {
     "id": "obj-15",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      346,
      40,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "start"
    }
   },
   {
    "box": {
     "id": "obj-16",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      20,
      376,
      120,
      22
     ],
     "outlettype": [
      "signal",
      "bang"
     ],
     "text": "play~ in_GOLD1_bright_feedback 1"
    }
   },
   {
    "box": {
     "id": "obj-17",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      20,
      412,
      120,
      22
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "text": "gen~",
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 0,
       "revision": 0,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "dsp.gen",
      "rect": [
       50,
       50,
       960,
       840
      ],
      "boxes": [
       {
        "box": {
         "id": "g-code",
         "maxclass": "codebox",
         "code": "// FALLBACK NAMES BUILD (not a release): identical engine with locals that share Gen operator names renamed\n// (s->st_s, f->fq, i->ii, gtp->g_tp, r->rdp). Use only if gen~ reports an error on one of those names.\n// =====================================================================\n// ECHOLIVITY \u2014 EP-3 (Maestro Echoplex EP-3 model) \u00b7 tape engine v0.1.2-dev\n// v0.1.2-dev: identifiers renamed that collide with gen~ built-ins (dcblock -> dc_block,\n// lt -> l_t); no functional change (bit-identical, test R06/X01).\n// v0.1.1-dev remediation (see CHANGELOG / validation/EP3_REMEDIATION_REPORT.md): F1 HOLD loop gain,\n// F2 33 nF feedback runaway, F3 8 s default loop, F4 click-free DE-EMPH / Cable / Source-cap\n// changes, F6 loop-length change fade.\n// gen~ codebox. Status of every value: docs/EP3_MODELING_NOTES.md\n//\n// Signal flow (EP-3 manual, Maestro owner/service manual [S1]):\n//   input -> Q5 FET stage (TIS58, 22k drain, 3.3k source, 0.022 uF source\n//   bypass = pre-emphasis) -> dry out (high output Z into cable C)\n//                           -> record level -> record amp -> RECORD/ERASE HEAD\n//   (moving, on the slider) -> tape (8 ips, ~75 ft loop) -> fixed ECHO head\n//   -> head amp + de-emphasis -> Echo Sustain (feedback) / Echo Volume (blend\n//   pot in the passive output mixer, wiper grounded) -> output (high Z, into the cable)\n//   SOS: SOS head (upstream of the record head) monitors the loop; erase off,\n//   new material is added to the old layer (-1 dB per pass, manual alignment).\n//\n// The record head moves, so a slider move changes how sound is WRITTEN on the\n// tape (pitch change heard one delay later). The write is band-limited (pre-\n// write low-pass that follows the head's speed over the tape, after\n// Arnardottir/Abel/Smith 2008) and fills every tape cell the head crosses.\n//\n// Tape buffer: fixed 48 000 cells per second of tape at nominal speed, so the\n// 112.5 s loop costs the same memory at any sample rate.\n// Level convention: 100 mV == -18 dBFS RMS (same as the H&H device).\n// Mono like the original: L+R are summed at the input; out1 == out2.\n//\n// out1/out2: audio   out3: delay (ms)   out4: tap BPM\n// out5: record-head write speed over tape (1 = normal)   out6: tape speed\n// out7: output-protection gain   out8: output over flag\n// =====================================================================\n\n// ---------- stateful helpers (each call site gets its own state) ------\nsvf(x, fc, q) {\n\tHistory s1(0);\n\tHistory s2(0);\n\tHistory key_fc(-1);\n\tHistory key_q(-1);\n\tHistory key_sr(-1);\n\tHistory c_k(0);\n\tHistory c_a1(0);\n\tHistory c_a2(0);\n\tHistory c_a3(0);\n\tif (fc != key_fc || q != key_q || samplerate != key_sr) {\n\t\tfcc = clamp(fc, 5, samplerate * 0.49);\n\t\tg = tan(pi * fcc / samplerate);\n\t\tc_k = 1 / q;\n\t\tc_a1 = 1 / (1 + g * (g + c_k));\n\t\tc_a2 = g * c_a1;\n\t\tc_a3 = g * c_a2;\n\t\tkey_fc = fc;\n\t\tkey_q = q;\n\t\tkey_sr = samplerate;\n\t}\n\tv3 = x - s2;\n\tv1 = c_a1 * s1 + c_a2 * v3;\n\tv2 = s2 + c_a2 * s1 + c_a3 * v3;\n\ts1 = fixdenorm(2 * v1 - s1);\n\ts2 = fixdenorm(2 * v2 - s2);\n\treturn v2, v1, x - c_k * v1 - v2;\n}\n\nlp1(x, fc) {\n\tHistory z(0);\n\tHistory key_fc(-1);\n\tHistory key_sr(-1);\n\tHistory c_a(0);\n\tif (fc != key_fc || samplerate != key_sr) {\n\t\tc_a = 1 - exp(-twopi * min(fc, samplerate * 0.49) / samplerate);\n\t\tkey_fc = fc;\n\t\tkey_sr = samplerate;\n\t}\n\tz = fixdenorm(z + c_a * (x - z));\n\treturn z;\n}\n\nhp1(x, fc) {\n\treturn x - lp1(x, fc);\n}\n\ndc_block(x) {\n\tHistory x1(0);\n\tHistory y1(0);\n\tR = 1 - twopi * 10 / samplerate;\n\ty = fixdenorm(x - x1 + R * y1);\n\tx1 = x;\n\ty1 = y;\n\treturn y;\n}\n\nhermite(xm1, x0, x1, x2, fq) {\n\tc1 = 0.5 * (x1 - xm1);\n\tc2 = xm1 - 2.5 * x0 + 2 * x1 - 0.5 * x2;\n\tc3 = 0.5 * (x2 - xm1) + 1.5 * (x0 - x1);\n\treturn ((c3 * fq + c2) * fq + c1) * fq + x0;\n}\n\nsoftclip(x, k, c) {\n\tax = abs(x);\n\ty = x;\n\tif (ax > k) {\n\t\tsg = (x >= 0) ? 1 : -1;\n\t\ty = sg * (k + (c - k) * tanh((ax - k) / (c - k)));\n\t}\n\treturn y;\n}\n\ntapesat(x, b) {\n\tHistory key_b(-99999);\n\tHistory c_tb(0);\n\tif (b != key_b) {\n\t\tc_tb = tanh(b);\n\t\tkey_b = b;\n\t}\n\ttb = c_tb;\n\treturn (tanh(x + b) - tb) / (1 - tb * tb);\n}\n\npsmooth(t, a) {\n\tHistory st_s(0);\n\tHistory init(0);\n\tif (init < 0.5) {\n\t\tst_s = t;\n\t\tinit = 1;\n\t}\n\tst_s = st_s + a * (t - st_s);\n\tif (abs(t - st_s) <= 0.000000001 * max(1, abs(t))) {\n\t\tst_s = t;\n\t}\n\treturn st_s;\n}\n\nfsmooth(fq, a) {\n\tHistory ls(0);\n\tHistory init(0);\n\tl_t = log(fq);\n\tif (init < 0.5) {\n\t\tls = l_t;\n\t\tinit = 1;\n\t}\n\tls = ls + a * (l_t - ls);\n\tif (abs(l_t - ls) <= 0.000000001) {\n\t\tls = l_t;\n\t}\n\treturn (ls == l_t) ? fq : exp(ls);\n}\n\n// JFET drain current, square law: Id = Idss (1 - Vgs/Vp)^2 for Vp < Vgs, else 0.\n// Vgs above +0.4 V is held there (gate-source diode conducts).\n// Source node: Rs in parallel with Cs (Cs = 0 when the bypass cap is out).\n// Backward-Euler step for the source node, solved in closed form:\n//   (Cs/dt + 1/Rs) Vs - (Cs/dt) Vs0 = Id(vg - Vs)\n// Returns (Id, Vs).\nfet_step(vg, vs0, cdt, rs, idss, vp) {\n\ta = cdt + 1 / rs;\n\tb = cdt * vs0;\n\tvgc = min(vg, 0.4 + vs0);\n\t// w = 1 - Vgs/Vp; Vs = Vp w - Vp + vg  ->  idss w^2 - a Vp w + (a Vp - a vg + b) = 0\n\tqa = idss;\n\tqb = -a * vp;\n\tqc = a * vp - a * vgc + b;\n\tdisc = qb * qb - 4 * qa * qc;\n\tidq = 0;\n\tvsq = b / a;                                  // cut-off: no drain current\n\tif (disc >= 0) {\n\t\tw = (-qb + sqrt(disc)) / (2 * qa);\n\t\tif (w > 0) {\n\t\t\tidq = idss * w * w;\n\t\t\tvsq = vp * w - vp + vgc;\n\t\t}\n\t}\n\treturn idq, vsq;\n}\n\n// Passive output mixer (EP-3; values from replica/forum traces [S11][S13]-[S15], APPROX until a\n// clean schematic): drain -0.1uF- A; A -470k- gnd; A -220k- B; B = Echo Volume lug 1;\n// B -100k- OUT. Echo amp -220k- E; E -100k- gnd; E = pot lug 3; E -100k- OUT.\n// The 500k pot's WIPER IS GROUNDED: k = 0 shorts the echo lug, k = 1 shorts the dry lug,\n// so Echo Volume is a blend and the dry level peaks near k = 0.2 (non-monotonic).\n// OUT drives the amp (1M) and the cable capacitance. Returns dry gain, echo gain and the\n// Thevenin resistance at OUT (which, with the cable C, sets the treble roll-off).\nmixer(k) {\n\trp3 = clamp(k, 0, 1) * 500000;\n\trp1 = 500000 - rp3;\n\tra = 22000 * 470000 / 492000;\n\tvbf = (470000 / 492000) * rp1 / (ra + 220000 + rp1);\n\trdb = (ra + 220000) * rp1 / (ra + 220000 + rp1) + 100000;\n\trsh = rp3 * 100000 / (rp3 + 100000);\n\tvef = rsh / (220000 + rsh);\n\treb = 220000 * rsh / (220000 + rsh) + 100000;\n\tgsum = 1 / rdb + 1 / reb + 0.000001;\n\treturn vbf / rdb / gsum, vef / reb / gsum, 1 / gsum;\n}\n\n// F1/F2 (v0.1.1): peak gain of the fixed playback/record loop chain for a de-emphasis corner fde:\n// tape HF loss (2-pole, 5188 Hz) x de-emphasis (1-pole fde, normalised to 1 at 1 kHz)\n// x couplings (30, 20, 10 Hz high-passes). The 1 kHz normalisation lifts the chain above 1 below\n// 1 kHz: peak 1.043 (334 Hz) for 3 nF and 3.383 (102 Hz) for 33 nF, matching measured per-pass\n// gains of 1.040 / 3.369 (validation/EP3_REMEDIATION_REPORT.md). Grid search, 20 Hz\u20134 kHz.\nloop_peak(fde) {\n\tnrm = sqrt(1 + (1000 / fde) * (1000 / fde));\n\tpk = 0;\n\tfor (ii = 0; ii < 96; ii += 1) {\n\t\tfq = 20 * pow(200, ii / 95);\n\t\tg_tp = 1 / sqrt(1 + pow(fq / 5188, 4));\n\t\tgd = nrm / sqrt(1 + (fq / fde) * (fq / fde));\n\t\tg30 = (fq / 30) / sqrt(1 + (fq / 30) * (fq / 30));\n\t\tg20 = (fq / 20) / sqrt(1 + (fq / 20) * (fq / 20));\n\t\tg10 = (fq / 10) / sqrt(1 + (fq / 10) * (fq / 10));\n\t\tpk = max(pk, g_tp * gd * g30 * g20 * g10);\n\t}\n\treturn pk;\n}\n\n// ---------- tape ------------------------------------------------------\n// 112.5 s * 48 000 cells/s (+ margin)\nData tape(5400064, 1);\n\n// ---------- parameters ------------------------------------------------\nParam in_gain_db(0, min=-36, max=12);\nParam dry(1, min=0, max=1);                  // Echolivity trim on the dry branch (1 = original)\nParam echo(0.5, min=0, max=1);               // ECHO VOLUME: the 500k blend pot (wiper grounded)\nParam echo_trim_db(0, min=-24, max=12);      // Echolivity trim on the echo branch\nParam out_db(0, min=-36, max=12);\nParam mode(2, min=0, max=2);\nParam bpm(120, min=20, max=999);\nParam sync_div(2, min=0, max=5);\nParam sync_type(0, min=0, max=2);\nParam sync_mult(1, min=1, max=8);\nParam offset_ms(0, min=-100, max=100);\nParam tap(0, min=0, max=1000000);\nParam tap_div(3, min=0, max=5);\nParam tap_type(0, min=0, max=2);\nParam bar_beats(4, min=1, max=16);\n// ECHO DELAY slider: delay is linear in head position at constant tape speed.\n// 60\u2013600 ms default = DAFX/CCRMA measured range [S3]; 80\u2013800 per [S4].\nParam slider_pos(0.5, min=0, max=1);\nParam slider_min_ms(60, min=2, max=2000);\nParam slider_max_ms(600, min=2, max=4000);\nParam glide_ms(40, min=1, max=2000);\nParam transition_ms(250, min=1, max=4000);\nParam head_slew(4, min=0.05, max=12);        // max head speed, in delay-seconds per second (APPROX)\n// EP-3 front panel / internal\nParam sustain(0.4, min=0, max=1);            // ECHO SUSTAIN (500k lin [S12]); runs away from 0.8 (test E14)\nParam rec_db(0, min=-12, max=12);            // RECORD LEVEL trimmer (internal on the original)\nParam sos(0, min=0, max=1);                  // ECHO / SOUND ON SOUND switch\nParam sos_db(-1, min=-6, max=0);             // SOS loss per pass; manual alignment: \"approximately 1dB\"\nParam echo_on(1, min=0, max=1);              // footswitch: echo on/off\nParam playback(0, min=0, max=1);             // footswitch: playback (record + erase off)\nParam pre_bypass(1, min=0, max=1);           // Q5 source bypass 0.022 uF (manual addendum) in/out\nParam cable_pf(470, min=0, max=2000);        // cable + amp input capacitance; 470 pF fits ClinchFX's descriptions (test E07)\nParam pb_eq(0, min=0, max=1);                // de-emphasis: 0 = 18k/0.003uF (forum), 1 = 18k/0.033uF (manual scan)\nParam bias_khz(100, min=40, max=120);        // \"approximate frequency of 100 KC\" [S1]\nParam bias_leak(0.3, min=0, max=1);          // bias heard on very fast slider moves (APPROX level)\nParam loop_s(8, min=1, max=112.5);           // F3 (v0.1.1): default 8 s for usable SOS/PLAYBACK; 112.5 s = ~75 ft at 8 ips [S18] (authentic)\n// tape character (Echolivity)\nParam sat(0.5, min=0, max=1);\nParam noise_db(-60, min=-120, max=-30);\nParam wow(0.1, min=0, max=1);                // slow drift\nParam flutter(0.25, min=0, max=1);           // 0.5 stays within the 0.3 % spec (E10: 0.256 %); capstan 26 Hz, pinch 2.5/5 Hz\n// performance (Echolivity)\nParam hold(0, min=0, max=1);\nParam hold_fb(1, min=0.9, max=1.05);\nParam drive(0, min=0, max=1);\nParam drive_db(12, min=0, max=24);\nParam drive_fb(0, min=0, max=1);\nParam tape_stop(0, min=0, max=1);\nParam stop_time(1, min=0.05, max=8);\nParam start_time(0.4, min=0.05, max=8);\nParam fb_hp_hz(10, min=10, max=2000);\nParam fb_lp_hz(20000, min=500, max=20000);\nParam fb_res(0, min=0, max=1);\nParam echo_hp_hz(10, min=10, max=2000);\nParam echo_lp_hz(20000, min=500, max=20000);\nParam protect(1, min=0, max=1);\nParam ceiling_db(-0.3, min=-12, max=0);\n\n// ---------- state -----------------------------------------------------\nHistory p(0);\nHistory d_head(-1);\nHistory Ts1(-1);\nHistory Ts2(-1);\nHistory w_prev(0);\nHistory rec_prev(0);\nHistory first(1);\nHistory s_stop(1);\nHistory hold_s(0);\nHistory drive_s(0);\nHistory sos_s(0);\nHistory echo_on_s(1);\nHistory echo_on_s2(1);\nHistory pb_s(0);\nHistory env(0);\nHistory prev_mode(-1);\nHistory trans_left(0);\nHistory nsamp(0);\nHistory tap_prev(0);\nHistory last_tap(-1);\nHistory t_count(0);\nHistory ti0(0);\nHistory ti1(0);\nHistory ti2(0);\nHistory ti3(0);\nHistory tap_bpm(120);\nHistory ph_cap(0);\nHistory ph_p1(0);\nHistory ph_p2(0);\nHistory drift(0);\nHistory fl_rnd(0);\nHistory last_sr(0);\nHistory vs_state(-1);\nHistory pg_hold(1);\nHistory pg_s(1);\nHistory ph_cnt(0);\nHistory u_out(1);\nHistory ck_pk3(-1);\nHistory ck_pk33(-1);\nHistory L_cur(-1);\nHistory hp_env(0);\nHistory hold_tgt(0);\nHistory hold_c(1);\nHistory hold_prev(0);\nHistory hold_cnt(0);\nHistory hold_pass(0);\nHistory hold_np(0);\nHistory hold_elast(0);\nHistory lg(1);\nHistory lg1(1);\nHistory lg_t(1);\nHistory lg_hold(0);\n// cached coefficients\nHistory ck_sr(-1);\nHistory ck_ps(0);\nHistory ck_a10(0);\nHistory ck_drift(0);\nHistory ck_flr(0);\nHistory ck_nnorm(1);\nHistory ck_up(0);\nHistory ck_dn(0);\nHistory ck_prel(0);\nHistory ck_patt(0);\nHistory ck_tau(-1);\nHistory ck_as(0);\nHistory ck_fkey(-99999);\nHistory ck_idq(0);\nHistory ck_vsq(0);\nHistory ck_dkey(-99999);\nHistory ck_dg(1);\nHistory ck_sat(-99999);\nHistory ck_gt(1);\nHistory ck_ing(-99999);\nHistory ck_ig(1);\nHistory ck_rkey(-99999);\nHistory ck_rg(1);\nHistory ck_skey(-99999);\nHistory ck_sg(0.891);\nHistory ck_nkey(-99999);\nHistory ck_ng(0);\nHistory ck_okey(-99999);\nHistory ck_kkey(-99999);\nHistory ck_gd(0.18);\nHistory ck_ge(0.13);\nHistory ck_rth(83000);\nHistory ck_en(1);\nHistory ck_etkey(-99999);\nHistory ck_et(1);\nHistory ck_og(1);\nHistory ck_ckey(-99999);\nHistory ck_cl(1);\n\nCR = 48000;                                  // tape cells per second at nominal speed\nNB = 5400064;\nVPF = 0.794;                                 // volts per full scale (100 mV = -18 dBFS RMS)\nRD = 22000;                                  // Q5 drain resistor [S1][S8]\nRS = 3300;                                   // Q5 source resistor [S1]\nCS = 0.000000022;                            // Q5 source bypass [S1 addendum]\nIDSS = 0.0034;                               // APPROX: fitted so Vs = 1.8 V at 21.2 V supply\nVP = -3.0;                                   //   (measured 1.72\u20131.88 V / 21.0\u201321.3 V on two units [S8])\nVDD = 21.2;\nFBIAS_MIN_SP = 0.45;                         // spatial Nyquist guard (cycles per tape cell)\n\nsr = samplerate;\nt = nsamp;\nnsamp = nsamp + 1;\nx = 0.5 * (fixnan(in1) + fixnan(in2));      // mono, like the original\n\nif (sr != last_sr) {\n\tif (last_sr > 0) {\n\t\tTs1 = -1;\n\t\tTs2 = -1;\n\t\td_head = -1;\n\t\tlast_tap = -1;\n\t\tt_count = 0;\n\t}\n\tlast_sr = sr;\n}\n\n// ================= TAP TEMPO (sample counter; as the H&H device) =======\nif (tap > tap_prev + 0.5) {\n\tif (last_tap >= 0) {\n\t\tiv = t - last_tap;\n\t\tif (iv < 0.15 * sr) {\n\t\t\tiv = -1;\n\t\t} else if (iv > 2 * sr) {\n\t\t\tt_count = 0;\n\t\t\tlast_tap = t;\n\t\t} else {\n\t\t\tif (t_count > 0) {\n\t\t\t\ttavg0 = (ti0 + ti1 + ti2 + ti3) / min(t_count, 4);\n\t\t\t\tif (abs(iv - tavg0) > 0.4 * tavg0) {\n\t\t\t\t\tt_count = 0;\n\t\t\t\t}\n\t\t\t}\n\t\t\tti3 = ti2;\n\t\t\tti2 = ti1;\n\t\t\tti1 = ti0;\n\t\t\tti0 = iv;\n\t\t\tif (t_count == 0) {\n\t\t\t\tti1 = 0;\n\t\t\t\tti2 = 0;\n\t\t\t\tti3 = 0;\n\t\t\t}\n\t\t\tt_count = min(t_count + 1, 4);\n\t\t\ttavg = (ti0 + ti1 + ti2 + ti3) / t_count;\n\t\t\ttap_bpm = 60 * sr / tavg;\n\t\t\tlast_tap = t;\n\t\t}\n\t} else {\n\t\tlast_tap = t;\n\t}\n}\ntap_prev = tap;\n\n// ================= TARGET DELAY TIME ==================================\ns_lo = min(slider_min_ms, slider_max_ms);\ns_hi = max(slider_min_ms, slider_max_ms);\nT = (s_lo + slider_pos * (s_hi - s_lo)) * 0.001;\nif (mode < 1.5) {\n\tuse_bpm = max(bpm, 20);\n\tdv_idx = floor(sync_div + 0.5);\n\ttyp = floor(sync_type + 0.5);\n\tif (mode >= 0.5) {\n\t\tuse_bpm = tap_bpm;\n\t\tdv_idx = floor(tap_div + 0.5);\n\t\ttyp = floor(tap_type + 0.5);\n\t}\n\tbeats = 0.125;\n\tif (dv_idx == 1) { beats = 0.25; }\n\telse if (dv_idx == 2) { beats = 0.5; }\n\telse if (dv_idx == 3) { beats = 1; }\n\telse if (dv_idx == 4) { beats = 2; }\n\telse if (dv_idx >= 5) { beats = bar_beats; }\n\tif (typ == 1) { beats = beats * 1.5; }\n\telse if (typ == 2) { beats = beats * 2 / 3; }\n\tT = 60 / use_bpm * beats * max(sync_mult, 1) + offset_ms * 0.001;\n}\nT = clamp(T, 0.002, 4);\n\n// sample-rate-dependent constants\nif (sr != ck_sr) {\n\tck_ps = 1 - exp(-1 / (0.010 * sr));\n\tck_a10 = ck_ps;\n\tck_drift = 1 - exp(-twopi * 0.5 / sr);\n\tck_flr = 1 - exp(-twopi * 20 / sr);\n\ta_n0 = 1 - exp(-twopi * min(10000, 0.49 * sr) / sr);\n\tck_nnorm = sqrt((1 / 3) * a_n0 / (2 - a_n0));\n\tck_up = 1 - exp(-1 / (0.001 * sr));\n\tck_dn = 1 - exp(-1 / (0.200 * sr));\n\tck_prel = 1 - exp(-1 / (0.150 * sr));\n\tck_patt = 1 - exp(-1 / (0.0005 * sr));\n\tck_sr = sr;\n\tck_tau = -1;\n\tck_fkey = -99999;\n\tck_nkey = -99999;\n}\n\n// smoothed continuous parameters\nsm_in_gain_db = psmooth(in_gain_db, ck_ps);\nsm_dry = psmooth(dry, ck_ps);\nsm_echo = psmooth(echo, ck_ps);\nsm_echo_trim_db = psmooth(echo_trim_db, ck_ps);\nsm_out_db = psmooth(out_db, ck_ps);\nsm_sustain = psmooth(sustain, ck_ps);\nsm_rec_db = psmooth(rec_db, ck_ps);\nsm_sos_db = psmooth(sos_db, ck_ps);\nsm_bias_leak = psmooth(bias_leak, ck_ps);\nsm_sat = psmooth(sat, ck_ps);\nsm_noise_db = psmooth(noise_db, ck_ps);\nsm_wow = psmooth(wow, ck_ps);\nsm_flutter = psmooth(flutter, ck_ps);\nsm_hold_fb = psmooth(hold_fb, ck_ps);\nsm_drive_db = psmooth(drive_db, ck_ps);\nsm_fb_res = psmooth(fb_res, ck_ps);\nsm_cable_pf = psmooth(cable_pf, ck_ps);\nsm_bias_khz = fsmooth(bias_khz, ck_ps);\nsm_fb_hp_hz = fsmooth(fb_hp_hz, ck_ps);\nsm_fb_lp_hz = fsmooth(fb_lp_hz, ck_ps);\nsm_echo_hp_hz = fsmooth(echo_hp_hz, ck_ps);\nsm_echo_lp_hz = fsmooth(echo_lp_hz, ck_ps);\n// ceiling_db is not smoothed (see H&H test P05)\n\nif (mode != prev_mode) {\n\tif (prev_mode >= 0) {\n\t\ttrans_left = transition_ms * 0.001 * sr * 3;\n\t}\n\tprev_mode = mode;\n}\ntau_ms = glide_ms;\nif (trans_left > 0) {\n\ttau_ms = max(transition_ms, glide_ms);\n\ttrans_left = trans_left - 1;\n}\nif (tau_ms != ck_tau) {\n\tck_as = 1 - exp(-1 / (max(tau_ms, 0.5) * 0.001 * sr));\n\tck_tau = tau_ms;\n}\na_s = ck_as;\nTc = T * CR;                                 // target head distance in tape cells\nif (Ts1 < 0) {\n\tTs1 = Tc;\n\tTs2 = Tc;\n}\nTs1 = Ts1 + a_s * (Tc - Ts1);\nTs2 = Ts2 + a_s * (Ts1 - Ts2);\n\n// ================= TRANSPORT ==========================================\nif (tape_stop > 0.5) {\n\ts_stop = max(0, s_stop - 1 / (max(stop_time, 0.02) * sr));\n} else {\n\ts_stop = min(1, s_stop + 1 / (max(start_time, 0.02) * sr));\n}\n// F6 (v0.1.1): a Loop Length change moves the wrap point, so the heads land on other tape.\n// Fade the playback (echo + feedback) out with a smooth 2-stage curve (3 ms stages, ~40 ms to\n// silence), apply the new length, keep it muted until freshly recorded tape reaches the echo\n// head (one delay + 5 ms: the tape between the heads still holds old material), then fade in.\nL_tgt = floor(clamp(loop_s, 1, 112.5) * CR);\nif (L_cur < 0) {\n\tL_cur = L_tgt;\n}\nlg_t = 1;\nif (L_tgt != L_cur) {\n\tlg_t = 0;\n\tif (lg < 0.0001) {\n\t\tL_cur = L_tgt;\n\t\tfirst = 1;                               // restart the write-head tracking on the new loop\n\t\tlg_hold = Ts2 * sr / CR + 0.005 * sr;    // one delay (target head distance) + 5 ms\n\t}\n}\nif (lg_hold > 0) {\n\tlg_t = 0;\n\tlg_hold = lg_hold - 1;\n}\na_lg = 1 - exp(-1 / (0.003 * sr));\nlg1 = lg1 + a_lg * (lg_t - lg1);\nlg = lg + a_lg * (lg1 - lg);\nL = L_cur;\n\n// flutter: capstan 26 Hz, pinch wheel 2.5 / 5.0 Hz (measured on an Echoplex [S5]),\n// plus a little broadband flutter and slow drift. flutter = 0.5 -> within the 0.3 % spec (E10: 0.256 % peak).\nph_cap = ph_cap + 26 / sr;\nph_cap = ph_cap - floor(ph_cap);\nph_p1 = ph_p1 + 2.5 / sr;\nph_p1 = ph_p1 - floor(ph_p1);\nph_p2 = ph_p2 + 5.0 / sr;\nph_p2 = ph_p2 - floor(ph_p2);\ndrift = drift + ck_drift * (noise() * 3 - drift);\nfl_rnd = fl_rnd + ck_flr * (noise() * 2 - fl_rnd);\nwf = sm_flutter * 0.006 * (0.45 * sin(twopi * ph_cap) + 0.3 * sin(twopi * ph_p1) + 0.15 * sin(twopi * ph_p2) + 0.1 * fl_rnd)\n   + sm_wow * 0.005 * drift;\n\nv_eff = clamp(s_stop * (1 + wf), 0, 2);\nvc = v_eff * CR / sr;                        // tape cells per sample\n\n// ---- record head position (moving) with a head-speed limit\nif (d_head < 0) {\n\td_head = Ts2;\n}\nhs = max(head_slew, 0.05) * CR / sr;         // cells per sample\nd_head = d_head + clamp(Ts2 - d_head, -hs, hs);\nd = clamp(d_head, 16, L - 64);\n// SOS head: fixed just upstream of the slider's far end (APPROX gap 62.5 ms = 0.5 in at 8 ips)\nd_sos = clamp((s_hi + 62.5) * 0.001 * CR, d + 1, L - 32);\n\np_new = wrap(p + vc, 0, L);\nw_new = p_new + d;                           // write position (unwrapped relative to p_new)\nw_old = w_prev;\nif (first > 0.5) {\n\tw_old = w_new - vc;\n\tfirst = 0;\n}\n// keep w_old in the same unwrapped frame as w_new\nif (w_old - w_new > 0.5 * L) {\n\tw_old = w_old - L;\n} else if (w_new - w_old > 0.5 * L) {\n\tw_old = w_old + L;\n}\nu_cps = w_new - w_old;                       // head speed over tape, cells per sample\nu_out = u_cps / max(CR / sr, 0.000001);      // 1 = normal recording speed\n\n// ================= gates & per-sample coefficients ====================\nhold_s = hold_s + ck_a10 * (hold - hold_s);\ndrive_s = drive_s + ck_a10 * (drive - drive_s);\nsos_s = sos_s + ck_a10 * (sos - sos_s);\necho_on_s = echo_on_s + ck_a10 * (echo_on - echo_on_s);\necho_on_s2 = echo_on_s2 + ck_a10 * (echo_on_s - echo_on_s2);   // 2-stage: no corner at the switch\npb_s = pb_s + ck_a10 * (playback - pb_s);\ndkey = drive_s * sm_drive_db;\nif (dkey != ck_dkey) {\n\tck_dg = pow(10, dkey / 20);\n\tck_dkey = dkey;\n}\ndrive_gain = ck_dg;\nif (sm_sat != ck_sat) {\n\tck_gt = 0.6 * pow(4, 2 * (sm_sat - 0.5));  // 0.5: ~2-3 % THD at nominal level (calibration test E05: 2.1 %)\n\tck_sat = sm_sat;\n}\ng_t = ck_gt;\nif (sm_in_gain_db != ck_ing) {\n\tck_ig = pow(10, sm_in_gain_db / 20);\n\tck_ing = sm_in_gain_db;\n}\nif (sm_rec_db != ck_rkey) {\n\tck_rg = pow(10, sm_rec_db / 20);\n\tck_rkey = sm_rec_db;\n}\nif (sm_sos_db != ck_skey) {\n\tck_sg = pow(10, sm_sos_db / 20);\n\tck_skey = sm_sos_db;\n}\nif (sm_noise_db != ck_nkey) {\n\tck_ng = (sm_noise_db > -119) ? pow(10, sm_noise_db / 20) / ck_nnorm : 0;\n\tck_nkey = sm_noise_db;\n}\n// F1/F2 (v0.1.1): scale by the chain's peak loop gain instead of assuming it is 1.\n// Sustain: x (pk3 / pk) keeps the 3 nF behaviour exactly (factor 1.0) and gives 33 nF the\n// same peak loop gain (same runaway point). HOLD: / pk makes the per-pass peak gain equal to\n// Hold Feedback, so 1.0 holds the loop instead of growing.\nif (ck_pk3 < 0) {\n\tck_pk3 = loop_peak(2947);\n\tck_pk33 = loop_peak(268);\n}\npbs = psmooth(pb_eq, ck_ps);                 // F4: de-emphasis switch is crossfaded (10 ms)\npk_loop = (1 - pbs) * ck_pk3 + pbs * ck_pk33;\nfb_amt = (sm_sustain * 1.25) * (ck_pk3 / pk_loop) * (1 - hold_s) + (sm_hold_fb / pk_loop) * hold_c * hold_s;\nfb_amt = fb_amt * (1 - sos_s);               // ECHO/SUSTAIN not operative in SOS [S1]\nq_fb = 0.707 + sm_fb_res * 6;\ndfb_g = (drive_fb > 0.5) ? drive_gain : 1;\n\n// ================= Q5 FET INPUT STAGE (always in circuit) =============\nfkey = pre_bypass * 7 + sr;\nif (fkey != ck_fkey) {\n\t// quiescent point (no signal): source cap fully charged, so cdt = 0\n\tqi, qv = fet_step(0, 0, 0, RS, IDSS, VP);\n\tck_idq = qi;\n\tck_vsq = qv;\n\tck_fkey = fkey;\n\tif (vs_state < 0) {\n\t\tvs_state = qv;\n\t}\n}\nsm_pre = psmooth(pre_bypass, ck_ps);         // F4 (v0.1.1): source cap switched over 10 ms\ncdt = CS * sr * sm_pre;\nvg = lp1(x, 15915) * VPF * ck_ig;            // input RF filter: 100k series, 100 pF to ground [S14]\nid_n, vs_n = fet_step(vg, vs_state, cdt, RS, IDSS, VP);\nvs_state = fixdenorm(vs_n);\n// drain cannot fall below the source (+0.3 V): limits large positive swings\nid_c = min(id_n, (VDD - vs_n - 0.3) / RD);\nvac = (id_c - ck_idq) * RD;                  // drain AC (V); sign flipped so the device is non-inverting\npre = vac / VPF;                             // back to full-scale units (EP-3 gain kept)\n// output mixer coefficients (recomputed only when Echo Volume moves)\nif (sm_echo != ck_kkey) {\n\tgd, ge, rt = mixer(sm_echo);\n\tgd5, ge5, rt5 = mixer(0.5);\n\tck_gd = gd;\n\tck_ge = ge;\n\tck_rth = rt;\n\tck_en = gd5 / ge5;                       // echo source level: first repeat ~ dry level at k = 0.5 (APPROX)\n\tck_kkey = sm_echo;\n}\ndry_br = hp1(pre, 7) * ck_gd * sm_dry;       // 0.1 uF coupling into ~260k: ~7 Hz\n\n// ================= ECHO HEAD READ (fixed) =============================\nri = floor(p_new);\nrf = p_new - ri;\ni0 = wrap(ri, 0, L);\nim1 = wrap(i0 - 1, 0, L);\nip1 = wrap(i0 + 1, 0, L);\nip2 = wrap(i0 + 2, 0, L);\nm0 = peek(tape, im1, 0);\nc0 = peek(tape, i0, 0);\nn0 = peek(tape, ip1, 0);\nq0 = peek(tape, ip2, 0);\ny_echo = hermite(m0, c0, n0, q0, rf);\n// SOS head (monitors the loop before it reaches the record head)\nrs_pos = p_new + d_sos;\nrsi = floor(rs_pos);\nrsf = rs_pos - rsi;\nj0 = wrap(rsi, 0, L);\njm1 = wrap(j0 - 1, 0, L);\njp1 = wrap(j0 + 1, 0, L);\njp2 = wrap(j0 + 2, 0, L);\nsm0 = peek(tape, jm1, 0);\nsc0 = peek(tape, j0, 0);\nsn0 = peek(tape, jp1, 0);\nsq0 = peek(tape, jp2, 0);\ny_sos = hermite(sm0, sc0, sn0, sq0, rsf);\n\n// ================= PLAYBACK CHAIN =====================================\ngp = min(1, v_eff / 0.15);                   // head output falls away as the tape stops\nfc_tape = clamp(5188 * v_eff, 50, 0.45 * sr); // tape HF loss: H&H fit (7782 Hz @ 12 ips) x 8/12  APPROX\nyraw = y_echo * (1 - sos_s) + y_sos * sos_s; // SOS: you hear the SOS head [S1]\ntl, tb_, th = svf(yraw * gp, fc_tape, 0.707);\n// de-emphasis: 18k with 0.003 uF (forum, 2947 Hz) / 0.033 uF (manual scan, 268 Hz); both run and\n// are crossfaded (F4). Each is normalised at 1 kHz so both give the same mid level.\ny3 = lp1(tl, 2947);\ny33 = lp1(tl, 268);\nypb = (y3 * sqrt(1 + (1000 / 2947) * (1000 / 2947))) * (1 - pbs) + (y33 * sqrt(1 + (1000 / 268) * (1000 / 268))) * pbs;\nypb = ypb * lg;                              // F6 fade\nypb = hp1(ypb, 30);                          // head-amp coupling APPROX\nypb = ypb + lp1(noise(), 10000) * ck_ng;\n// F1 (v0.1.1): HOLD level trim. A fixed loop gain cannot freeze a loop: tape saturation\n// compresses slightly at playing level and frequencies off the loop's peak decay. While HOLD\n// is on, the playback power is compared with a target, and the hold gain is trimmed by at most\n// +-3 % per pass. Settling: after HOLD is pressed the target may only fall (the loop darkens\n// naturally but never grows) until the loop stops losing level (< 1 dB over a pass, at least\n// 2 passes; at most 30 s); then it is locked and changes by Hold Feedback^2 per pass\n// (1.0 = frozen), never sitting more than 1.5 dB above the loop's own level. Outside HOLD hold_c = 1 and nothing changes.\nhp_env = fixdenorm(hp_env + (1 - exp(-1 / (0.3 * sr))) * (ypb * ypb - hp_env));\ndsamp = max(d / max(vc, 0.000001), 1);\nif (hold > 0.5 && hold_prev < 0.5) {\n\thold_tgt = hp_env;\n\thold_cnt = 30 * sr;                          // settling time limit (dark voicing needs the longest)\n\thold_pass = dsamp + 0.3 * sr;                 // first check after one pass + envelope settle\n\thold_np = 0;\n\thold_elast = hp_env;\n}\nhold_prev = hold;\nif (hold > 0.5) {\n\tif (hold_cnt > 0) {\n\t\thold_tgt = min(hold_tgt, hp_env);\n\t\thold_cnt = hold_cnt - 1;\n\t\thold_pass = hold_pass - 1;\n\t\tif (hold_pass <= 0) {\n\t\t\thold_np = hold_np + 1;\n\t\t\tif (hold_np >= 2 && hp_env > 0.794 * hold_elast) {\n\t\t\t\thold_cnt = 0;                    // lost < 1 dB over the last pass: lock\n\t\t\t}\n\t\t\thold_elast = hp_env;\n\t\t\thold_pass = dsamp;\n\t\t}\n\t\tcc = (hold_tgt > 0.0000000001) ? clamp(sqrt(hold_tgt / max(hp_env, 0.00000000000000000001)), 0.97, 1) : 0.97;\n\t} else {\n\t\thold_tgt = fixdenorm(hold_tgt * exp(2 * log(max(sm_hold_fb, 0.01)) / dsamp));\n\t\t// a shortfall beyond 1.5 dB is spectral loss (e.g. the dark voicing shedding its mids), not\n\t\t// saturation: let the target follow, so the trim never pumps the loop back up by more than 1.5 dB\n\t\thold_tgt = min(hold_tgt, hp_env * 1.413);\n\t\tcc = (hold_tgt > 0.0000000001) ? clamp(sqrt(hold_tgt / max(hp_env, 0.00000000000000000001)), 0.97, 1.03) : 0.97;\n\t}\n\thold_c = hold_c + (1 - exp(-1 / (0.2 * sr))) * (cc - hold_c);\n} else {\n\thold_c = hold_c + (1 - exp(-1 / (0.2 * sr))) * (1 - hold_c);\n}\n// Echo Sustain feedback, with the Echolivity feedback filters\nf1l, f1b, f1h = svf(ypb, sm_fb_hp_hz, q_fb);\nf2l, f2b, f2h = svf(f1h, sm_fb_lp_hz, q_fb);\nguard = (env > 1.5) ? 1.5 / env : 1;\nfbs = f2l * fb_amt * guard * dfb_g;\nenv = fixdenorm(env + ((abs(f2l * fb_amt) > env) ? ck_up : ck_dn) * (abs(f2l * fb_amt) - env));\n\n// ================= RECORD CHAIN =======================================\nu = pre * ck_rg * drive_gain * (1 - hold_s) + fbs;\nu = hp1(u, 20);\nu = tapesat(u * g_t * drive_gain, 0.05) / g_t;\nu = dc_block(u);\n// write anti-alias: the head's speed over the tape sets the tape's sample spacing\n// spatial Nyquist: a frequency f lands at f / (|u_cps| sr) cycles per cell, which must stay < 0.5\n// 4th-order Butterworth at 0.35 sr |u|: everything that plays back below 0.35 sr (16.8 kHz @ 48k)\n// is kept; what would land above Nyquist is >= 40 dB down before the head samples it (test E03)\nfc_w = clamp(0.35 * sr * abs(u_cps), 20, 0.45 * sr);\nrl1, rb1, rh1 = svf(u, fc_w, 0.5412);\nrl, rb, rh = svf(rl1, fc_w, 1.3066);\nrec = fixnan(rl);\n\n// ================= RECORD/ERASE HEAD: fill every cell crossed =========\n// ECHO: erase + record (overwrite). SOS: erase off, new is added to the old\n// layer, which loses sos_db per pass. PLAYBACK: record and erase off.\nwr_gain = 1 - pb_s;\nsp_bias = sm_bias_khz * 1000 / (max(abs(u_cps), 0.000001) * sr);  // bias cycles per tape cell\nbias_amp = 0;\nif (sp_bias < FBIAS_MIN_SP) {\n\tbias_amp = sm_bias_leak * 0.1 * min(1, (FBIAS_MIN_SP - sp_bias) / 0.1);   // level APPROX\n}\nif (wr_gain > 0.0001 && abs(u_cps) > 0.000001) {\n\tklo = (u_cps > 0) ? floor(w_old) + 1 : -floor(-w_new);      // -floor(-x) = ceil(x)\n\tkhi = (u_cps > 0) ? floor(w_new) : -floor(-w_old) - 1;\n\tfor (k = klo; k <= khi; k += 1) {\n\t\tfq = (k - w_old) / u_cps;\n\t\tki = wrap(k, 0, L);\n\t\tval = rec_prev + fq * (rec - rec_prev);\n\t\tif (bias_amp > 0) {\n\t\t\tval = val + bias_amp * sin(twopi * sm_bias_khz * 1000 * ((t - 1 + fq) / sr));\n\t\t}\n\t\told = peek(tape, ki, 0);\n\t\tkeep = sos_s * ck_sg;                            // SOS keeps the old layer\n\t\tnv = old * (1 - wr_gain) + wr_gain * (old * keep + val);\n\t\tpoke(tape, nv, ki, 0);\n\t}\n}\nrec_prev = rec;\nw_prev = w_new;\np = p_new;\n\n// ================= OUTPUT =============================================\ne1l, e1b, e1h = svf(ypb, sm_echo_hp_hz, 0.707);\ne2l, e2b, e2h = svf(e1h, sm_echo_lp_hz, 0.707);\nech = dc_block(e2l) * echo_on_s2;\nif (sm_out_db != ck_okey) {\n\tck_og = pow(10, sm_out_db / 20);\n\tck_okey = sm_out_db;\n}\nif (sm_echo_trim_db != ck_etkey) {\n\tck_et = pow(10, sm_echo_trim_db / 20);\n\tck_etkey = sm_echo_trim_db;\n}\no_mix = dry_br + ech * ck_en * ck_ge * ck_et;\n// F4 (v0.1.1): the cable filter always runs (no stale state); below 1 pF it is blended out\no_lp = lp1(o_mix, 1 / (twopi * ck_rth * max(sm_cable_pf, 1) * 0.000000000001));\nif (sm_cable_pf >= 1) {\n\to_mix = o_lp;\n} else if (sm_cable_pf > 0) {\n\to_mix = o_mix + sm_cable_pf * (o_lp - o_mix);\n}\no1 = fixnan(o_mix * ck_og);\no2 = o1;\n\n// ================= OUTPUT PROTECTION (as the H&H device) =================\nif (ceiling_db != ck_ckey) {\n\tck_cl = pow(10, ceiling_db / 20);\n\tck_ckey = ceiling_db;\n}\nc_lin = ck_cl;\nthr = c_lin * 0.944061;\npk = abs(o1);\nover = (pk > thr) ? 1 : 0;\npg = 1;\nif (protect > 0.5) {\n\tgreq = (pk > thr) ? thr / pk : 1;\n\tif (greq < pg_hold) {\n\t\tpg_hold = greq;\n\t\tph_cnt = 0.010 * sr;\n\t} else if (ph_cnt > 0) {\n\t\tph_cnt = ph_cnt - 1;\n\t} else {\n\t\tpg_hold = pg_hold + ck_prel * (1 - pg_hold);\n\t}\n\tif (pg_hold < pg_s) {\n\t\tpg_s = pg_s + ck_patt * (pg_hold - pg_s);\n\t} else {\n\t\tpg_s = pg_hold;\n\t}\n\tpg = pg_s;\n\to1 = softclip(o1 * pg, thr, c_lin);\n\to2 = o1;\n} else {\n\tpg_hold = 1;\n\tpg_s = 1;\n\tph_cnt = 0;\n}\n\nout1 = o1;\nout2 = o2;\nout3 = (d / max(vc, 0.000000001)) / sr * 1000;\nout4 = tap_bpm;\nout5 = u_out;\nout6 = v_eff;\nout7 = pg;\nout8 = over;\n",
         "fontface": 0,
         "fontname": "<Monospaced>",
         "fontsize": 11.0,
         "numinlets": 2,
         "numoutlets": 8,
         "outlettype": [
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          ""
         ],
         "patching_rect": [
          20,
          60,
          900,
          700
         ]
        }
       },
       {
        "box": {
         "id": "g-in1",
         "maxclass": "newobj",
         "text": "in 1",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          20,
          20,
          30,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-in2",
         "maxclass": "newobj",
         "text": "in 2",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          880,
          20,
          30,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out1",
         "maxclass": "newobj",
         "text": "out 1",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out2",
         "maxclass": "newobj",
         "text": "out 2",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          140,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out3",
         "maxclass": "newobj",
         "text": "out 3",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          260,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out4",
         "maxclass": "newobj",
         "text": "out 4",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          380,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out5",
         "maxclass": "newobj",
         "text": "out 5",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          500,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out6",
         "maxclass": "newobj",
         "text": "out 6",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          620,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out7",
         "maxclass": "newobj",
         "text": "out 7",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          740,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out8",
         "maxclass": "newobj",
         "text": "out 8",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          860,
          780,
          40,
          22
         ]
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "g-in1",
          0
         ],
         "destination": [
          "g-code",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-in2",
          0
         ],
         "destination": [
          "g-code",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          0
         ],
         "destination": [
          "g-out1",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          1
         ],
         "destination": [
          "g-out2",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          2
         ],
         "destination": [
          "g-out3",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          3
         ],
         "destination": [
          "g-out4",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          4
         ],
         "destination": [
          "g-out5",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          5
         ],
         "destination": [
          "g-out6",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          6
         ],
         "destination": [
          "g-out7",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          7
         ],
         "destination": [
          "g-out8",
          0
         ]
        }
       }
      ]
     }
    }
   },
   {
    "box": {
     "id": "obj-18",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      20,
      450,
      130,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "text": "record~ out_GOLD1_bright_feedback 1"
    }
   },
   {
    "box": {
     "id": "obj-19",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      170,
      346,
      80,
      22
     ],
     "outlettype": [
      "bang"
     ],
     "text": "delay 5300"
    }
   },
   {
    "box": {
     "id": "obj-20",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      170,
      376,
      40,
      22
     ],
     "outlettype": [
      "bang",
      "bang"
     ],
     "text": "t b b"
    }
   },
   {
    "box": {
     "id": "obj-21",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      170,
      406,
      30,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "0"
    }
   },
   {
    "box": {
     "id": "obj-22",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      170,
      480,
      250,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "writewave out_GOLD1_bright_feedback_max.wav"
    }
   },
   {
    "box": {
     "id": "obj-23",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      510,
      290,
      20
     ],
     "text": "\u2192 writes out_GOLD1_bright_feedback_max.wav",
     "fontsize": 10.0
    }
   },
   {
    "box": {
     "id": "obj-24",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      320,
      180,
      290,
      20
     ],
     "text": "GOLD2_dark_feedback \u2014 tier A (sample-exact), 5 s",
     "fontsize": 10.5
    }
   },
   {
    "box": {
     "id": "obj-25",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      320,
      204,
      290,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "noise_db -120, wow 0, flutter 0, sustain 0.6, pb_eq 1"
    }
   },
   {
    "box": {
     "id": "obj-26",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      320,
      232,
      230,
      22
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ in_GOLD2_dark_feedback in_GOLD2_dark_feedback.wav"
    }
   },
   {
    "box": {
     "id": "obj-27",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      320,
      256,
      230,
      22
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ out_GOLD2_dark_feedback 5600 1"
    }
   },
   {
    "box": {
     "id": "obj-28",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      320,
      284,
      140,
      26
     ],
     "outlettype": [
      "",
      "",
      "int"
     ],
     "text": "RUN GOLD2"
    }
   },
   {
    "box": {
     "id": "obj-29",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      320,
      318,
      60,
      22
     ],
     "outlettype": [
      "bang",
      "bang",
      "bang"
     ],
     "text": "t b b b"
    }
   },
   {
    "box": {
     "id": "obj-30",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      390,
      346,
      30,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "1"
    }
   },
   {
    "box": {
     "id": "obj-31",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      320,
      346,
      40,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "start"
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      320,
      376,
      120,
      22
     ],
     "outlettype": [
      "signal",
      "bang"
     ],
     "text": "play~ in_GOLD2_dark_feedback 1"
    }
   },
   {
    "box": {
     "id": "obj-33",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      320,
      412,
      120,
      22
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "text": "gen~",
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 0,
       "revision": 0,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "dsp.gen",
      "rect": [
       50,
       50,
       960,
       840
      ],
      "boxes": [
       {
        "box": {
         "id": "g-code",
         "maxclass": "codebox",
         "code": "// FALLBACK NAMES BUILD (not a release): identical engine with locals that share Gen operator names renamed\n// (s->st_s, f->fq, i->ii, gtp->g_tp, r->rdp). Use only if gen~ reports an error on one of those names.\n// =====================================================================\n// ECHOLIVITY \u2014 EP-3 (Maestro Echoplex EP-3 model) \u00b7 tape engine v0.1.2-dev\n// v0.1.2-dev: identifiers renamed that collide with gen~ built-ins (dcblock -> dc_block,\n// lt -> l_t); no functional change (bit-identical, test R06/X01).\n// v0.1.1-dev remediation (see CHANGELOG / validation/EP3_REMEDIATION_REPORT.md): F1 HOLD loop gain,\n// F2 33 nF feedback runaway, F3 8 s default loop, F4 click-free DE-EMPH / Cable / Source-cap\n// changes, F6 loop-length change fade.\n// gen~ codebox. Status of every value: docs/EP3_MODELING_NOTES.md\n//\n// Signal flow (EP-3 manual, Maestro owner/service manual [S1]):\n//   input -> Q5 FET stage (TIS58, 22k drain, 3.3k source, 0.022 uF source\n//   bypass = pre-emphasis) -> dry out (high output Z into cable C)\n//                           -> record level -> record amp -> RECORD/ERASE HEAD\n//   (moving, on the slider) -> tape (8 ips, ~75 ft loop) -> fixed ECHO head\n//   -> head amp + de-emphasis -> Echo Sustain (feedback) / Echo Volume (blend\n//   pot in the passive output mixer, wiper grounded) -> output (high Z, into the cable)\n//   SOS: SOS head (upstream of the record head) monitors the loop; erase off,\n//   new material is added to the old layer (-1 dB per pass, manual alignment).\n//\n// The record head moves, so a slider move changes how sound is WRITTEN on the\n// tape (pitch change heard one delay later). The write is band-limited (pre-\n// write low-pass that follows the head's speed over the tape, after\n// Arnardottir/Abel/Smith 2008) and fills every tape cell the head crosses.\n//\n// Tape buffer: fixed 48 000 cells per second of tape at nominal speed, so the\n// 112.5 s loop costs the same memory at any sample rate.\n// Level convention: 100 mV == -18 dBFS RMS (same as the H&H device).\n// Mono like the original: L+R are summed at the input; out1 == out2.\n//\n// out1/out2: audio   out3: delay (ms)   out4: tap BPM\n// out5: record-head write speed over tape (1 = normal)   out6: tape speed\n// out7: output-protection gain   out8: output over flag\n// =====================================================================\n\n// ---------- stateful helpers (each call site gets its own state) ------\nsvf(x, fc, q) {\n\tHistory s1(0);\n\tHistory s2(0);\n\tHistory key_fc(-1);\n\tHistory key_q(-1);\n\tHistory key_sr(-1);\n\tHistory c_k(0);\n\tHistory c_a1(0);\n\tHistory c_a2(0);\n\tHistory c_a3(0);\n\tif (fc != key_fc || q != key_q || samplerate != key_sr) {\n\t\tfcc = clamp(fc, 5, samplerate * 0.49);\n\t\tg = tan(pi * fcc / samplerate);\n\t\tc_k = 1 / q;\n\t\tc_a1 = 1 / (1 + g * (g + c_k));\n\t\tc_a2 = g * c_a1;\n\t\tc_a3 = g * c_a2;\n\t\tkey_fc = fc;\n\t\tkey_q = q;\n\t\tkey_sr = samplerate;\n\t}\n\tv3 = x - s2;\n\tv1 = c_a1 * s1 + c_a2 * v3;\n\tv2 = s2 + c_a2 * s1 + c_a3 * v3;\n\ts1 = fixdenorm(2 * v1 - s1);\n\ts2 = fixdenorm(2 * v2 - s2);\n\treturn v2, v1, x - c_k * v1 - v2;\n}\n\nlp1(x, fc) {\n\tHistory z(0);\n\tHistory key_fc(-1);\n\tHistory key_sr(-1);\n\tHistory c_a(0);\n\tif (fc != key_fc || samplerate != key_sr) {\n\t\tc_a = 1 - exp(-twopi * min(fc, samplerate * 0.49) / samplerate);\n\t\tkey_fc = fc;\n\t\tkey_sr = samplerate;\n\t}\n\tz = fixdenorm(z + c_a * (x - z));\n\treturn z;\n}\n\nhp1(x, fc) {\n\treturn x - lp1(x, fc);\n}\n\ndc_block(x) {\n\tHistory x1(0);\n\tHistory y1(0);\n\tR = 1 - twopi * 10 / samplerate;\n\ty = fixdenorm(x - x1 + R * y1);\n\tx1 = x;\n\ty1 = y;\n\treturn y;\n}\n\nhermite(xm1, x0, x1, x2, fq) {\n\tc1 = 0.5 * (x1 - xm1);\n\tc2 = xm1 - 2.5 * x0 + 2 * x1 - 0.5 * x2;\n\tc3 = 0.5 * (x2 - xm1) + 1.5 * (x0 - x1);\n\treturn ((c3 * fq + c2) * fq + c1) * fq + x0;\n}\n\nsoftclip(x, k, c) {\n\tax = abs(x);\n\ty = x;\n\tif (ax > k) {\n\t\tsg = (x >= 0) ? 1 : -1;\n\t\ty = sg * (k + (c - k) * tanh((ax - k) / (c - k)));\n\t}\n\treturn y;\n}\n\ntapesat(x, b) {\n\tHistory key_b(-99999);\n\tHistory c_tb(0);\n\tif (b != key_b) {\n\t\tc_tb = tanh(b);\n\t\tkey_b = b;\n\t}\n\ttb = c_tb;\n\treturn (tanh(x + b) - tb) / (1 - tb * tb);\n}\n\npsmooth(t, a) {\n\tHistory st_s(0);\n\tHistory init(0);\n\tif (init < 0.5) {\n\t\tst_s = t;\n\t\tinit = 1;\n\t}\n\tst_s = st_s + a * (t - st_s);\n\tif (abs(t - st_s) <= 0.000000001 * max(1, abs(t))) {\n\t\tst_s = t;\n\t}\n\treturn st_s;\n}\n\nfsmooth(fq, a) {\n\tHistory ls(0);\n\tHistory init(0);\n\tl_t = log(fq);\n\tif (init < 0.5) {\n\t\tls = l_t;\n\t\tinit = 1;\n\t}\n\tls = ls + a * (l_t - ls);\n\tif (abs(l_t - ls) <= 0.000000001) {\n\t\tls = l_t;\n\t}\n\treturn (ls == l_t) ? fq : exp(ls);\n}\n\n// JFET drain current, square law: Id = Idss (1 - Vgs/Vp)^2 for Vp < Vgs, else 0.\n// Vgs above +0.4 V is held there (gate-source diode conducts).\n// Source node: Rs in parallel with Cs (Cs = 0 when the bypass cap is out).\n// Backward-Euler step for the source node, solved in closed form:\n//   (Cs/dt + 1/Rs) Vs - (Cs/dt) Vs0 = Id(vg - Vs)\n// Returns (Id, Vs).\nfet_step(vg, vs0, cdt, rs, idss, vp) {\n\ta = cdt + 1 / rs;\n\tb = cdt * vs0;\n\tvgc = min(vg, 0.4 + vs0);\n\t// w = 1 - Vgs/Vp; Vs = Vp w - Vp + vg  ->  idss w^2 - a Vp w + (a Vp - a vg + b) = 0\n\tqa = idss;\n\tqb = -a * vp;\n\tqc = a * vp - a * vgc + b;\n\tdisc = qb * qb - 4 * qa * qc;\n\tidq = 0;\n\tvsq = b / a;                                  // cut-off: no drain current\n\tif (disc >= 0) {\n\t\tw = (-qb + sqrt(disc)) / (2 * qa);\n\t\tif (w > 0) {\n\t\t\tidq = idss * w * w;\n\t\t\tvsq = vp * w - vp + vgc;\n\t\t}\n\t}\n\treturn idq, vsq;\n}\n\n// Passive output mixer (EP-3; values from replica/forum traces [S11][S13]-[S15], APPROX until a\n// clean schematic): drain -0.1uF- A; A -470k- gnd; A -220k- B; B = Echo Volume lug 1;\n// B -100k- OUT. Echo amp -220k- E; E -100k- gnd; E = pot lug 3; E -100k- OUT.\n// The 500k pot's WIPER IS GROUNDED: k = 0 shorts the echo lug, k = 1 shorts the dry lug,\n// so Echo Volume is a blend and the dry level peaks near k = 0.2 (non-monotonic).\n// OUT drives the amp (1M) and the cable capacitance. Returns dry gain, echo gain and the\n// Thevenin resistance at OUT (which, with the cable C, sets the treble roll-off).\nmixer(k) {\n\trp3 = clamp(k, 0, 1) * 500000;\n\trp1 = 500000 - rp3;\n\tra = 22000 * 470000 / 492000;\n\tvbf = (470000 / 492000) * rp1 / (ra + 220000 + rp1);\n\trdb = (ra + 220000) * rp1 / (ra + 220000 + rp1) + 100000;\n\trsh = rp3 * 100000 / (rp3 + 100000);\n\tvef = rsh / (220000 + rsh);\n\treb = 220000 * rsh / (220000 + rsh) + 100000;\n\tgsum = 1 / rdb + 1 / reb + 0.000001;\n\treturn vbf / rdb / gsum, vef / reb / gsum, 1 / gsum;\n}\n\n// F1/F2 (v0.1.1): peak gain of the fixed playback/record loop chain for a de-emphasis corner fde:\n// tape HF loss (2-pole, 5188 Hz) x de-emphasis (1-pole fde, normalised to 1 at 1 kHz)\n// x couplings (30, 20, 10 Hz high-passes). The 1 kHz normalisation lifts the chain above 1 below\n// 1 kHz: peak 1.043 (334 Hz) for 3 nF and 3.383 (102 Hz) for 33 nF, matching measured per-pass\n// gains of 1.040 / 3.369 (validation/EP3_REMEDIATION_REPORT.md). Grid search, 20 Hz\u20134 kHz.\nloop_peak(fde) {\n\tnrm = sqrt(1 + (1000 / fde) * (1000 / fde));\n\tpk = 0;\n\tfor (ii = 0; ii < 96; ii += 1) {\n\t\tfq = 20 * pow(200, ii / 95);\n\t\tg_tp = 1 / sqrt(1 + pow(fq / 5188, 4));\n\t\tgd = nrm / sqrt(1 + (fq / fde) * (fq / fde));\n\t\tg30 = (fq / 30) / sqrt(1 + (fq / 30) * (fq / 30));\n\t\tg20 = (fq / 20) / sqrt(1 + (fq / 20) * (fq / 20));\n\t\tg10 = (fq / 10) / sqrt(1 + (fq / 10) * (fq / 10));\n\t\tpk = max(pk, g_tp * gd * g30 * g20 * g10);\n\t}\n\treturn pk;\n}\n\n// ---------- tape ------------------------------------------------------\n// 112.5 s * 48 000 cells/s (+ margin)\nData tape(5400064, 1);\n\n// ---------- parameters ------------------------------------------------\nParam in_gain_db(0, min=-36, max=12);\nParam dry(1, min=0, max=1);                  // Echolivity trim on the dry branch (1 = original)\nParam echo(0.5, min=0, max=1);               // ECHO VOLUME: the 500k blend pot (wiper grounded)\nParam echo_trim_db(0, min=-24, max=12);      // Echolivity trim on the echo branch\nParam out_db(0, min=-36, max=12);\nParam mode(2, min=0, max=2);\nParam bpm(120, min=20, max=999);\nParam sync_div(2, min=0, max=5);\nParam sync_type(0, min=0, max=2);\nParam sync_mult(1, min=1, max=8);\nParam offset_ms(0, min=-100, max=100);\nParam tap(0, min=0, max=1000000);\nParam tap_div(3, min=0, max=5);\nParam tap_type(0, min=0, max=2);\nParam bar_beats(4, min=1, max=16);\n// ECHO DELAY slider: delay is linear in head position at constant tape speed.\n// 60\u2013600 ms default = DAFX/CCRMA measured range [S3]; 80\u2013800 per [S4].\nParam slider_pos(0.5, min=0, max=1);\nParam slider_min_ms(60, min=2, max=2000);\nParam slider_max_ms(600, min=2, max=4000);\nParam glide_ms(40, min=1, max=2000);\nParam transition_ms(250, min=1, max=4000);\nParam head_slew(4, min=0.05, max=12);        // max head speed, in delay-seconds per second (APPROX)\n// EP-3 front panel / internal\nParam sustain(0.4, min=0, max=1);            // ECHO SUSTAIN (500k lin [S12]); runs away from 0.8 (test E14)\nParam rec_db(0, min=-12, max=12);            // RECORD LEVEL trimmer (internal on the original)\nParam sos(0, min=0, max=1);                  // ECHO / SOUND ON SOUND switch\nParam sos_db(-1, min=-6, max=0);             // SOS loss per pass; manual alignment: \"approximately 1dB\"\nParam echo_on(1, min=0, max=1);              // footswitch: echo on/off\nParam playback(0, min=0, max=1);             // footswitch: playback (record + erase off)\nParam pre_bypass(1, min=0, max=1);           // Q5 source bypass 0.022 uF (manual addendum) in/out\nParam cable_pf(470, min=0, max=2000);        // cable + amp input capacitance; 470 pF fits ClinchFX's descriptions (test E07)\nParam pb_eq(0, min=0, max=1);                // de-emphasis: 0 = 18k/0.003uF (forum), 1 = 18k/0.033uF (manual scan)\nParam bias_khz(100, min=40, max=120);        // \"approximate frequency of 100 KC\" [S1]\nParam bias_leak(0.3, min=0, max=1);          // bias heard on very fast slider moves (APPROX level)\nParam loop_s(8, min=1, max=112.5);           // F3 (v0.1.1): default 8 s for usable SOS/PLAYBACK; 112.5 s = ~75 ft at 8 ips [S18] (authentic)\n// tape character (Echolivity)\nParam sat(0.5, min=0, max=1);\nParam noise_db(-60, min=-120, max=-30);\nParam wow(0.1, min=0, max=1);                // slow drift\nParam flutter(0.25, min=0, max=1);           // 0.5 stays within the 0.3 % spec (E10: 0.256 %); capstan 26 Hz, pinch 2.5/5 Hz\n// performance (Echolivity)\nParam hold(0, min=0, max=1);\nParam hold_fb(1, min=0.9, max=1.05);\nParam drive(0, min=0, max=1);\nParam drive_db(12, min=0, max=24);\nParam drive_fb(0, min=0, max=1);\nParam tape_stop(0, min=0, max=1);\nParam stop_time(1, min=0.05, max=8);\nParam start_time(0.4, min=0.05, max=8);\nParam fb_hp_hz(10, min=10, max=2000);\nParam fb_lp_hz(20000, min=500, max=20000);\nParam fb_res(0, min=0, max=1);\nParam echo_hp_hz(10, min=10, max=2000);\nParam echo_lp_hz(20000, min=500, max=20000);\nParam protect(1, min=0, max=1);\nParam ceiling_db(-0.3, min=-12, max=0);\n\n// ---------- state -----------------------------------------------------\nHistory p(0);\nHistory d_head(-1);\nHistory Ts1(-1);\nHistory Ts2(-1);\nHistory w_prev(0);\nHistory rec_prev(0);\nHistory first(1);\nHistory s_stop(1);\nHistory hold_s(0);\nHistory drive_s(0);\nHistory sos_s(0);\nHistory echo_on_s(1);\nHistory echo_on_s2(1);\nHistory pb_s(0);\nHistory env(0);\nHistory prev_mode(-1);\nHistory trans_left(0);\nHistory nsamp(0);\nHistory tap_prev(0);\nHistory last_tap(-1);\nHistory t_count(0);\nHistory ti0(0);\nHistory ti1(0);\nHistory ti2(0);\nHistory ti3(0);\nHistory tap_bpm(120);\nHistory ph_cap(0);\nHistory ph_p1(0);\nHistory ph_p2(0);\nHistory drift(0);\nHistory fl_rnd(0);\nHistory last_sr(0);\nHistory vs_state(-1);\nHistory pg_hold(1);\nHistory pg_s(1);\nHistory ph_cnt(0);\nHistory u_out(1);\nHistory ck_pk3(-1);\nHistory ck_pk33(-1);\nHistory L_cur(-1);\nHistory hp_env(0);\nHistory hold_tgt(0);\nHistory hold_c(1);\nHistory hold_prev(0);\nHistory hold_cnt(0);\nHistory hold_pass(0);\nHistory hold_np(0);\nHistory hold_elast(0);\nHistory lg(1);\nHistory lg1(1);\nHistory lg_t(1);\nHistory lg_hold(0);\n// cached coefficients\nHistory ck_sr(-1);\nHistory ck_ps(0);\nHistory ck_a10(0);\nHistory ck_drift(0);\nHistory ck_flr(0);\nHistory ck_nnorm(1);\nHistory ck_up(0);\nHistory ck_dn(0);\nHistory ck_prel(0);\nHistory ck_patt(0);\nHistory ck_tau(-1);\nHistory ck_as(0);\nHistory ck_fkey(-99999);\nHistory ck_idq(0);\nHistory ck_vsq(0);\nHistory ck_dkey(-99999);\nHistory ck_dg(1);\nHistory ck_sat(-99999);\nHistory ck_gt(1);\nHistory ck_ing(-99999);\nHistory ck_ig(1);\nHistory ck_rkey(-99999);\nHistory ck_rg(1);\nHistory ck_skey(-99999);\nHistory ck_sg(0.891);\nHistory ck_nkey(-99999);\nHistory ck_ng(0);\nHistory ck_okey(-99999);\nHistory ck_kkey(-99999);\nHistory ck_gd(0.18);\nHistory ck_ge(0.13);\nHistory ck_rth(83000);\nHistory ck_en(1);\nHistory ck_etkey(-99999);\nHistory ck_et(1);\nHistory ck_og(1);\nHistory ck_ckey(-99999);\nHistory ck_cl(1);\n\nCR = 48000;                                  // tape cells per second at nominal speed\nNB = 5400064;\nVPF = 0.794;                                 // volts per full scale (100 mV = -18 dBFS RMS)\nRD = 22000;                                  // Q5 drain resistor [S1][S8]\nRS = 3300;                                   // Q5 source resistor [S1]\nCS = 0.000000022;                            // Q5 source bypass [S1 addendum]\nIDSS = 0.0034;                               // APPROX: fitted so Vs = 1.8 V at 21.2 V supply\nVP = -3.0;                                   //   (measured 1.72\u20131.88 V / 21.0\u201321.3 V on two units [S8])\nVDD = 21.2;\nFBIAS_MIN_SP = 0.45;                         // spatial Nyquist guard (cycles per tape cell)\n\nsr = samplerate;\nt = nsamp;\nnsamp = nsamp + 1;\nx = 0.5 * (fixnan(in1) + fixnan(in2));      // mono, like the original\n\nif (sr != last_sr) {\n\tif (last_sr > 0) {\n\t\tTs1 = -1;\n\t\tTs2 = -1;\n\t\td_head = -1;\n\t\tlast_tap = -1;\n\t\tt_count = 0;\n\t}\n\tlast_sr = sr;\n}\n\n// ================= TAP TEMPO (sample counter; as the H&H device) =======\nif (tap > tap_prev + 0.5) {\n\tif (last_tap >= 0) {\n\t\tiv = t - last_tap;\n\t\tif (iv < 0.15 * sr) {\n\t\t\tiv = -1;\n\t\t} else if (iv > 2 * sr) {\n\t\t\tt_count = 0;\n\t\t\tlast_tap = t;\n\t\t} else {\n\t\t\tif (t_count > 0) {\n\t\t\t\ttavg0 = (ti0 + ti1 + ti2 + ti3) / min(t_count, 4);\n\t\t\t\tif (abs(iv - tavg0) > 0.4 * tavg0) {\n\t\t\t\t\tt_count = 0;\n\t\t\t\t}\n\t\t\t}\n\t\t\tti3 = ti2;\n\t\t\tti2 = ti1;\n\t\t\tti1 = ti0;\n\t\t\tti0 = iv;\n\t\t\tif (t_count == 0) {\n\t\t\t\tti1 = 0;\n\t\t\t\tti2 = 0;\n\t\t\t\tti3 = 0;\n\t\t\t}\n\t\t\tt_count = min(t_count + 1, 4);\n\t\t\ttavg = (ti0 + ti1 + ti2 + ti3) / t_count;\n\t\t\ttap_bpm = 60 * sr / tavg;\n\t\t\tlast_tap = t;\n\t\t}\n\t} else {\n\t\tlast_tap = t;\n\t}\n}\ntap_prev = tap;\n\n// ================= TARGET DELAY TIME ==================================\ns_lo = min(slider_min_ms, slider_max_ms);\ns_hi = max(slider_min_ms, slider_max_ms);\nT = (s_lo + slider_pos * (s_hi - s_lo)) * 0.001;\nif (mode < 1.5) {\n\tuse_bpm = max(bpm, 20);\n\tdv_idx = floor(sync_div + 0.5);\n\ttyp = floor(sync_type + 0.5);\n\tif (mode >= 0.5) {\n\t\tuse_bpm = tap_bpm;\n\t\tdv_idx = floor(tap_div + 0.5);\n\t\ttyp = floor(tap_type + 0.5);\n\t}\n\tbeats = 0.125;\n\tif (dv_idx == 1) { beats = 0.25; }\n\telse if (dv_idx == 2) { beats = 0.5; }\n\telse if (dv_idx == 3) { beats = 1; }\n\telse if (dv_idx == 4) { beats = 2; }\n\telse if (dv_idx >= 5) { beats = bar_beats; }\n\tif (typ == 1) { beats = beats * 1.5; }\n\telse if (typ == 2) { beats = beats * 2 / 3; }\n\tT = 60 / use_bpm * beats * max(sync_mult, 1) + offset_ms * 0.001;\n}\nT = clamp(T, 0.002, 4);\n\n// sample-rate-dependent constants\nif (sr != ck_sr) {\n\tck_ps = 1 - exp(-1 / (0.010 * sr));\n\tck_a10 = ck_ps;\n\tck_drift = 1 - exp(-twopi * 0.5 / sr);\n\tck_flr = 1 - exp(-twopi * 20 / sr);\n\ta_n0 = 1 - exp(-twopi * min(10000, 0.49 * sr) / sr);\n\tck_nnorm = sqrt((1 / 3) * a_n0 / (2 - a_n0));\n\tck_up = 1 - exp(-1 / (0.001 * sr));\n\tck_dn = 1 - exp(-1 / (0.200 * sr));\n\tck_prel = 1 - exp(-1 / (0.150 * sr));\n\tck_patt = 1 - exp(-1 / (0.0005 * sr));\n\tck_sr = sr;\n\tck_tau = -1;\n\tck_fkey = -99999;\n\tck_nkey = -99999;\n}\n\n// smoothed continuous parameters\nsm_in_gain_db = psmooth(in_gain_db, ck_ps);\nsm_dry = psmooth(dry, ck_ps);\nsm_echo = psmooth(echo, ck_ps);\nsm_echo_trim_db = psmooth(echo_trim_db, ck_ps);\nsm_out_db = psmooth(out_db, ck_ps);\nsm_sustain = psmooth(sustain, ck_ps);\nsm_rec_db = psmooth(rec_db, ck_ps);\nsm_sos_db = psmooth(sos_db, ck_ps);\nsm_bias_leak = psmooth(bias_leak, ck_ps);\nsm_sat = psmooth(sat, ck_ps);\nsm_noise_db = psmooth(noise_db, ck_ps);\nsm_wow = psmooth(wow, ck_ps);\nsm_flutter = psmooth(flutter, ck_ps);\nsm_hold_fb = psmooth(hold_fb, ck_ps);\nsm_drive_db = psmooth(drive_db, ck_ps);\nsm_fb_res = psmooth(fb_res, ck_ps);\nsm_cable_pf = psmooth(cable_pf, ck_ps);\nsm_bias_khz = fsmooth(bias_khz, ck_ps);\nsm_fb_hp_hz = fsmooth(fb_hp_hz, ck_ps);\nsm_fb_lp_hz = fsmooth(fb_lp_hz, ck_ps);\nsm_echo_hp_hz = fsmooth(echo_hp_hz, ck_ps);\nsm_echo_lp_hz = fsmooth(echo_lp_hz, ck_ps);\n// ceiling_db is not smoothed (see H&H test P05)\n\nif (mode != prev_mode) {\n\tif (prev_mode >= 0) {\n\t\ttrans_left = transition_ms * 0.001 * sr * 3;\n\t}\n\tprev_mode = mode;\n}\ntau_ms = glide_ms;\nif (trans_left > 0) {\n\ttau_ms = max(transition_ms, glide_ms);\n\ttrans_left = trans_left - 1;\n}\nif (tau_ms != ck_tau) {\n\tck_as = 1 - exp(-1 / (max(tau_ms, 0.5) * 0.001 * sr));\n\tck_tau = tau_ms;\n}\na_s = ck_as;\nTc = T * CR;                                 // target head distance in tape cells\nif (Ts1 < 0) {\n\tTs1 = Tc;\n\tTs2 = Tc;\n}\nTs1 = Ts1 + a_s * (Tc - Ts1);\nTs2 = Ts2 + a_s * (Ts1 - Ts2);\n\n// ================= TRANSPORT ==========================================\nif (tape_stop > 0.5) {\n\ts_stop = max(0, s_stop - 1 / (max(stop_time, 0.02) * sr));\n} else {\n\ts_stop = min(1, s_stop + 1 / (max(start_time, 0.02) * sr));\n}\n// F6 (v0.1.1): a Loop Length change moves the wrap point, so the heads land on other tape.\n// Fade the playback (echo + feedback) out with a smooth 2-stage curve (3 ms stages, ~40 ms to\n// silence), apply the new length, keep it muted until freshly recorded tape reaches the echo\n// head (one delay + 5 ms: the tape between the heads still holds old material), then fade in.\nL_tgt = floor(clamp(loop_s, 1, 112.5) * CR);\nif (L_cur < 0) {\n\tL_cur = L_tgt;\n}\nlg_t = 1;\nif (L_tgt != L_cur) {\n\tlg_t = 0;\n\tif (lg < 0.0001) {\n\t\tL_cur = L_tgt;\n\t\tfirst = 1;                               // restart the write-head tracking on the new loop\n\t\tlg_hold = Ts2 * sr / CR + 0.005 * sr;    // one delay (target head distance) + 5 ms\n\t}\n}\nif (lg_hold > 0) {\n\tlg_t = 0;\n\tlg_hold = lg_hold - 1;\n}\na_lg = 1 - exp(-1 / (0.003 * sr));\nlg1 = lg1 + a_lg * (lg_t - lg1);\nlg = lg + a_lg * (lg1 - lg);\nL = L_cur;\n\n// flutter: capstan 26 Hz, pinch wheel 2.5 / 5.0 Hz (measured on an Echoplex [S5]),\n// plus a little broadband flutter and slow drift. flutter = 0.5 -> within the 0.3 % spec (E10: 0.256 % peak).\nph_cap = ph_cap + 26 / sr;\nph_cap = ph_cap - floor(ph_cap);\nph_p1 = ph_p1 + 2.5 / sr;\nph_p1 = ph_p1 - floor(ph_p1);\nph_p2 = ph_p2 + 5.0 / sr;\nph_p2 = ph_p2 - floor(ph_p2);\ndrift = drift + ck_drift * (noise() * 3 - drift);\nfl_rnd = fl_rnd + ck_flr * (noise() * 2 - fl_rnd);\nwf = sm_flutter * 0.006 * (0.45 * sin(twopi * ph_cap) + 0.3 * sin(twopi * ph_p1) + 0.15 * sin(twopi * ph_p2) + 0.1 * fl_rnd)\n   + sm_wow * 0.005 * drift;\n\nv_eff = clamp(s_stop * (1 + wf), 0, 2);\nvc = v_eff * CR / sr;                        // tape cells per sample\n\n// ---- record head position (moving) with a head-speed limit\nif (d_head < 0) {\n\td_head = Ts2;\n}\nhs = max(head_slew, 0.05) * CR / sr;         // cells per sample\nd_head = d_head + clamp(Ts2 - d_head, -hs, hs);\nd = clamp(d_head, 16, L - 64);\n// SOS head: fixed just upstream of the slider's far end (APPROX gap 62.5 ms = 0.5 in at 8 ips)\nd_sos = clamp((s_hi + 62.5) * 0.001 * CR, d + 1, L - 32);\n\np_new = wrap(p + vc, 0, L);\nw_new = p_new + d;                           // write position (unwrapped relative to p_new)\nw_old = w_prev;\nif (first > 0.5) {\n\tw_old = w_new - vc;\n\tfirst = 0;\n}\n// keep w_old in the same unwrapped frame as w_new\nif (w_old - w_new > 0.5 * L) {\n\tw_old = w_old - L;\n} else if (w_new - w_old > 0.5 * L) {\n\tw_old = w_old + L;\n}\nu_cps = w_new - w_old;                       // head speed over tape, cells per sample\nu_out = u_cps / max(CR / sr, 0.000001);      // 1 = normal recording speed\n\n// ================= gates & per-sample coefficients ====================\nhold_s = hold_s + ck_a10 * (hold - hold_s);\ndrive_s = drive_s + ck_a10 * (drive - drive_s);\nsos_s = sos_s + ck_a10 * (sos - sos_s);\necho_on_s = echo_on_s + ck_a10 * (echo_on - echo_on_s);\necho_on_s2 = echo_on_s2 + ck_a10 * (echo_on_s - echo_on_s2);   // 2-stage: no corner at the switch\npb_s = pb_s + ck_a10 * (playback - pb_s);\ndkey = drive_s * sm_drive_db;\nif (dkey != ck_dkey) {\n\tck_dg = pow(10, dkey / 20);\n\tck_dkey = dkey;\n}\ndrive_gain = ck_dg;\nif (sm_sat != ck_sat) {\n\tck_gt = 0.6 * pow(4, 2 * (sm_sat - 0.5));  // 0.5: ~2-3 % THD at nominal level (calibration test E05: 2.1 %)\n\tck_sat = sm_sat;\n}\ng_t = ck_gt;\nif (sm_in_gain_db != ck_ing) {\n\tck_ig = pow(10, sm_in_gain_db / 20);\n\tck_ing = sm_in_gain_db;\n}\nif (sm_rec_db != ck_rkey) {\n\tck_rg = pow(10, sm_rec_db / 20);\n\tck_rkey = sm_rec_db;\n}\nif (sm_sos_db != ck_skey) {\n\tck_sg = pow(10, sm_sos_db / 20);\n\tck_skey = sm_sos_db;\n}\nif (sm_noise_db != ck_nkey) {\n\tck_ng = (sm_noise_db > -119) ? pow(10, sm_noise_db / 20) / ck_nnorm : 0;\n\tck_nkey = sm_noise_db;\n}\n// F1/F2 (v0.1.1): scale by the chain's peak loop gain instead of assuming it is 1.\n// Sustain: x (pk3 / pk) keeps the 3 nF behaviour exactly (factor 1.0) and gives 33 nF the\n// same peak loop gain (same runaway point). HOLD: / pk makes the per-pass peak gain equal to\n// Hold Feedback, so 1.0 holds the loop instead of growing.\nif (ck_pk3 < 0) {\n\tck_pk3 = loop_peak(2947);\n\tck_pk33 = loop_peak(268);\n}\npbs = psmooth(pb_eq, ck_ps);                 // F4: de-emphasis switch is crossfaded (10 ms)\npk_loop = (1 - pbs) * ck_pk3 + pbs * ck_pk33;\nfb_amt = (sm_sustain * 1.25) * (ck_pk3 / pk_loop) * (1 - hold_s) + (sm_hold_fb / pk_loop) * hold_c * hold_s;\nfb_amt = fb_amt * (1 - sos_s);               // ECHO/SUSTAIN not operative in SOS [S1]\nq_fb = 0.707 + sm_fb_res * 6;\ndfb_g = (drive_fb > 0.5) ? drive_gain : 1;\n\n// ================= Q5 FET INPUT STAGE (always in circuit) =============\nfkey = pre_bypass * 7 + sr;\nif (fkey != ck_fkey) {\n\t// quiescent point (no signal): source cap fully charged, so cdt = 0\n\tqi, qv = fet_step(0, 0, 0, RS, IDSS, VP);\n\tck_idq = qi;\n\tck_vsq = qv;\n\tck_fkey = fkey;\n\tif (vs_state < 0) {\n\t\tvs_state = qv;\n\t}\n}\nsm_pre = psmooth(pre_bypass, ck_ps);         // F4 (v0.1.1): source cap switched over 10 ms\ncdt = CS * sr * sm_pre;\nvg = lp1(x, 15915) * VPF * ck_ig;            // input RF filter: 100k series, 100 pF to ground [S14]\nid_n, vs_n = fet_step(vg, vs_state, cdt, RS, IDSS, VP);\nvs_state = fixdenorm(vs_n);\n// drain cannot fall below the source (+0.3 V): limits large positive swings\nid_c = min(id_n, (VDD - vs_n - 0.3) / RD);\nvac = (id_c - ck_idq) * RD;                  // drain AC (V); sign flipped so the device is non-inverting\npre = vac / VPF;                             // back to full-scale units (EP-3 gain kept)\n// output mixer coefficients (recomputed only when Echo Volume moves)\nif (sm_echo != ck_kkey) {\n\tgd, ge, rt = mixer(sm_echo);\n\tgd5, ge5, rt5 = mixer(0.5);\n\tck_gd = gd;\n\tck_ge = ge;\n\tck_rth = rt;\n\tck_en = gd5 / ge5;                       // echo source level: first repeat ~ dry level at k = 0.5 (APPROX)\n\tck_kkey = sm_echo;\n}\ndry_br = hp1(pre, 7) * ck_gd * sm_dry;       // 0.1 uF coupling into ~260k: ~7 Hz\n\n// ================= ECHO HEAD READ (fixed) =============================\nri = floor(p_new);\nrf = p_new - ri;\ni0 = wrap(ri, 0, L);\nim1 = wrap(i0 - 1, 0, L);\nip1 = wrap(i0 + 1, 0, L);\nip2 = wrap(i0 + 2, 0, L);\nm0 = peek(tape, im1, 0);\nc0 = peek(tape, i0, 0);\nn0 = peek(tape, ip1, 0);\nq0 = peek(tape, ip2, 0);\ny_echo = hermite(m0, c0, n0, q0, rf);\n// SOS head (monitors the loop before it reaches the record head)\nrs_pos = p_new + d_sos;\nrsi = floor(rs_pos);\nrsf = rs_pos - rsi;\nj0 = wrap(rsi, 0, L);\njm1 = wrap(j0 - 1, 0, L);\njp1 = wrap(j0 + 1, 0, L);\njp2 = wrap(j0 + 2, 0, L);\nsm0 = peek(tape, jm1, 0);\nsc0 = peek(tape, j0, 0);\nsn0 = peek(tape, jp1, 0);\nsq0 = peek(tape, jp2, 0);\ny_sos = hermite(sm0, sc0, sn0, sq0, rsf);\n\n// ================= PLAYBACK CHAIN =====================================\ngp = min(1, v_eff / 0.15);                   // head output falls away as the tape stops\nfc_tape = clamp(5188 * v_eff, 50, 0.45 * sr); // tape HF loss: H&H fit (7782 Hz @ 12 ips) x 8/12  APPROX\nyraw = y_echo * (1 - sos_s) + y_sos * sos_s; // SOS: you hear the SOS head [S1]\ntl, tb_, th = svf(yraw * gp, fc_tape, 0.707);\n// de-emphasis: 18k with 0.003 uF (forum, 2947 Hz) / 0.033 uF (manual scan, 268 Hz); both run and\n// are crossfaded (F4). Each is normalised at 1 kHz so both give the same mid level.\ny3 = lp1(tl, 2947);\ny33 = lp1(tl, 268);\nypb = (y3 * sqrt(1 + (1000 / 2947) * (1000 / 2947))) * (1 - pbs) + (y33 * sqrt(1 + (1000 / 268) * (1000 / 268))) * pbs;\nypb = ypb * lg;                              // F6 fade\nypb = hp1(ypb, 30);                          // head-amp coupling APPROX\nypb = ypb + lp1(noise(), 10000) * ck_ng;\n// F1 (v0.1.1): HOLD level trim. A fixed loop gain cannot freeze a loop: tape saturation\n// compresses slightly at playing level and frequencies off the loop's peak decay. While HOLD\n// is on, the playback power is compared with a target, and the hold gain is trimmed by at most\n// +-3 % per pass. Settling: after HOLD is pressed the target may only fall (the loop darkens\n// naturally but never grows) until the loop stops losing level (< 1 dB over a pass, at least\n// 2 passes; at most 30 s); then it is locked and changes by Hold Feedback^2 per pass\n// (1.0 = frozen), never sitting more than 1.5 dB above the loop's own level. Outside HOLD hold_c = 1 and nothing changes.\nhp_env = fixdenorm(hp_env + (1 - exp(-1 / (0.3 * sr))) * (ypb * ypb - hp_env));\ndsamp = max(d / max(vc, 0.000001), 1);\nif (hold > 0.5 && hold_prev < 0.5) {\n\thold_tgt = hp_env;\n\thold_cnt = 30 * sr;                          // settling time limit (dark voicing needs the longest)\n\thold_pass = dsamp + 0.3 * sr;                 // first check after one pass + envelope settle\n\thold_np = 0;\n\thold_elast = hp_env;\n}\nhold_prev = hold;\nif (hold > 0.5) {\n\tif (hold_cnt > 0) {\n\t\thold_tgt = min(hold_tgt, hp_env);\n\t\thold_cnt = hold_cnt - 1;\n\t\thold_pass = hold_pass - 1;\n\t\tif (hold_pass <= 0) {\n\t\t\thold_np = hold_np + 1;\n\t\t\tif (hold_np >= 2 && hp_env > 0.794 * hold_elast) {\n\t\t\t\thold_cnt = 0;                    // lost < 1 dB over the last pass: lock\n\t\t\t}\n\t\t\thold_elast = hp_env;\n\t\t\thold_pass = dsamp;\n\t\t}\n\t\tcc = (hold_tgt > 0.0000000001) ? clamp(sqrt(hold_tgt / max(hp_env, 0.00000000000000000001)), 0.97, 1) : 0.97;\n\t} else {\n\t\thold_tgt = fixdenorm(hold_tgt * exp(2 * log(max(sm_hold_fb, 0.01)) / dsamp));\n\t\t// a shortfall beyond 1.5 dB is spectral loss (e.g. the dark voicing shedding its mids), not\n\t\t// saturation: let the target follow, so the trim never pumps the loop back up by more than 1.5 dB\n\t\thold_tgt = min(hold_tgt, hp_env * 1.413);\n\t\tcc = (hold_tgt > 0.0000000001) ? clamp(sqrt(hold_tgt / max(hp_env, 0.00000000000000000001)), 0.97, 1.03) : 0.97;\n\t}\n\thold_c = hold_c + (1 - exp(-1 / (0.2 * sr))) * (cc - hold_c);\n} else {\n\thold_c = hold_c + (1 - exp(-1 / (0.2 * sr))) * (1 - hold_c);\n}\n// Echo Sustain feedback, with the Echolivity feedback filters\nf1l, f1b, f1h = svf(ypb, sm_fb_hp_hz, q_fb);\nf2l, f2b, f2h = svf(f1h, sm_fb_lp_hz, q_fb);\nguard = (env > 1.5) ? 1.5 / env : 1;\nfbs = f2l * fb_amt * guard * dfb_g;\nenv = fixdenorm(env + ((abs(f2l * fb_amt) > env) ? ck_up : ck_dn) * (abs(f2l * fb_amt) - env));\n\n// ================= RECORD CHAIN =======================================\nu = pre * ck_rg * drive_gain * (1 - hold_s) + fbs;\nu = hp1(u, 20);\nu = tapesat(u * g_t * drive_gain, 0.05) / g_t;\nu = dc_block(u);\n// write anti-alias: the head's speed over the tape sets the tape's sample spacing\n// spatial Nyquist: a frequency f lands at f / (|u_cps| sr) cycles per cell, which must stay < 0.5\n// 4th-order Butterworth at 0.35 sr |u|: everything that plays back below 0.35 sr (16.8 kHz @ 48k)\n// is kept; what would land above Nyquist is >= 40 dB down before the head samples it (test E03)\nfc_w = clamp(0.35 * sr * abs(u_cps), 20, 0.45 * sr);\nrl1, rb1, rh1 = svf(u, fc_w, 0.5412);\nrl, rb, rh = svf(rl1, fc_w, 1.3066);\nrec = fixnan(rl);\n\n// ================= RECORD/ERASE HEAD: fill every cell crossed =========\n// ECHO: erase + record (overwrite). SOS: erase off, new is added to the old\n// layer, which loses sos_db per pass. PLAYBACK: record and erase off.\nwr_gain = 1 - pb_s;\nsp_bias = sm_bias_khz * 1000 / (max(abs(u_cps), 0.000001) * sr);  // bias cycles per tape cell\nbias_amp = 0;\nif (sp_bias < FBIAS_MIN_SP) {\n\tbias_amp = sm_bias_leak * 0.1 * min(1, (FBIAS_MIN_SP - sp_bias) / 0.1);   // level APPROX\n}\nif (wr_gain > 0.0001 && abs(u_cps) > 0.000001) {\n\tklo = (u_cps > 0) ? floor(w_old) + 1 : -floor(-w_new);      // -floor(-x) = ceil(x)\n\tkhi = (u_cps > 0) ? floor(w_new) : -floor(-w_old) - 1;\n\tfor (k = klo; k <= khi; k += 1) {\n\t\tfq = (k - w_old) / u_cps;\n\t\tki = wrap(k, 0, L);\n\t\tval = rec_prev + fq * (rec - rec_prev);\n\t\tif (bias_amp > 0) {\n\t\t\tval = val + bias_amp * sin(twopi * sm_bias_khz * 1000 * ((t - 1 + fq) / sr));\n\t\t}\n\t\told = peek(tape, ki, 0);\n\t\tkeep = sos_s * ck_sg;                            // SOS keeps the old layer\n\t\tnv = old * (1 - wr_gain) + wr_gain * (old * keep + val);\n\t\tpoke(tape, nv, ki, 0);\n\t}\n}\nrec_prev = rec;\nw_prev = w_new;\np = p_new;\n\n// ================= OUTPUT =============================================\ne1l, e1b, e1h = svf(ypb, sm_echo_hp_hz, 0.707);\ne2l, e2b, e2h = svf(e1h, sm_echo_lp_hz, 0.707);\nech = dc_block(e2l) * echo_on_s2;\nif (sm_out_db != ck_okey) {\n\tck_og = pow(10, sm_out_db / 20);\n\tck_okey = sm_out_db;\n}\nif (sm_echo_trim_db != ck_etkey) {\n\tck_et = pow(10, sm_echo_trim_db / 20);\n\tck_etkey = sm_echo_trim_db;\n}\no_mix = dry_br + ech * ck_en * ck_ge * ck_et;\n// F4 (v0.1.1): the cable filter always runs (no stale state); below 1 pF it is blended out\no_lp = lp1(o_mix, 1 / (twopi * ck_rth * max(sm_cable_pf, 1) * 0.000000000001));\nif (sm_cable_pf >= 1) {\n\to_mix = o_lp;\n} else if (sm_cable_pf > 0) {\n\to_mix = o_mix + sm_cable_pf * (o_lp - o_mix);\n}\no1 = fixnan(o_mix * ck_og);\no2 = o1;\n\n// ================= OUTPUT PROTECTION (as the H&H device) =================\nif (ceiling_db != ck_ckey) {\n\tck_cl = pow(10, ceiling_db / 20);\n\tck_ckey = ceiling_db;\n}\nc_lin = ck_cl;\nthr = c_lin * 0.944061;\npk = abs(o1);\nover = (pk > thr) ? 1 : 0;\npg = 1;\nif (protect > 0.5) {\n\tgreq = (pk > thr) ? thr / pk : 1;\n\tif (greq < pg_hold) {\n\t\tpg_hold = greq;\n\t\tph_cnt = 0.010 * sr;\n\t} else if (ph_cnt > 0) {\n\t\tph_cnt = ph_cnt - 1;\n\t} else {\n\t\tpg_hold = pg_hold + ck_prel * (1 - pg_hold);\n\t}\n\tif (pg_hold < pg_s) {\n\t\tpg_s = pg_s + ck_patt * (pg_hold - pg_s);\n\t} else {\n\t\tpg_s = pg_hold;\n\t}\n\tpg = pg_s;\n\to1 = softclip(o1 * pg, thr, c_lin);\n\to2 = o1;\n} else {\n\tpg_hold = 1;\n\tpg_s = 1;\n\tph_cnt = 0;\n}\n\nout1 = o1;\nout2 = o2;\nout3 = (d / max(vc, 0.000000001)) / sr * 1000;\nout4 = tap_bpm;\nout5 = u_out;\nout6 = v_eff;\nout7 = pg;\nout8 = over;\n",
         "fontface": 0,
         "fontname": "<Monospaced>",
         "fontsize": 11.0,
         "numinlets": 2,
         "numoutlets": 8,
         "outlettype": [
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          ""
         ],
         "patching_rect": [
          20,
          60,
          900,
          700
         ]
        }
       },
       {
        "box": {
         "id": "g-in1",
         "maxclass": "newobj",
         "text": "in 1",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          20,
          20,
          30,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-in2",
         "maxclass": "newobj",
         "text": "in 2",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          880,
          20,
          30,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out1",
         "maxclass": "newobj",
         "text": "out 1",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out2",
         "maxclass": "newobj",
         "text": "out 2",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          140,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out3",
         "maxclass": "newobj",
         "text": "out 3",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          260,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out4",
         "maxclass": "newobj",
         "text": "out 4",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          380,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out5",
         "maxclass": "newobj",
         "text": "out 5",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          500,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out6",
         "maxclass": "newobj",
         "text": "out 6",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          620,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out7",
         "maxclass": "newobj",
         "text": "out 7",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          740,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out8",
         "maxclass": "newobj",
         "text": "out 8",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          860,
          780,
          40,
          22
         ]
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "g-in1",
          0
         ],
         "destination": [
          "g-code",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-in2",
          0
         ],
         "destination": [
          "g-code",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          0
         ],
         "destination": [
          "g-out1",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          1
         ],
         "destination": [
          "g-out2",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          2
         ],
         "destination": [
          "g-out3",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          3
         ],
         "destination": [
          "g-out4",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          4
         ],
         "destination": [
          "g-out5",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          5
         ],
         "destination": [
          "g-out6",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          6
         ],
         "destination": [
          "g-out7",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          7
         ],
         "destination": [
          "g-out8",
          0
         ]
        }
       }
      ]
     }
    }
   },
   {
    "box": {
     "id": "obj-34",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      320,
      450,
      130,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "text": "record~ out_GOLD2_dark_feedback 1"
    }
   },
   {
    "box": {
     "id": "obj-35",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      470,
      346,
      80,
      22
     ],
     "outlettype": [
      "bang"
     ],
     "text": "delay 5300"
    }
   },
   {
    "box": {
     "id": "obj-36",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      470,
      376,
      40,
      22
     ],
     "outlettype": [
      "bang",
      "bang"
     ],
     "text": "t b b"
    }
   },
   {
    "box": {
     "id": "obj-37",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      470,
      406,
      30,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "0"
    }
   },
   {
    "box": {
     "id": "obj-38",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      470,
      480,
      250,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "writewave out_GOLD2_dark_feedback_max.wav"
    }
   },
   {
    "box": {
     "id": "obj-39",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      320,
      510,
      290,
      20
     ],
     "text": "\u2192 writes out_GOLD2_dark_feedback_max.wav",
     "fontsize": 10.0
    }
   },
   {
    "box": {
     "id": "obj-40",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620,
      180,
      290,
      20
     ],
     "text": "GOLD3_sos_loop2s \u2014 tier A (sample-exact), 7 s",
     "fontsize": 10.5
    }
   },
   {
    "box": {
     "id": "obj-41",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      620,
      204,
      290,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "noise_db -120, wow 0, flutter 0, sos 1, loop_s 2"
    }
   },
   {
    "box": {
     "id": "obj-42",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      620,
      232,
      230,
      22
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ in_GOLD3_sos_loop2s in_GOLD3_sos_loop2s.wav"
    }
   },
   {
    "box": {
     "id": "obj-43",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      620,
      256,
      230,
      22
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ out_GOLD3_sos_loop2s 7600 1"
    }
   },
   {
    "box": {
     "id": "obj-44",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      620,
      284,
      140,
      26
     ],
     "outlettype": [
      "",
      "",
      "int"
     ],
     "text": "RUN GOLD3"
    }
   },
   {
    "box": {
     "id": "obj-45",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      620,
      318,
      60,
      22
     ],
     "outlettype": [
      "bang",
      "bang",
      "bang"
     ],
     "text": "t b b b"
    }
   },
   {
    "box": {
     "id": "obj-46",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      690,
      346,
      30,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "1"
    }
   },
   {
    "box": {
     "id": "obj-47",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      620,
      346,
      40,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "start"
    }
   },
   {
    "box": {
     "id": "obj-48",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      620,
      376,
      120,
      22
     ],
     "outlettype": [
      "signal",
      "bang"
     ],
     "text": "play~ in_GOLD3_sos_loop2s 1"
    }
   },
   {
    "box": {
     "id": "obj-49",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      620,
      412,
      120,
      22
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "text": "gen~",
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 0,
       "revision": 0,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "dsp.gen",
      "rect": [
       50,
       50,
       960,
       840
      ],
      "boxes": [
       {
        "box": {
         "id": "g-code",
         "maxclass": "codebox",
         "code": "// FALLBACK NAMES BUILD (not a release): identical engine with locals that share Gen operator names renamed\n// (s->st_s, f->fq, i->ii, gtp->g_tp, r->rdp). Use only if gen~ reports an error on one of those names.\n// =====================================================================\n// ECHOLIVITY \u2014 EP-3 (Maestro Echoplex EP-3 model) \u00b7 tape engine v0.1.2-dev\n// v0.1.2-dev: identifiers renamed that collide with gen~ built-ins (dcblock -> dc_block,\n// lt -> l_t); no functional change (bit-identical, test R06/X01).\n// v0.1.1-dev remediation (see CHANGELOG / validation/EP3_REMEDIATION_REPORT.md): F1 HOLD loop gain,\n// F2 33 nF feedback runaway, F3 8 s default loop, F4 click-free DE-EMPH / Cable / Source-cap\n// changes, F6 loop-length change fade.\n// gen~ codebox. Status of every value: docs/EP3_MODELING_NOTES.md\n//\n// Signal flow (EP-3 manual, Maestro owner/service manual [S1]):\n//   input -> Q5 FET stage (TIS58, 22k drain, 3.3k source, 0.022 uF source\n//   bypass = pre-emphasis) -> dry out (high output Z into cable C)\n//                           -> record level -> record amp -> RECORD/ERASE HEAD\n//   (moving, on the slider) -> tape (8 ips, ~75 ft loop) -> fixed ECHO head\n//   -> head amp + de-emphasis -> Echo Sustain (feedback) / Echo Volume (blend\n//   pot in the passive output mixer, wiper grounded) -> output (high Z, into the cable)\n//   SOS: SOS head (upstream of the record head) monitors the loop; erase off,\n//   new material is added to the old layer (-1 dB per pass, manual alignment).\n//\n// The record head moves, so a slider move changes how sound is WRITTEN on the\n// tape (pitch change heard one delay later). The write is band-limited (pre-\n// write low-pass that follows the head's speed over the tape, after\n// Arnardottir/Abel/Smith 2008) and fills every tape cell the head crosses.\n//\n// Tape buffer: fixed 48 000 cells per second of tape at nominal speed, so the\n// 112.5 s loop costs the same memory at any sample rate.\n// Level convention: 100 mV == -18 dBFS RMS (same as the H&H device).\n// Mono like the original: L+R are summed at the input; out1 == out2.\n//\n// out1/out2: audio   out3: delay (ms)   out4: tap BPM\n// out5: record-head write speed over tape (1 = normal)   out6: tape speed\n// out7: output-protection gain   out8: output over flag\n// =====================================================================\n\n// ---------- stateful helpers (each call site gets its own state) ------\nsvf(x, fc, q) {\n\tHistory s1(0);\n\tHistory s2(0);\n\tHistory key_fc(-1);\n\tHistory key_q(-1);\n\tHistory key_sr(-1);\n\tHistory c_k(0);\n\tHistory c_a1(0);\n\tHistory c_a2(0);\n\tHistory c_a3(0);\n\tif (fc != key_fc || q != key_q || samplerate != key_sr) {\n\t\tfcc = clamp(fc, 5, samplerate * 0.49);\n\t\tg = tan(pi * fcc / samplerate);\n\t\tc_k = 1 / q;\n\t\tc_a1 = 1 / (1 + g * (g + c_k));\n\t\tc_a2 = g * c_a1;\n\t\tc_a3 = g * c_a2;\n\t\tkey_fc = fc;\n\t\tkey_q = q;\n\t\tkey_sr = samplerate;\n\t}\n\tv3 = x - s2;\n\tv1 = c_a1 * s1 + c_a2 * v3;\n\tv2 = s2 + c_a2 * s1 + c_a3 * v3;\n\ts1 = fixdenorm(2 * v1 - s1);\n\ts2 = fixdenorm(2 * v2 - s2);\n\treturn v2, v1, x - c_k * v1 - v2;\n}\n\nlp1(x, fc) {\n\tHistory z(0);\n\tHistory key_fc(-1);\n\tHistory key_sr(-1);\n\tHistory c_a(0);\n\tif (fc != key_fc || samplerate != key_sr) {\n\t\tc_a = 1 - exp(-twopi * min(fc, samplerate * 0.49) / samplerate);\n\t\tkey_fc = fc;\n\t\tkey_sr = samplerate;\n\t}\n\tz = fixdenorm(z + c_a * (x - z));\n\treturn z;\n}\n\nhp1(x, fc) {\n\treturn x - lp1(x, fc);\n}\n\ndc_block(x) {\n\tHistory x1(0);\n\tHistory y1(0);\n\tR = 1 - twopi * 10 / samplerate;\n\ty = fixdenorm(x - x1 + R * y1);\n\tx1 = x;\n\ty1 = y;\n\treturn y;\n}\n\nhermite(xm1, x0, x1, x2, fq) {\n\tc1 = 0.5 * (x1 - xm1);\n\tc2 = xm1 - 2.5 * x0 + 2 * x1 - 0.5 * x2;\n\tc3 = 0.5 * (x2 - xm1) + 1.5 * (x0 - x1);\n\treturn ((c3 * fq + c2) * fq + c1) * fq + x0;\n}\n\nsoftclip(x, k, c) {\n\tax = abs(x);\n\ty = x;\n\tif (ax > k) {\n\t\tsg = (x >= 0) ? 1 : -1;\n\t\ty = sg * (k + (c - k) * tanh((ax - k) / (c - k)));\n\t}\n\treturn y;\n}\n\ntapesat(x, b) {\n\tHistory key_b(-99999);\n\tHistory c_tb(0);\n\tif (b != key_b) {\n\t\tc_tb = tanh(b);\n\t\tkey_b = b;\n\t}\n\ttb = c_tb;\n\treturn (tanh(x + b) - tb) / (1 - tb * tb);\n}\n\npsmooth(t, a) {\n\tHistory st_s(0);\n\tHistory init(0);\n\tif (init < 0.5) {\n\t\tst_s = t;\n\t\tinit = 1;\n\t}\n\tst_s = st_s + a * (t - st_s);\n\tif (abs(t - st_s) <= 0.000000001 * max(1, abs(t))) {\n\t\tst_s = t;\n\t}\n\treturn st_s;\n}\n\nfsmooth(fq, a) {\n\tHistory ls(0);\n\tHistory init(0);\n\tl_t = log(fq);\n\tif (init < 0.5) {\n\t\tls = l_t;\n\t\tinit = 1;\n\t}\n\tls = ls + a * (l_t - ls);\n\tif (abs(l_t - ls) <= 0.000000001) {\n\t\tls = l_t;\n\t}\n\treturn (ls == l_t) ? fq : exp(ls);\n}\n\n// JFET drain current, square law: Id = Idss (1 - Vgs/Vp)^2 for Vp < Vgs, else 0.\n// Vgs above +0.4 V is held there (gate-source diode conducts).\n// Source node: Rs in parallel with Cs (Cs = 0 when the bypass cap is out).\n// Backward-Euler step for the source node, solved in closed form:\n//   (Cs/dt + 1/Rs) Vs - (Cs/dt) Vs0 = Id(vg - Vs)\n// Returns (Id, Vs).\nfet_step(vg, vs0, cdt, rs, idss, vp) {\n\ta = cdt + 1 / rs;\n\tb = cdt * vs0;\n\tvgc = min(vg, 0.4 + vs0);\n\t// w = 1 - Vgs/Vp; Vs = Vp w - Vp + vg  ->  idss w^2 - a Vp w + (a Vp - a vg + b) = 0\n\tqa = idss;\n\tqb = -a * vp;\n\tqc = a * vp - a * vgc + b;\n\tdisc = qb * qb - 4 * qa * qc;\n\tidq = 0;\n\tvsq = b / a;                                  // cut-off: no drain current\n\tif (disc >= 0) {\n\t\tw = (-qb + sqrt(disc)) / (2 * qa);\n\t\tif (w > 0) {\n\t\t\tidq = idss * w * w;\n\t\t\tvsq = vp * w - vp + vgc;\n\t\t}\n\t}\n\treturn idq, vsq;\n}\n\n// Passive output mixer (EP-3; values from replica/forum traces [S11][S13]-[S15], APPROX until a\n// clean schematic): drain -0.1uF- A; A -470k- gnd; A -220k- B; B = Echo Volume lug 1;\n// B -100k- OUT. Echo amp -220k- E; E -100k- gnd; E = pot lug 3; E -100k- OUT.\n// The 500k pot's WIPER IS GROUNDED: k = 0 shorts the echo lug, k = 1 shorts the dry lug,\n// so Echo Volume is a blend and the dry level peaks near k = 0.2 (non-monotonic).\n// OUT drives the amp (1M) and the cable capacitance. Returns dry gain, echo gain and the\n// Thevenin resistance at OUT (which, with the cable C, sets the treble roll-off).\nmixer(k) {\n\trp3 = clamp(k, 0, 1) * 500000;\n\trp1 = 500000 - rp3;\n\tra = 22000 * 470000 / 492000;\n\tvbf = (470000 / 492000) * rp1 / (ra + 220000 + rp1);\n\trdb = (ra + 220000) * rp1 / (ra + 220000 + rp1) + 100000;\n\trsh = rp3 * 100000 / (rp3 + 100000);\n\tvef = rsh / (220000 + rsh);\n\treb = 220000 * rsh / (220000 + rsh) + 100000;\n\tgsum = 1 / rdb + 1 / reb + 0.000001;\n\treturn vbf / rdb / gsum, vef / reb / gsum, 1 / gsum;\n}\n\n// F1/F2 (v0.1.1): peak gain of the fixed playback/record loop chain for a de-emphasis corner fde:\n// tape HF loss (2-pole, 5188 Hz) x de-emphasis (1-pole fde, normalised to 1 at 1 kHz)\n// x couplings (30, 20, 10 Hz high-passes). The 1 kHz normalisation lifts the chain above 1 below\n// 1 kHz: peak 1.043 (334 Hz) for 3 nF and 3.383 (102 Hz) for 33 nF, matching measured per-pass\n// gains of 1.040 / 3.369 (validation/EP3_REMEDIATION_REPORT.md). Grid search, 20 Hz\u20134 kHz.\nloop_peak(fde) {\n\tnrm = sqrt(1 + (1000 / fde) * (1000 / fde));\n\tpk = 0;\n\tfor (ii = 0; ii < 96; ii += 1) {\n\t\tfq = 20 * pow(200, ii / 95);\n\t\tg_tp = 1 / sqrt(1 + pow(fq / 5188, 4));\n\t\tgd = nrm / sqrt(1 + (fq / fde) * (fq / fde));\n\t\tg30 = (fq / 30) / sqrt(1 + (fq / 30) * (fq / 30));\n\t\tg20 = (fq / 20) / sqrt(1 + (fq / 20) * (fq / 20));\n\t\tg10 = (fq / 10) / sqrt(1 + (fq / 10) * (fq / 10));\n\t\tpk = max(pk, g_tp * gd * g30 * g20 * g10);\n\t}\n\treturn pk;\n}\n\n// ---------- tape ------------------------------------------------------\n// 112.5 s * 48 000 cells/s (+ margin)\nData tape(5400064, 1);\n\n// ---------- parameters ------------------------------------------------\nParam in_gain_db(0, min=-36, max=12);\nParam dry(1, min=0, max=1);                  // Echolivity trim on the dry branch (1 = original)\nParam echo(0.5, min=0, max=1);               // ECHO VOLUME: the 500k blend pot (wiper grounded)\nParam echo_trim_db(0, min=-24, max=12);      // Echolivity trim on the echo branch\nParam out_db(0, min=-36, max=12);\nParam mode(2, min=0, max=2);\nParam bpm(120, min=20, max=999);\nParam sync_div(2, min=0, max=5);\nParam sync_type(0, min=0, max=2);\nParam sync_mult(1, min=1, max=8);\nParam offset_ms(0, min=-100, max=100);\nParam tap(0, min=0, max=1000000);\nParam tap_div(3, min=0, max=5);\nParam tap_type(0, min=0, max=2);\nParam bar_beats(4, min=1, max=16);\n// ECHO DELAY slider: delay is linear in head position at constant tape speed.\n// 60\u2013600 ms default = DAFX/CCRMA measured range [S3]; 80\u2013800 per [S4].\nParam slider_pos(0.5, min=0, max=1);\nParam slider_min_ms(60, min=2, max=2000);\nParam slider_max_ms(600, min=2, max=4000);\nParam glide_ms(40, min=1, max=2000);\nParam transition_ms(250, min=1, max=4000);\nParam head_slew(4, min=0.05, max=12);        // max head speed, in delay-seconds per second (APPROX)\n// EP-3 front panel / internal\nParam sustain(0.4, min=0, max=1);            // ECHO SUSTAIN (500k lin [S12]); runs away from 0.8 (test E14)\nParam rec_db(0, min=-12, max=12);            // RECORD LEVEL trimmer (internal on the original)\nParam sos(0, min=0, max=1);                  // ECHO / SOUND ON SOUND switch\nParam sos_db(-1, min=-6, max=0);             // SOS loss per pass; manual alignment: \"approximately 1dB\"\nParam echo_on(1, min=0, max=1);              // footswitch: echo on/off\nParam playback(0, min=0, max=1);             // footswitch: playback (record + erase off)\nParam pre_bypass(1, min=0, max=1);           // Q5 source bypass 0.022 uF (manual addendum) in/out\nParam cable_pf(470, min=0, max=2000);        // cable + amp input capacitance; 470 pF fits ClinchFX's descriptions (test E07)\nParam pb_eq(0, min=0, max=1);                // de-emphasis: 0 = 18k/0.003uF (forum), 1 = 18k/0.033uF (manual scan)\nParam bias_khz(100, min=40, max=120);        // \"approximate frequency of 100 KC\" [S1]\nParam bias_leak(0.3, min=0, max=1);          // bias heard on very fast slider moves (APPROX level)\nParam loop_s(8, min=1, max=112.5);           // F3 (v0.1.1): default 8 s for usable SOS/PLAYBACK; 112.5 s = ~75 ft at 8 ips [S18] (authentic)\n// tape character (Echolivity)\nParam sat(0.5, min=0, max=1);\nParam noise_db(-60, min=-120, max=-30);\nParam wow(0.1, min=0, max=1);                // slow drift\nParam flutter(0.25, min=0, max=1);           // 0.5 stays within the 0.3 % spec (E10: 0.256 %); capstan 26 Hz, pinch 2.5/5 Hz\n// performance (Echolivity)\nParam hold(0, min=0, max=1);\nParam hold_fb(1, min=0.9, max=1.05);\nParam drive(0, min=0, max=1);\nParam drive_db(12, min=0, max=24);\nParam drive_fb(0, min=0, max=1);\nParam tape_stop(0, min=0, max=1);\nParam stop_time(1, min=0.05, max=8);\nParam start_time(0.4, min=0.05, max=8);\nParam fb_hp_hz(10, min=10, max=2000);\nParam fb_lp_hz(20000, min=500, max=20000);\nParam fb_res(0, min=0, max=1);\nParam echo_hp_hz(10, min=10, max=2000);\nParam echo_lp_hz(20000, min=500, max=20000);\nParam protect(1, min=0, max=1);\nParam ceiling_db(-0.3, min=-12, max=0);\n\n// ---------- state -----------------------------------------------------\nHistory p(0);\nHistory d_head(-1);\nHistory Ts1(-1);\nHistory Ts2(-1);\nHistory w_prev(0);\nHistory rec_prev(0);\nHistory first(1);\nHistory s_stop(1);\nHistory hold_s(0);\nHistory drive_s(0);\nHistory sos_s(0);\nHistory echo_on_s(1);\nHistory echo_on_s2(1);\nHistory pb_s(0);\nHistory env(0);\nHistory prev_mode(-1);\nHistory trans_left(0);\nHistory nsamp(0);\nHistory tap_prev(0);\nHistory last_tap(-1);\nHistory t_count(0);\nHistory ti0(0);\nHistory ti1(0);\nHistory ti2(0);\nHistory ti3(0);\nHistory tap_bpm(120);\nHistory ph_cap(0);\nHistory ph_p1(0);\nHistory ph_p2(0);\nHistory drift(0);\nHistory fl_rnd(0);\nHistory last_sr(0);\nHistory vs_state(-1);\nHistory pg_hold(1);\nHistory pg_s(1);\nHistory ph_cnt(0);\nHistory u_out(1);\nHistory ck_pk3(-1);\nHistory ck_pk33(-1);\nHistory L_cur(-1);\nHistory hp_env(0);\nHistory hold_tgt(0);\nHistory hold_c(1);\nHistory hold_prev(0);\nHistory hold_cnt(0);\nHistory hold_pass(0);\nHistory hold_np(0);\nHistory hold_elast(0);\nHistory lg(1);\nHistory lg1(1);\nHistory lg_t(1);\nHistory lg_hold(0);\n// cached coefficients\nHistory ck_sr(-1);\nHistory ck_ps(0);\nHistory ck_a10(0);\nHistory ck_drift(0);\nHistory ck_flr(0);\nHistory ck_nnorm(1);\nHistory ck_up(0);\nHistory ck_dn(0);\nHistory ck_prel(0);\nHistory ck_patt(0);\nHistory ck_tau(-1);\nHistory ck_as(0);\nHistory ck_fkey(-99999);\nHistory ck_idq(0);\nHistory ck_vsq(0);\nHistory ck_dkey(-99999);\nHistory ck_dg(1);\nHistory ck_sat(-99999);\nHistory ck_gt(1);\nHistory ck_ing(-99999);\nHistory ck_ig(1);\nHistory ck_rkey(-99999);\nHistory ck_rg(1);\nHistory ck_skey(-99999);\nHistory ck_sg(0.891);\nHistory ck_nkey(-99999);\nHistory ck_ng(0);\nHistory ck_okey(-99999);\nHistory ck_kkey(-99999);\nHistory ck_gd(0.18);\nHistory ck_ge(0.13);\nHistory ck_rth(83000);\nHistory ck_en(1);\nHistory ck_etkey(-99999);\nHistory ck_et(1);\nHistory ck_og(1);\nHistory ck_ckey(-99999);\nHistory ck_cl(1);\n\nCR = 48000;                                  // tape cells per second at nominal speed\nNB = 5400064;\nVPF = 0.794;                                 // volts per full scale (100 mV = -18 dBFS RMS)\nRD = 22000;                                  // Q5 drain resistor [S1][S8]\nRS = 3300;                                   // Q5 source resistor [S1]\nCS = 0.000000022;                            // Q5 source bypass [S1 addendum]\nIDSS = 0.0034;                               // APPROX: fitted so Vs = 1.8 V at 21.2 V supply\nVP = -3.0;                                   //   (measured 1.72\u20131.88 V / 21.0\u201321.3 V on two units [S8])\nVDD = 21.2;\nFBIAS_MIN_SP = 0.45;                         // spatial Nyquist guard (cycles per tape cell)\n\nsr = samplerate;\nt = nsamp;\nnsamp = nsamp + 1;\nx = 0.5 * (fixnan(in1) + fixnan(in2));      // mono, like the original\n\nif (sr != last_sr) {\n\tif (last_sr > 0) {\n\t\tTs1 = -1;\n\t\tTs2 = -1;\n\t\td_head = -1;\n\t\tlast_tap = -1;\n\t\tt_count = 0;\n\t}\n\tlast_sr = sr;\n}\n\n// ================= TAP TEMPO (sample counter; as the H&H device) =======\nif (tap > tap_prev + 0.5) {\n\tif (last_tap >= 0) {\n\t\tiv = t - last_tap;\n\t\tif (iv < 0.15 * sr) {\n\t\t\tiv = -1;\n\t\t} else if (iv > 2 * sr) {\n\t\t\tt_count = 0;\n\t\t\tlast_tap = t;\n\t\t} else {\n\t\t\tif (t_count > 0) {\n\t\t\t\ttavg0 = (ti0 + ti1 + ti2 + ti3) / min(t_count, 4);\n\t\t\t\tif (abs(iv - tavg0) > 0.4 * tavg0) {\n\t\t\t\t\tt_count = 0;\n\t\t\t\t}\n\t\t\t}\n\t\t\tti3 = ti2;\n\t\t\tti2 = ti1;\n\t\t\tti1 = ti0;\n\t\t\tti0 = iv;\n\t\t\tif (t_count == 0) {\n\t\t\t\tti1 = 0;\n\t\t\t\tti2 = 0;\n\t\t\t\tti3 = 0;\n\t\t\t}\n\t\t\tt_count = min(t_count + 1, 4);\n\t\t\ttavg = (ti0 + ti1 + ti2 + ti3) / t_count;\n\t\t\ttap_bpm = 60 * sr / tavg;\n\t\t\tlast_tap = t;\n\t\t}\n\t} else {\n\t\tlast_tap = t;\n\t}\n}\ntap_prev = tap;\n\n// ================= TARGET DELAY TIME ==================================\ns_lo = min(slider_min_ms, slider_max_ms);\ns_hi = max(slider_min_ms, slider_max_ms);\nT = (s_lo + slider_pos * (s_hi - s_lo)) * 0.001;\nif (mode < 1.5) {\n\tuse_bpm = max(bpm, 20);\n\tdv_idx = floor(sync_div + 0.5);\n\ttyp = floor(sync_type + 0.5);\n\tif (mode >= 0.5) {\n\t\tuse_bpm = tap_bpm;\n\t\tdv_idx = floor(tap_div + 0.5);\n\t\ttyp = floor(tap_type + 0.5);\n\t}\n\tbeats = 0.125;\n\tif (dv_idx == 1) { beats = 0.25; }\n\telse if (dv_idx == 2) { beats = 0.5; }\n\telse if (dv_idx == 3) { beats = 1; }\n\telse if (dv_idx == 4) { beats = 2; }\n\telse if (dv_idx >= 5) { beats = bar_beats; }\n\tif (typ == 1) { beats = beats * 1.5; }\n\telse if (typ == 2) { beats = beats * 2 / 3; }\n\tT = 60 / use_bpm * beats * max(sync_mult, 1) + offset_ms * 0.001;\n}\nT = clamp(T, 0.002, 4);\n\n// sample-rate-dependent constants\nif (sr != ck_sr) {\n\tck_ps = 1 - exp(-1 / (0.010 * sr));\n\tck_a10 = ck_ps;\n\tck_drift = 1 - exp(-twopi * 0.5 / sr);\n\tck_flr = 1 - exp(-twopi * 20 / sr);\n\ta_n0 = 1 - exp(-twopi * min(10000, 0.49 * sr) / sr);\n\tck_nnorm = sqrt((1 / 3) * a_n0 / (2 - a_n0));\n\tck_up = 1 - exp(-1 / (0.001 * sr));\n\tck_dn = 1 - exp(-1 / (0.200 * sr));\n\tck_prel = 1 - exp(-1 / (0.150 * sr));\n\tck_patt = 1 - exp(-1 / (0.0005 * sr));\n\tck_sr = sr;\n\tck_tau = -1;\n\tck_fkey = -99999;\n\tck_nkey = -99999;\n}\n\n// smoothed continuous parameters\nsm_in_gain_db = psmooth(in_gain_db, ck_ps);\nsm_dry = psmooth(dry, ck_ps);\nsm_echo = psmooth(echo, ck_ps);\nsm_echo_trim_db = psmooth(echo_trim_db, ck_ps);\nsm_out_db = psmooth(out_db, ck_ps);\nsm_sustain = psmooth(sustain, ck_ps);\nsm_rec_db = psmooth(rec_db, ck_ps);\nsm_sos_db = psmooth(sos_db, ck_ps);\nsm_bias_leak = psmooth(bias_leak, ck_ps);\nsm_sat = psmooth(sat, ck_ps);\nsm_noise_db = psmooth(noise_db, ck_ps);\nsm_wow = psmooth(wow, ck_ps);\nsm_flutter = psmooth(flutter, ck_ps);\nsm_hold_fb = psmooth(hold_fb, ck_ps);\nsm_drive_db = psmooth(drive_db, ck_ps);\nsm_fb_res = psmooth(fb_res, ck_ps);\nsm_cable_pf = psmooth(cable_pf, ck_ps);\nsm_bias_khz = fsmooth(bias_khz, ck_ps);\nsm_fb_hp_hz = fsmooth(fb_hp_hz, ck_ps);\nsm_fb_lp_hz = fsmooth(fb_lp_hz, ck_ps);\nsm_echo_hp_hz = fsmooth(echo_hp_hz, ck_ps);\nsm_echo_lp_hz = fsmooth(echo_lp_hz, ck_ps);\n// ceiling_db is not smoothed (see H&H test P05)\n\nif (mode != prev_mode) {\n\tif (prev_mode >= 0) {\n\t\ttrans_left = transition_ms * 0.001 * sr * 3;\n\t}\n\tprev_mode = mode;\n}\ntau_ms = glide_ms;\nif (trans_left > 0) {\n\ttau_ms = max(transition_ms, glide_ms);\n\ttrans_left = trans_left - 1;\n}\nif (tau_ms != ck_tau) {\n\tck_as = 1 - exp(-1 / (max(tau_ms, 0.5) * 0.001 * sr));\n\tck_tau = tau_ms;\n}\na_s = ck_as;\nTc = T * CR;                                 // target head distance in tape cells\nif (Ts1 < 0) {\n\tTs1 = Tc;\n\tTs2 = Tc;\n}\nTs1 = Ts1 + a_s * (Tc - Ts1);\nTs2 = Ts2 + a_s * (Ts1 - Ts2);\n\n// ================= TRANSPORT ==========================================\nif (tape_stop > 0.5) {\n\ts_stop = max(0, s_stop - 1 / (max(stop_time, 0.02) * sr));\n} else {\n\ts_stop = min(1, s_stop + 1 / (max(start_time, 0.02) * sr));\n}\n// F6 (v0.1.1): a Loop Length change moves the wrap point, so the heads land on other tape.\n// Fade the playback (echo + feedback) out with a smooth 2-stage curve (3 ms stages, ~40 ms to\n// silence), apply the new length, keep it muted until freshly recorded tape reaches the echo\n// head (one delay + 5 ms: the tape between the heads still holds old material), then fade in.\nL_tgt = floor(clamp(loop_s, 1, 112.5) * CR);\nif (L_cur < 0) {\n\tL_cur = L_tgt;\n}\nlg_t = 1;\nif (L_tgt != L_cur) {\n\tlg_t = 0;\n\tif (lg < 0.0001) {\n\t\tL_cur = L_tgt;\n\t\tfirst = 1;                               // restart the write-head tracking on the new loop\n\t\tlg_hold = Ts2 * sr / CR + 0.005 * sr;    // one delay (target head distance) + 5 ms\n\t}\n}\nif (lg_hold > 0) {\n\tlg_t = 0;\n\tlg_hold = lg_hold - 1;\n}\na_lg = 1 - exp(-1 / (0.003 * sr));\nlg1 = lg1 + a_lg * (lg_t - lg1);\nlg = lg + a_lg * (lg1 - lg);\nL = L_cur;\n\n// flutter: capstan 26 Hz, pinch wheel 2.5 / 5.0 Hz (measured on an Echoplex [S5]),\n// plus a little broadband flutter and slow drift. flutter = 0.5 -> within the 0.3 % spec (E10: 0.256 % peak).\nph_cap = ph_cap + 26 / sr;\nph_cap = ph_cap - floor(ph_cap);\nph_p1 = ph_p1 + 2.5 / sr;\nph_p1 = ph_p1 - floor(ph_p1);\nph_p2 = ph_p2 + 5.0 / sr;\nph_p2 = ph_p2 - floor(ph_p2);\ndrift = drift + ck_drift * (noise() * 3 - drift);\nfl_rnd = fl_rnd + ck_flr * (noise() * 2 - fl_rnd);\nwf = sm_flutter * 0.006 * (0.45 * sin(twopi * ph_cap) + 0.3 * sin(twopi * ph_p1) + 0.15 * sin(twopi * ph_p2) + 0.1 * fl_rnd)\n   + sm_wow * 0.005 * drift;\n\nv_eff = clamp(s_stop * (1 + wf), 0, 2);\nvc = v_eff * CR / sr;                        // tape cells per sample\n\n// ---- record head position (moving) with a head-speed limit\nif (d_head < 0) {\n\td_head = Ts2;\n}\nhs = max(head_slew, 0.05) * CR / sr;         // cells per sample\nd_head = d_head + clamp(Ts2 - d_head, -hs, hs);\nd = clamp(d_head, 16, L - 64);\n// SOS head: fixed just upstream of the slider's far end (APPROX gap 62.5 ms = 0.5 in at 8 ips)\nd_sos = clamp((s_hi + 62.5) * 0.001 * CR, d + 1, L - 32);\n\np_new = wrap(p + vc, 0, L);\nw_new = p_new + d;                           // write position (unwrapped relative to p_new)\nw_old = w_prev;\nif (first > 0.5) {\n\tw_old = w_new - vc;\n\tfirst = 0;\n}\n// keep w_old in the same unwrapped frame as w_new\nif (w_old - w_new > 0.5 * L) {\n\tw_old = w_old - L;\n} else if (w_new - w_old > 0.5 * L) {\n\tw_old = w_old + L;\n}\nu_cps = w_new - w_old;                       // head speed over tape, cells per sample\nu_out = u_cps / max(CR / sr, 0.000001);      // 1 = normal recording speed\n\n// ================= gates & per-sample coefficients ====================\nhold_s = hold_s + ck_a10 * (hold - hold_s);\ndrive_s = drive_s + ck_a10 * (drive - drive_s);\nsos_s = sos_s + ck_a10 * (sos - sos_s);\necho_on_s = echo_on_s + ck_a10 * (echo_on - echo_on_s);\necho_on_s2 = echo_on_s2 + ck_a10 * (echo_on_s - echo_on_s2);   // 2-stage: no corner at the switch\npb_s = pb_s + ck_a10 * (playback - pb_s);\ndkey = drive_s * sm_drive_db;\nif (dkey != ck_dkey) {\n\tck_dg = pow(10, dkey / 20);\n\tck_dkey = dkey;\n}\ndrive_gain = ck_dg;\nif (sm_sat != ck_sat) {\n\tck_gt = 0.6 * pow(4, 2 * (sm_sat - 0.5));  // 0.5: ~2-3 % THD at nominal level (calibration test E05: 2.1 %)\n\tck_sat = sm_sat;\n}\ng_t = ck_gt;\nif (sm_in_gain_db != ck_ing) {\n\tck_ig = pow(10, sm_in_gain_db / 20);\n\tck_ing = sm_in_gain_db;\n}\nif (sm_rec_db != ck_rkey) {\n\tck_rg = pow(10, sm_rec_db / 20);\n\tck_rkey = sm_rec_db;\n}\nif (sm_sos_db != ck_skey) {\n\tck_sg = pow(10, sm_sos_db / 20);\n\tck_skey = sm_sos_db;\n}\nif (sm_noise_db != ck_nkey) {\n\tck_ng = (sm_noise_db > -119) ? pow(10, sm_noise_db / 20) / ck_nnorm : 0;\n\tck_nkey = sm_noise_db;\n}\n// F1/F2 (v0.1.1): scale by the chain's peak loop gain instead of assuming it is 1.\n// Sustain: x (pk3 / pk) keeps the 3 nF behaviour exactly (factor 1.0) and gives 33 nF the\n// same peak loop gain (same runaway point). HOLD: / pk makes the per-pass peak gain equal to\n// Hold Feedback, so 1.0 holds the loop instead of growing.\nif (ck_pk3 < 0) {\n\tck_pk3 = loop_peak(2947);\n\tck_pk33 = loop_peak(268);\n}\npbs = psmooth(pb_eq, ck_ps);                 // F4: de-emphasis switch is crossfaded (10 ms)\npk_loop = (1 - pbs) * ck_pk3 + pbs * ck_pk33;\nfb_amt = (sm_sustain * 1.25) * (ck_pk3 / pk_loop) * (1 - hold_s) + (sm_hold_fb / pk_loop) * hold_c * hold_s;\nfb_amt = fb_amt * (1 - sos_s);               // ECHO/SUSTAIN not operative in SOS [S1]\nq_fb = 0.707 + sm_fb_res * 6;\ndfb_g = (drive_fb > 0.5) ? drive_gain : 1;\n\n// ================= Q5 FET INPUT STAGE (always in circuit) =============\nfkey = pre_bypass * 7 + sr;\nif (fkey != ck_fkey) {\n\t// quiescent point (no signal): source cap fully charged, so cdt = 0\n\tqi, qv = fet_step(0, 0, 0, RS, IDSS, VP);\n\tck_idq = qi;\n\tck_vsq = qv;\n\tck_fkey = fkey;\n\tif (vs_state < 0) {\n\t\tvs_state = qv;\n\t}\n}\nsm_pre = psmooth(pre_bypass, ck_ps);         // F4 (v0.1.1): source cap switched over 10 ms\ncdt = CS * sr * sm_pre;\nvg = lp1(x, 15915) * VPF * ck_ig;            // input RF filter: 100k series, 100 pF to ground [S14]\nid_n, vs_n = fet_step(vg, vs_state, cdt, RS, IDSS, VP);\nvs_state = fixdenorm(vs_n);\n// drain cannot fall below the source (+0.3 V): limits large positive swings\nid_c = min(id_n, (VDD - vs_n - 0.3) / RD);\nvac = (id_c - ck_idq) * RD;                  // drain AC (V); sign flipped so the device is non-inverting\npre = vac / VPF;                             // back to full-scale units (EP-3 gain kept)\n// output mixer coefficients (recomputed only when Echo Volume moves)\nif (sm_echo != ck_kkey) {\n\tgd, ge, rt = mixer(sm_echo);\n\tgd5, ge5, rt5 = mixer(0.5);\n\tck_gd = gd;\n\tck_ge = ge;\n\tck_rth = rt;\n\tck_en = gd5 / ge5;                       // echo source level: first repeat ~ dry level at k = 0.5 (APPROX)\n\tck_kkey = sm_echo;\n}\ndry_br = hp1(pre, 7) * ck_gd * sm_dry;       // 0.1 uF coupling into ~260k: ~7 Hz\n\n// ================= ECHO HEAD READ (fixed) =============================\nri = floor(p_new);\nrf = p_new - ri;\ni0 = wrap(ri, 0, L);\nim1 = wrap(i0 - 1, 0, L);\nip1 = wrap(i0 + 1, 0, L);\nip2 = wrap(i0 + 2, 0, L);\nm0 = peek(tape, im1, 0);\nc0 = peek(tape, i0, 0);\nn0 = peek(tape, ip1, 0);\nq0 = peek(tape, ip2, 0);\ny_echo = hermite(m0, c0, n0, q0, rf);\n// SOS head (monitors the loop before it reaches the record head)\nrs_pos = p_new + d_sos;\nrsi = floor(rs_pos);\nrsf = rs_pos - rsi;\nj0 = wrap(rsi, 0, L);\njm1 = wrap(j0 - 1, 0, L);\njp1 = wrap(j0 + 1, 0, L);\njp2 = wrap(j0 + 2, 0, L);\nsm0 = peek(tape, jm1, 0);\nsc0 = peek(tape, j0, 0);\nsn0 = peek(tape, jp1, 0);\nsq0 = peek(tape, jp2, 0);\ny_sos = hermite(sm0, sc0, sn0, sq0, rsf);\n\n// ================= PLAYBACK CHAIN =====================================\ngp = min(1, v_eff / 0.15);                   // head output falls away as the tape stops\nfc_tape = clamp(5188 * v_eff, 50, 0.45 * sr); // tape HF loss: H&H fit (7782 Hz @ 12 ips) x 8/12  APPROX\nyraw = y_echo * (1 - sos_s) + y_sos * sos_s; // SOS: you hear the SOS head [S1]\ntl, tb_, th = svf(yraw * gp, fc_tape, 0.707);\n// de-emphasis: 18k with 0.003 uF (forum, 2947 Hz) / 0.033 uF (manual scan, 268 Hz); both run and\n// are crossfaded (F4). Each is normalised at 1 kHz so both give the same mid level.\ny3 = lp1(tl, 2947);\ny33 = lp1(tl, 268);\nypb = (y3 * sqrt(1 + (1000 / 2947) * (1000 / 2947))) * (1 - pbs) + (y33 * sqrt(1 + (1000 / 268) * (1000 / 268))) * pbs;\nypb = ypb * lg;                              // F6 fade\nypb = hp1(ypb, 30);                          // head-amp coupling APPROX\nypb = ypb + lp1(noise(), 10000) * ck_ng;\n// F1 (v0.1.1): HOLD level trim. A fixed loop gain cannot freeze a loop: tape saturation\n// compresses slightly at playing level and frequencies off the loop's peak decay. While HOLD\n// is on, the playback power is compared with a target, and the hold gain is trimmed by at most\n// +-3 % per pass. Settling: after HOLD is pressed the target may only fall (the loop darkens\n// naturally but never grows) until the loop stops losing level (< 1 dB over a pass, at least\n// 2 passes; at most 30 s); then it is locked and changes by Hold Feedback^2 per pass\n// (1.0 = frozen), never sitting more than 1.5 dB above the loop's own level. Outside HOLD hold_c = 1 and nothing changes.\nhp_env = fixdenorm(hp_env + (1 - exp(-1 / (0.3 * sr))) * (ypb * ypb - hp_env));\ndsamp = max(d / max(vc, 0.000001), 1);\nif (hold > 0.5 && hold_prev < 0.5) {\n\thold_tgt = hp_env;\n\thold_cnt = 30 * sr;                          // settling time limit (dark voicing needs the longest)\n\thold_pass = dsamp + 0.3 * sr;                 // first check after one pass + envelope settle\n\thold_np = 0;\n\thold_elast = hp_env;\n}\nhold_prev = hold;\nif (hold > 0.5) {\n\tif (hold_cnt > 0) {\n\t\thold_tgt = min(hold_tgt, hp_env);\n\t\thold_cnt = hold_cnt - 1;\n\t\thold_pass = hold_pass - 1;\n\t\tif (hold_pass <= 0) {\n\t\t\thold_np = hold_np + 1;\n\t\t\tif (hold_np >= 2 && hp_env > 0.794 * hold_elast) {\n\t\t\t\thold_cnt = 0;                    // lost < 1 dB over the last pass: lock\n\t\t\t}\n\t\t\thold_elast = hp_env;\n\t\t\thold_pass = dsamp;\n\t\t}\n\t\tcc = (hold_tgt > 0.0000000001) ? clamp(sqrt(hold_tgt / max(hp_env, 0.00000000000000000001)), 0.97, 1) : 0.97;\n\t} else {\n\t\thold_tgt = fixdenorm(hold_tgt * exp(2 * log(max(sm_hold_fb, 0.01)) / dsamp));\n\t\t// a shortfall beyond 1.5 dB is spectral loss (e.g. the dark voicing shedding its mids), not\n\t\t// saturation: let the target follow, so the trim never pumps the loop back up by more than 1.5 dB\n\t\thold_tgt = min(hold_tgt, hp_env * 1.413);\n\t\tcc = (hold_tgt > 0.0000000001) ? clamp(sqrt(hold_tgt / max(hp_env, 0.00000000000000000001)), 0.97, 1.03) : 0.97;\n\t}\n\thold_c = hold_c + (1 - exp(-1 / (0.2 * sr))) * (cc - hold_c);\n} else {\n\thold_c = hold_c + (1 - exp(-1 / (0.2 * sr))) * (1 - hold_c);\n}\n// Echo Sustain feedback, with the Echolivity feedback filters\nf1l, f1b, f1h = svf(ypb, sm_fb_hp_hz, q_fb);\nf2l, f2b, f2h = svf(f1h, sm_fb_lp_hz, q_fb);\nguard = (env > 1.5) ? 1.5 / env : 1;\nfbs = f2l * fb_amt * guard * dfb_g;\nenv = fixdenorm(env + ((abs(f2l * fb_amt) > env) ? ck_up : ck_dn) * (abs(f2l * fb_amt) - env));\n\n// ================= RECORD CHAIN =======================================\nu = pre * ck_rg * drive_gain * (1 - hold_s) + fbs;\nu = hp1(u, 20);\nu = tapesat(u * g_t * drive_gain, 0.05) / g_t;\nu = dc_block(u);\n// write anti-alias: the head's speed over the tape sets the tape's sample spacing\n// spatial Nyquist: a frequency f lands at f / (|u_cps| sr) cycles per cell, which must stay < 0.5\n// 4th-order Butterworth at 0.35 sr |u|: everything that plays back below 0.35 sr (16.8 kHz @ 48k)\n// is kept; what would land above Nyquist is >= 40 dB down before the head samples it (test E03)\nfc_w = clamp(0.35 * sr * abs(u_cps), 20, 0.45 * sr);\nrl1, rb1, rh1 = svf(u, fc_w, 0.5412);\nrl, rb, rh = svf(rl1, fc_w, 1.3066);\nrec = fixnan(rl);\n\n// ================= RECORD/ERASE HEAD: fill every cell crossed =========\n// ECHO: erase + record (overwrite). SOS: erase off, new is added to the old\n// layer, which loses sos_db per pass. PLAYBACK: record and erase off.\nwr_gain = 1 - pb_s;\nsp_bias = sm_bias_khz * 1000 / (max(abs(u_cps), 0.000001) * sr);  // bias cycles per tape cell\nbias_amp = 0;\nif (sp_bias < FBIAS_MIN_SP) {\n\tbias_amp = sm_bias_leak * 0.1 * min(1, (FBIAS_MIN_SP - sp_bias) / 0.1);   // level APPROX\n}\nif (wr_gain > 0.0001 && abs(u_cps) > 0.000001) {\n\tklo = (u_cps > 0) ? floor(w_old) + 1 : -floor(-w_new);      // -floor(-x) = ceil(x)\n\tkhi = (u_cps > 0) ? floor(w_new) : -floor(-w_old) - 1;\n\tfor (k = klo; k <= khi; k += 1) {\n\t\tfq = (k - w_old) / u_cps;\n\t\tki = wrap(k, 0, L);\n\t\tval = rec_prev + fq * (rec - rec_prev);\n\t\tif (bias_amp > 0) {\n\t\t\tval = val + bias_amp * sin(twopi * sm_bias_khz * 1000 * ((t - 1 + fq) / sr));\n\t\t}\n\t\told = peek(tape, ki, 0);\n\t\tkeep = sos_s * ck_sg;                            // SOS keeps the old layer\n\t\tnv = old * (1 - wr_gain) + wr_gain * (old * keep + val);\n\t\tpoke(tape, nv, ki, 0);\n\t}\n}\nrec_prev = rec;\nw_prev = w_new;\np = p_new;\n\n// ================= OUTPUT =============================================\ne1l, e1b, e1h = svf(ypb, sm_echo_hp_hz, 0.707);\ne2l, e2b, e2h = svf(e1h, sm_echo_lp_hz, 0.707);\nech = dc_block(e2l) * echo_on_s2;\nif (sm_out_db != ck_okey) {\n\tck_og = pow(10, sm_out_db / 20);\n\tck_okey = sm_out_db;\n}\nif (sm_echo_trim_db != ck_etkey) {\n\tck_et = pow(10, sm_echo_trim_db / 20);\n\tck_etkey = sm_echo_trim_db;\n}\no_mix = dry_br + ech * ck_en * ck_ge * ck_et;\n// F4 (v0.1.1): the cable filter always runs (no stale state); below 1 pF it is blended out\no_lp = lp1(o_mix, 1 / (twopi * ck_rth * max(sm_cable_pf, 1) * 0.000000000001));\nif (sm_cable_pf >= 1) {\n\to_mix = o_lp;\n} else if (sm_cable_pf > 0) {\n\to_mix = o_mix + sm_cable_pf * (o_lp - o_mix);\n}\no1 = fixnan(o_mix * ck_og);\no2 = o1;\n\n// ================= OUTPUT PROTECTION (as the H&H device) =================\nif (ceiling_db != ck_ckey) {\n\tck_cl = pow(10, ceiling_db / 20);\n\tck_ckey = ceiling_db;\n}\nc_lin = ck_cl;\nthr = c_lin * 0.944061;\npk = abs(o1);\nover = (pk > thr) ? 1 : 0;\npg = 1;\nif (protect > 0.5) {\n\tgreq = (pk > thr) ? thr / pk : 1;\n\tif (greq < pg_hold) {\n\t\tpg_hold = greq;\n\t\tph_cnt = 0.010 * sr;\n\t} else if (ph_cnt > 0) {\n\t\tph_cnt = ph_cnt - 1;\n\t} else {\n\t\tpg_hold = pg_hold + ck_prel * (1 - pg_hold);\n\t}\n\tif (pg_hold < pg_s) {\n\t\tpg_s = pg_s + ck_patt * (pg_hold - pg_s);\n\t} else {\n\t\tpg_s = pg_hold;\n\t}\n\tpg = pg_s;\n\to1 = softclip(o1 * pg, thr, c_lin);\n\to2 = o1;\n} else {\n\tpg_hold = 1;\n\tpg_s = 1;\n\tph_cnt = 0;\n}\n\nout1 = o1;\nout2 = o2;\nout3 = (d / max(vc, 0.000000001)) / sr * 1000;\nout4 = tap_bpm;\nout5 = u_out;\nout6 = v_eff;\nout7 = pg;\nout8 = over;\n",
         "fontface": 0,
         "fontname": "<Monospaced>",
         "fontsize": 11.0,
         "numinlets": 2,
         "numoutlets": 8,
         "outlettype": [
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          ""
         ],
         "patching_rect": [
          20,
          60,
          900,
          700
         ]
        }
       },
       {
        "box": {
         "id": "g-in1",
         "maxclass": "newobj",
         "text": "in 1",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          20,
          20,
          30,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-in2",
         "maxclass": "newobj",
         "text": "in 2",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          880,
          20,
          30,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out1",
         "maxclass": "newobj",
         "text": "out 1",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out2",
         "maxclass": "newobj",
         "text": "out 2",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          140,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out3",
         "maxclass": "newobj",
         "text": "out 3",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          260,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out4",
         "maxclass": "newobj",
         "text": "out 4",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          380,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out5",
         "maxclass": "newobj",
         "text": "out 5",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          500,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out6",
         "maxclass": "newobj",
         "text": "out 6",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          620,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out7",
         "maxclass": "newobj",
         "text": "out 7",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          740,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out8",
         "maxclass": "newobj",
         "text": "out 8",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          860,
          780,
          40,
          22
         ]
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "g-in1",
          0
         ],
         "destination": [
          "g-code",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-in2",
          0
         ],
         "destination": [
          "g-code",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          0
         ],
         "destination": [
          "g-out1",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          1
         ],
         "destination": [
          "g-out2",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          2
         ],
         "destination": [
          "g-out3",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          3
         ],
         "destination": [
          "g-out4",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          4
         ],
         "destination": [
          "g-out5",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          5
         ],
         "destination": [
          "g-out6",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          6
         ],
         "destination": [
          "g-out7",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          7
         ],
         "destination": [
          "g-out8",
          0
         ]
        }
       }
      ]
     }
    }
   },
   {
    "box": {
     "id": "obj-50",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      620,
      450,
      130,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "text": "record~ out_GOLD3_sos_loop2s 1"
    }
   },
   {
    "box": {
     "id": "obj-51",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      770,
      346,
      80,
      22
     ],
     "outlettype": [
      "bang"
     ],
     "text": "delay 7300"
    }
   },
   {
    "box": {
     "id": "obj-52",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      770,
      376,
      40,
      22
     ],
     "outlettype": [
      "bang",
      "bang"
     ],
     "text": "t b b"
    }
   },
   {
    "box": {
     "id": "obj-53",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      770,
      406,
      30,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "0"
    }
   },
   {
    "box": {
     "id": "obj-54",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      770,
      480,
      250,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "writewave out_GOLD3_sos_loop2s_max.wav"
    }
   },
   {
    "box": {
     "id": "obj-55",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620,
      510,
      290,
      20
     ],
     "text": "\u2192 writes out_GOLD3_sos_loop2s_max.wav",
     "fontsize": 10.0
    }
   },
   {
    "box": {
     "id": "obj-56",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      920,
      180,
      290,
      20
     ],
     "text": "GOLD4_oscillation_short \u2014 tier A (sample-exact), 6 s",
     "fontsize": 10.5
    }
   },
   {
    "box": {
     "id": "obj-57",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      920,
      204,
      290,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "noise_db -120, wow 0, flutter 0, sustain 0.95, slider_pos 0.1"
    }
   },
   {
    "box": {
     "id": "obj-58",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      920,
      232,
      230,
      22
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ in_GOLD4_oscillation_short in_GOLD4_oscillation_short.wav"
    }
   },
   {
    "box": {
     "id": "obj-59",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      920,
      256,
      230,
      22
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ out_GOLD4_oscillation_short 6600 1"
    }
   },
   {
    "box": {
     "id": "obj-60",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      920,
      284,
      140,
      26
     ],
     "outlettype": [
      "",
      "",
      "int"
     ],
     "text": "RUN GOLD4"
    }
   },
   {
    "box": {
     "id": "obj-61",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      920,
      318,
      60,
      22
     ],
     "outlettype": [
      "bang",
      "bang",
      "bang"
     ],
     "text": "t b b b"
    }
   },
   {
    "box": {
     "id": "obj-62",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      990,
      346,
      30,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "1"
    }
   },
   {
    "box": {
     "id": "obj-63",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      920,
      346,
      40,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "start"
    }
   },
   {
    "box": {
     "id": "obj-64",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      920,
      376,
      120,
      22
     ],
     "outlettype": [
      "signal",
      "bang"
     ],
     "text": "play~ in_GOLD4_oscillation_short 1"
    }
   },
   {
    "box": {
     "id": "obj-65",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      920,
      412,
      120,
      22
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "text": "gen~",
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 0,
       "revision": 0,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "dsp.gen",
      "rect": [
       50,
       50,
       960,
       840
      ],
      "boxes": [
       {
        "box": {
         "id": "g-code",
         "maxclass": "codebox",
         "code": "// FALLBACK NAMES BUILD (not a release): identical engine with locals that share Gen operator names renamed\n// (s->st_s, f->fq, i->ii, gtp->g_tp, r->rdp). Use only if gen~ reports an error on one of those names.\n// =====================================================================\n// ECHOLIVITY \u2014 EP-3 (Maestro Echoplex EP-3 model) \u00b7 tape engine v0.1.2-dev\n// v0.1.2-dev: identifiers renamed that collide with gen~ built-ins (dcblock -> dc_block,\n// lt -> l_t); no functional change (bit-identical, test R06/X01).\n// v0.1.1-dev remediation (see CHANGELOG / validation/EP3_REMEDIATION_REPORT.md): F1 HOLD loop gain,\n// F2 33 nF feedback runaway, F3 8 s default loop, F4 click-free DE-EMPH / Cable / Source-cap\n// changes, F6 loop-length change fade.\n// gen~ codebox. Status of every value: docs/EP3_MODELING_NOTES.md\n//\n// Signal flow (EP-3 manual, Maestro owner/service manual [S1]):\n//   input -> Q5 FET stage (TIS58, 22k drain, 3.3k source, 0.022 uF source\n//   bypass = pre-emphasis) -> dry out (high output Z into cable C)\n//                           -> record level -> record amp -> RECORD/ERASE HEAD\n//   (moving, on the slider) -> tape (8 ips, ~75 ft loop) -> fixed ECHO head\n//   -> head amp + de-emphasis -> Echo Sustain (feedback) / Echo Volume (blend\n//   pot in the passive output mixer, wiper grounded) -> output (high Z, into the cable)\n//   SOS: SOS head (upstream of the record head) monitors the loop; erase off,\n//   new material is added to the old layer (-1 dB per pass, manual alignment).\n//\n// The record head moves, so a slider move changes how sound is WRITTEN on the\n// tape (pitch change heard one delay later). The write is band-limited (pre-\n// write low-pass that follows the head's speed over the tape, after\n// Arnardottir/Abel/Smith 2008) and fills every tape cell the head crosses.\n//\n// Tape buffer: fixed 48 000 cells per second of tape at nominal speed, so the\n// 112.5 s loop costs the same memory at any sample rate.\n// Level convention: 100 mV == -18 dBFS RMS (same as the H&H device).\n// Mono like the original: L+R are summed at the input; out1 == out2.\n//\n// out1/out2: audio   out3: delay (ms)   out4: tap BPM\n// out5: record-head write speed over tape (1 = normal)   out6: tape speed\n// out7: output-protection gain   out8: output over flag\n// =====================================================================\n\n// ---------- stateful helpers (each call site gets its own state) ------\nsvf(x, fc, q) {\n\tHistory s1(0);\n\tHistory s2(0);\n\tHistory key_fc(-1);\n\tHistory key_q(-1);\n\tHistory key_sr(-1);\n\tHistory c_k(0);\n\tHistory c_a1(0);\n\tHistory c_a2(0);\n\tHistory c_a3(0);\n\tif (fc != key_fc || q != key_q || samplerate != key_sr) {\n\t\tfcc = clamp(fc, 5, samplerate * 0.49);\n\t\tg = tan(pi * fcc / samplerate);\n\t\tc_k = 1 / q;\n\t\tc_a1 = 1 / (1 + g * (g + c_k));\n\t\tc_a2 = g * c_a1;\n\t\tc_a3 = g * c_a2;\n\t\tkey_fc = fc;\n\t\tkey_q = q;\n\t\tkey_sr = samplerate;\n\t}\n\tv3 = x - s2;\n\tv1 = c_a1 * s1 + c_a2 * v3;\n\tv2 = s2 + c_a2 * s1 + c_a3 * v3;\n\ts1 = fixdenorm(2 * v1 - s1);\n\ts2 = fixdenorm(2 * v2 - s2);\n\treturn v2, v1, x - c_k * v1 - v2;\n}\n\nlp1(x, fc) {\n\tHistory z(0);\n\tHistory key_fc(-1);\n\tHistory key_sr(-1);\n\tHistory c_a(0);\n\tif (fc != key_fc || samplerate != key_sr) {\n\t\tc_a = 1 - exp(-twopi * min(fc, samplerate * 0.49) / samplerate);\n\t\tkey_fc = fc;\n\t\tkey_sr = samplerate;\n\t}\n\tz = fixdenorm(z + c_a * (x - z));\n\treturn z;\n}\n\nhp1(x, fc) {\n\treturn x - lp1(x, fc);\n}\n\ndc_block(x) {\n\tHistory x1(0);\n\tHistory y1(0);\n\tR = 1 - twopi * 10 / samplerate;\n\ty = fixdenorm(x - x1 + R * y1);\n\tx1 = x;\n\ty1 = y;\n\treturn y;\n}\n\nhermite(xm1, x0, x1, x2, fq) {\n\tc1 = 0.5 * (x1 - xm1);\n\tc2 = xm1 - 2.5 * x0 + 2 * x1 - 0.5 * x2;\n\tc3 = 0.5 * (x2 - xm1) + 1.5 * (x0 - x1);\n\treturn ((c3 * fq + c2) * fq + c1) * fq + x0;\n}\n\nsoftclip(x, k, c) {\n\tax = abs(x);\n\ty = x;\n\tif (ax > k) {\n\t\tsg = (x >= 0) ? 1 : -1;\n\t\ty = sg * (k + (c - k) * tanh((ax - k) / (c - k)));\n\t}\n\treturn y;\n}\n\ntapesat(x, b) {\n\tHistory key_b(-99999);\n\tHistory c_tb(0);\n\tif (b != key_b) {\n\t\tc_tb = tanh(b);\n\t\tkey_b = b;\n\t}\n\ttb = c_tb;\n\treturn (tanh(x + b) - tb) / (1 - tb * tb);\n}\n\npsmooth(t, a) {\n\tHistory st_s(0);\n\tHistory init(0);\n\tif (init < 0.5) {\n\t\tst_s = t;\n\t\tinit = 1;\n\t}\n\tst_s = st_s + a * (t - st_s);\n\tif (abs(t - st_s) <= 0.000000001 * max(1, abs(t))) {\n\t\tst_s = t;\n\t}\n\treturn st_s;\n}\n\nfsmooth(fq, a) {\n\tHistory ls(0);\n\tHistory init(0);\n\tl_t = log(fq);\n\tif (init < 0.5) {\n\t\tls = l_t;\n\t\tinit = 1;\n\t}\n\tls = ls + a * (l_t - ls);\n\tif (abs(l_t - ls) <= 0.000000001) {\n\t\tls = l_t;\n\t}\n\treturn (ls == l_t) ? fq : exp(ls);\n}\n\n// JFET drain current, square law: Id = Idss (1 - Vgs/Vp)^2 for Vp < Vgs, else 0.\n// Vgs above +0.4 V is held there (gate-source diode conducts).\n// Source node: Rs in parallel with Cs (Cs = 0 when the bypass cap is out).\n// Backward-Euler step for the source node, solved in closed form:\n//   (Cs/dt + 1/Rs) Vs - (Cs/dt) Vs0 = Id(vg - Vs)\n// Returns (Id, Vs).\nfet_step(vg, vs0, cdt, rs, idss, vp) {\n\ta = cdt + 1 / rs;\n\tb = cdt * vs0;\n\tvgc = min(vg, 0.4 + vs0);\n\t// w = 1 - Vgs/Vp; Vs = Vp w - Vp + vg  ->  idss w^2 - a Vp w + (a Vp - a vg + b) = 0\n\tqa = idss;\n\tqb = -a * vp;\n\tqc = a * vp - a * vgc + b;\n\tdisc = qb * qb - 4 * qa * qc;\n\tidq = 0;\n\tvsq = b / a;                                  // cut-off: no drain current\n\tif (disc >= 0) {\n\t\tw = (-qb + sqrt(disc)) / (2 * qa);\n\t\tif (w > 0) {\n\t\t\tidq = idss * w * w;\n\t\t\tvsq = vp * w - vp + vgc;\n\t\t}\n\t}\n\treturn idq, vsq;\n}\n\n// Passive output mixer (EP-3; values from replica/forum traces [S11][S13]-[S15], APPROX until a\n// clean schematic): drain -0.1uF- A; A -470k- gnd; A -220k- B; B = Echo Volume lug 1;\n// B -100k- OUT. Echo amp -220k- E; E -100k- gnd; E = pot lug 3; E -100k- OUT.\n// The 500k pot's WIPER IS GROUNDED: k = 0 shorts the echo lug, k = 1 shorts the dry lug,\n// so Echo Volume is a blend and the dry level peaks near k = 0.2 (non-monotonic).\n// OUT drives the amp (1M) and the cable capacitance. Returns dry gain, echo gain and the\n// Thevenin resistance at OUT (which, with the cable C, sets the treble roll-off).\nmixer(k) {\n\trp3 = clamp(k, 0, 1) * 500000;\n\trp1 = 500000 - rp3;\n\tra = 22000 * 470000 / 492000;\n\tvbf = (470000 / 492000) * rp1 / (ra + 220000 + rp1);\n\trdb = (ra + 220000) * rp1 / (ra + 220000 + rp1) + 100000;\n\trsh = rp3 * 100000 / (rp3 + 100000);\n\tvef = rsh / (220000 + rsh);\n\treb = 220000 * rsh / (220000 + rsh) + 100000;\n\tgsum = 1 / rdb + 1 / reb + 0.000001;\n\treturn vbf / rdb / gsum, vef / reb / gsum, 1 / gsum;\n}\n\n// F1/F2 (v0.1.1): peak gain of the fixed playback/record loop chain for a de-emphasis corner fde:\n// tape HF loss (2-pole, 5188 Hz) x de-emphasis (1-pole fde, normalised to 1 at 1 kHz)\n// x couplings (30, 20, 10 Hz high-passes). The 1 kHz normalisation lifts the chain above 1 below\n// 1 kHz: peak 1.043 (334 Hz) for 3 nF and 3.383 (102 Hz) for 33 nF, matching measured per-pass\n// gains of 1.040 / 3.369 (validation/EP3_REMEDIATION_REPORT.md). Grid search, 20 Hz\u20134 kHz.\nloop_peak(fde) {\n\tnrm = sqrt(1 + (1000 / fde) * (1000 / fde));\n\tpk = 0;\n\tfor (ii = 0; ii < 96; ii += 1) {\n\t\tfq = 20 * pow(200, ii / 95);\n\t\tg_tp = 1 / sqrt(1 + pow(fq / 5188, 4));\n\t\tgd = nrm / sqrt(1 + (fq / fde) * (fq / fde));\n\t\tg30 = (fq / 30) / sqrt(1 + (fq / 30) * (fq / 30));\n\t\tg20 = (fq / 20) / sqrt(1 + (fq / 20) * (fq / 20));\n\t\tg10 = (fq / 10) / sqrt(1 + (fq / 10) * (fq / 10));\n\t\tpk = max(pk, g_tp * gd * g30 * g20 * g10);\n\t}\n\treturn pk;\n}\n\n// ---------- tape ------------------------------------------------------\n// 112.5 s * 48 000 cells/s (+ margin)\nData tape(5400064, 1);\n\n// ---------- parameters ------------------------------------------------\nParam in_gain_db(0, min=-36, max=12);\nParam dry(1, min=0, max=1);                  // Echolivity trim on the dry branch (1 = original)\nParam echo(0.5, min=0, max=1);               // ECHO VOLUME: the 500k blend pot (wiper grounded)\nParam echo_trim_db(0, min=-24, max=12);      // Echolivity trim on the echo branch\nParam out_db(0, min=-36, max=12);\nParam mode(2, min=0, max=2);\nParam bpm(120, min=20, max=999);\nParam sync_div(2, min=0, max=5);\nParam sync_type(0, min=0, max=2);\nParam sync_mult(1, min=1, max=8);\nParam offset_ms(0, min=-100, max=100);\nParam tap(0, min=0, max=1000000);\nParam tap_div(3, min=0, max=5);\nParam tap_type(0, min=0, max=2);\nParam bar_beats(4, min=1, max=16);\n// ECHO DELAY slider: delay is linear in head position at constant tape speed.\n// 60\u2013600 ms default = DAFX/CCRMA measured range [S3]; 80\u2013800 per [S4].\nParam slider_pos(0.5, min=0, max=1);\nParam slider_min_ms(60, min=2, max=2000);\nParam slider_max_ms(600, min=2, max=4000);\nParam glide_ms(40, min=1, max=2000);\nParam transition_ms(250, min=1, max=4000);\nParam head_slew(4, min=0.05, max=12);        // max head speed, in delay-seconds per second (APPROX)\n// EP-3 front panel / internal\nParam sustain(0.4, min=0, max=1);            // ECHO SUSTAIN (500k lin [S12]); runs away from 0.8 (test E14)\nParam rec_db(0, min=-12, max=12);            // RECORD LEVEL trimmer (internal on the original)\nParam sos(0, min=0, max=1);                  // ECHO / SOUND ON SOUND switch\nParam sos_db(-1, min=-6, max=0);             // SOS loss per pass; manual alignment: \"approximately 1dB\"\nParam echo_on(1, min=0, max=1);              // footswitch: echo on/off\nParam playback(0, min=0, max=1);             // footswitch: playback (record + erase off)\nParam pre_bypass(1, min=0, max=1);           // Q5 source bypass 0.022 uF (manual addendum) in/out\nParam cable_pf(470, min=0, max=2000);        // cable + amp input capacitance; 470 pF fits ClinchFX's descriptions (test E07)\nParam pb_eq(0, min=0, max=1);                // de-emphasis: 0 = 18k/0.003uF (forum), 1 = 18k/0.033uF (manual scan)\nParam bias_khz(100, min=40, max=120);        // \"approximate frequency of 100 KC\" [S1]\nParam bias_leak(0.3, min=0, max=1);          // bias heard on very fast slider moves (APPROX level)\nParam loop_s(8, min=1, max=112.5);           // F3 (v0.1.1): default 8 s for usable SOS/PLAYBACK; 112.5 s = ~75 ft at 8 ips [S18] (authentic)\n// tape character (Echolivity)\nParam sat(0.5, min=0, max=1);\nParam noise_db(-60, min=-120, max=-30);\nParam wow(0.1, min=0, max=1);                // slow drift\nParam flutter(0.25, min=0, max=1);           // 0.5 stays within the 0.3 % spec (E10: 0.256 %); capstan 26 Hz, pinch 2.5/5 Hz\n// performance (Echolivity)\nParam hold(0, min=0, max=1);\nParam hold_fb(1, min=0.9, max=1.05);\nParam drive(0, min=0, max=1);\nParam drive_db(12, min=0, max=24);\nParam drive_fb(0, min=0, max=1);\nParam tape_stop(0, min=0, max=1);\nParam stop_time(1, min=0.05, max=8);\nParam start_time(0.4, min=0.05, max=8);\nParam fb_hp_hz(10, min=10, max=2000);\nParam fb_lp_hz(20000, min=500, max=20000);\nParam fb_res(0, min=0, max=1);\nParam echo_hp_hz(10, min=10, max=2000);\nParam echo_lp_hz(20000, min=500, max=20000);\nParam protect(1, min=0, max=1);\nParam ceiling_db(-0.3, min=-12, max=0);\n\n// ---------- state -----------------------------------------------------\nHistory p(0);\nHistory d_head(-1);\nHistory Ts1(-1);\nHistory Ts2(-1);\nHistory w_prev(0);\nHistory rec_prev(0);\nHistory first(1);\nHistory s_stop(1);\nHistory hold_s(0);\nHistory drive_s(0);\nHistory sos_s(0);\nHistory echo_on_s(1);\nHistory echo_on_s2(1);\nHistory pb_s(0);\nHistory env(0);\nHistory prev_mode(-1);\nHistory trans_left(0);\nHistory nsamp(0);\nHistory tap_prev(0);\nHistory last_tap(-1);\nHistory t_count(0);\nHistory ti0(0);\nHistory ti1(0);\nHistory ti2(0);\nHistory ti3(0);\nHistory tap_bpm(120);\nHistory ph_cap(0);\nHistory ph_p1(0);\nHistory ph_p2(0);\nHistory drift(0);\nHistory fl_rnd(0);\nHistory last_sr(0);\nHistory vs_state(-1);\nHistory pg_hold(1);\nHistory pg_s(1);\nHistory ph_cnt(0);\nHistory u_out(1);\nHistory ck_pk3(-1);\nHistory ck_pk33(-1);\nHistory L_cur(-1);\nHistory hp_env(0);\nHistory hold_tgt(0);\nHistory hold_c(1);\nHistory hold_prev(0);\nHistory hold_cnt(0);\nHistory hold_pass(0);\nHistory hold_np(0);\nHistory hold_elast(0);\nHistory lg(1);\nHistory lg1(1);\nHistory lg_t(1);\nHistory lg_hold(0);\n// cached coefficients\nHistory ck_sr(-1);\nHistory ck_ps(0);\nHistory ck_a10(0);\nHistory ck_drift(0);\nHistory ck_flr(0);\nHistory ck_nnorm(1);\nHistory ck_up(0);\nHistory ck_dn(0);\nHistory ck_prel(0);\nHistory ck_patt(0);\nHistory ck_tau(-1);\nHistory ck_as(0);\nHistory ck_fkey(-99999);\nHistory ck_idq(0);\nHistory ck_vsq(0);\nHistory ck_dkey(-99999);\nHistory ck_dg(1);\nHistory ck_sat(-99999);\nHistory ck_gt(1);\nHistory ck_ing(-99999);\nHistory ck_ig(1);\nHistory ck_rkey(-99999);\nHistory ck_rg(1);\nHistory ck_skey(-99999);\nHistory ck_sg(0.891);\nHistory ck_nkey(-99999);\nHistory ck_ng(0);\nHistory ck_okey(-99999);\nHistory ck_kkey(-99999);\nHistory ck_gd(0.18);\nHistory ck_ge(0.13);\nHistory ck_rth(83000);\nHistory ck_en(1);\nHistory ck_etkey(-99999);\nHistory ck_et(1);\nHistory ck_og(1);\nHistory ck_ckey(-99999);\nHistory ck_cl(1);\n\nCR = 48000;                                  // tape cells per second at nominal speed\nNB = 5400064;\nVPF = 0.794;                                 // volts per full scale (100 mV = -18 dBFS RMS)\nRD = 22000;                                  // Q5 drain resistor [S1][S8]\nRS = 3300;                                   // Q5 source resistor [S1]\nCS = 0.000000022;                            // Q5 source bypass [S1 addendum]\nIDSS = 0.0034;                               // APPROX: fitted so Vs = 1.8 V at 21.2 V supply\nVP = -3.0;                                   //   (measured 1.72\u20131.88 V / 21.0\u201321.3 V on two units [S8])\nVDD = 21.2;\nFBIAS_MIN_SP = 0.45;                         // spatial Nyquist guard (cycles per tape cell)\n\nsr = samplerate;\nt = nsamp;\nnsamp = nsamp + 1;\nx = 0.5 * (fixnan(in1) + fixnan(in2));      // mono, like the original\n\nif (sr != last_sr) {\n\tif (last_sr > 0) {\n\t\tTs1 = -1;\n\t\tTs2 = -1;\n\t\td_head = -1;\n\t\tlast_tap = -1;\n\t\tt_count = 0;\n\t}\n\tlast_sr = sr;\n}\n\n// ================= TAP TEMPO (sample counter; as the H&H device) =======\nif (tap > tap_prev + 0.5) {\n\tif (last_tap >= 0) {\n\t\tiv = t - last_tap;\n\t\tif (iv < 0.15 * sr) {\n\t\t\tiv = -1;\n\t\t} else if (iv > 2 * sr) {\n\t\t\tt_count = 0;\n\t\t\tlast_tap = t;\n\t\t} else {\n\t\t\tif (t_count > 0) {\n\t\t\t\ttavg0 = (ti0 + ti1 + ti2 + ti3) / min(t_count, 4);\n\t\t\t\tif (abs(iv - tavg0) > 0.4 * tavg0) {\n\t\t\t\t\tt_count = 0;\n\t\t\t\t}\n\t\t\t}\n\t\t\tti3 = ti2;\n\t\t\tti2 = ti1;\n\t\t\tti1 = ti0;\n\t\t\tti0 = iv;\n\t\t\tif (t_count == 0) {\n\t\t\t\tti1 = 0;\n\t\t\t\tti2 = 0;\n\t\t\t\tti3 = 0;\n\t\t\t}\n\t\t\tt_count = min(t_count + 1, 4);\n\t\t\ttavg = (ti0 + ti1 + ti2 + ti3) / t_count;\n\t\t\ttap_bpm = 60 * sr / tavg;\n\t\t\tlast_tap = t;\n\t\t}\n\t} else {\n\t\tlast_tap = t;\n\t}\n}\ntap_prev = tap;\n\n// ================= TARGET DELAY TIME ==================================\ns_lo = min(slider_min_ms, slider_max_ms);\ns_hi = max(slider_min_ms, slider_max_ms);\nT = (s_lo + slider_pos * (s_hi - s_lo)) * 0.001;\nif (mode < 1.5) {\n\tuse_bpm = max(bpm, 20);\n\tdv_idx = floor(sync_div + 0.5);\n\ttyp = floor(sync_type + 0.5);\n\tif (mode >= 0.5) {\n\t\tuse_bpm = tap_bpm;\n\t\tdv_idx = floor(tap_div + 0.5);\n\t\ttyp = floor(tap_type + 0.5);\n\t}\n\tbeats = 0.125;\n\tif (dv_idx == 1) { beats = 0.25; }\n\telse if (dv_idx == 2) { beats = 0.5; }\n\telse if (dv_idx == 3) { beats = 1; }\n\telse if (dv_idx == 4) { beats = 2; }\n\telse if (dv_idx >= 5) { beats = bar_beats; }\n\tif (typ == 1) { beats = beats * 1.5; }\n\telse if (typ == 2) { beats = beats * 2 / 3; }\n\tT = 60 / use_bpm * beats * max(sync_mult, 1) + offset_ms * 0.001;\n}\nT = clamp(T, 0.002, 4);\n\n// sample-rate-dependent constants\nif (sr != ck_sr) {\n\tck_ps = 1 - exp(-1 / (0.010 * sr));\n\tck_a10 = ck_ps;\n\tck_drift = 1 - exp(-twopi * 0.5 / sr);\n\tck_flr = 1 - exp(-twopi * 20 / sr);\n\ta_n0 = 1 - exp(-twopi * min(10000, 0.49 * sr) / sr);\n\tck_nnorm = sqrt((1 / 3) * a_n0 / (2 - a_n0));\n\tck_up = 1 - exp(-1 / (0.001 * sr));\n\tck_dn = 1 - exp(-1 / (0.200 * sr));\n\tck_prel = 1 - exp(-1 / (0.150 * sr));\n\tck_patt = 1 - exp(-1 / (0.0005 * sr));\n\tck_sr = sr;\n\tck_tau = -1;\n\tck_fkey = -99999;\n\tck_nkey = -99999;\n}\n\n// smoothed continuous parameters\nsm_in_gain_db = psmooth(in_gain_db, ck_ps);\nsm_dry = psmooth(dry, ck_ps);\nsm_echo = psmooth(echo, ck_ps);\nsm_echo_trim_db = psmooth(echo_trim_db, ck_ps);\nsm_out_db = psmooth(out_db, ck_ps);\nsm_sustain = psmooth(sustain, ck_ps);\nsm_rec_db = psmooth(rec_db, ck_ps);\nsm_sos_db = psmooth(sos_db, ck_ps);\nsm_bias_leak = psmooth(bias_leak, ck_ps);\nsm_sat = psmooth(sat, ck_ps);\nsm_noise_db = psmooth(noise_db, ck_ps);\nsm_wow = psmooth(wow, ck_ps);\nsm_flutter = psmooth(flutter, ck_ps);\nsm_hold_fb = psmooth(hold_fb, ck_ps);\nsm_drive_db = psmooth(drive_db, ck_ps);\nsm_fb_res = psmooth(fb_res, ck_ps);\nsm_cable_pf = psmooth(cable_pf, ck_ps);\nsm_bias_khz = fsmooth(bias_khz, ck_ps);\nsm_fb_hp_hz = fsmooth(fb_hp_hz, ck_ps);\nsm_fb_lp_hz = fsmooth(fb_lp_hz, ck_ps);\nsm_echo_hp_hz = fsmooth(echo_hp_hz, ck_ps);\nsm_echo_lp_hz = fsmooth(echo_lp_hz, ck_ps);\n// ceiling_db is not smoothed (see H&H test P05)\n\nif (mode != prev_mode) {\n\tif (prev_mode >= 0) {\n\t\ttrans_left = transition_ms * 0.001 * sr * 3;\n\t}\n\tprev_mode = mode;\n}\ntau_ms = glide_ms;\nif (trans_left > 0) {\n\ttau_ms = max(transition_ms, glide_ms);\n\ttrans_left = trans_left - 1;\n}\nif (tau_ms != ck_tau) {\n\tck_as = 1 - exp(-1 / (max(tau_ms, 0.5) * 0.001 * sr));\n\tck_tau = tau_ms;\n}\na_s = ck_as;\nTc = T * CR;                                 // target head distance in tape cells\nif (Ts1 < 0) {\n\tTs1 = Tc;\n\tTs2 = Tc;\n}\nTs1 = Ts1 + a_s * (Tc - Ts1);\nTs2 = Ts2 + a_s * (Ts1 - Ts2);\n\n// ================= TRANSPORT ==========================================\nif (tape_stop > 0.5) {\n\ts_stop = max(0, s_stop - 1 / (max(stop_time, 0.02) * sr));\n} else {\n\ts_stop = min(1, s_stop + 1 / (max(start_time, 0.02) * sr));\n}\n// F6 (v0.1.1): a Loop Length change moves the wrap point, so the heads land on other tape.\n// Fade the playback (echo + feedback) out with a smooth 2-stage curve (3 ms stages, ~40 ms to\n// silence), apply the new length, keep it muted until freshly recorded tape reaches the echo\n// head (one delay + 5 ms: the tape between the heads still holds old material), then fade in.\nL_tgt = floor(clamp(loop_s, 1, 112.5) * CR);\nif (L_cur < 0) {\n\tL_cur = L_tgt;\n}\nlg_t = 1;\nif (L_tgt != L_cur) {\n\tlg_t = 0;\n\tif (lg < 0.0001) {\n\t\tL_cur = L_tgt;\n\t\tfirst = 1;                               // restart the write-head tracking on the new loop\n\t\tlg_hold = Ts2 * sr / CR + 0.005 * sr;    // one delay (target head distance) + 5 ms\n\t}\n}\nif (lg_hold > 0) {\n\tlg_t = 0;\n\tlg_hold = lg_hold - 1;\n}\na_lg = 1 - exp(-1 / (0.003 * sr));\nlg1 = lg1 + a_lg * (lg_t - lg1);\nlg = lg + a_lg * (lg1 - lg);\nL = L_cur;\n\n// flutter: capstan 26 Hz, pinch wheel 2.5 / 5.0 Hz (measured on an Echoplex [S5]),\n// plus a little broadband flutter and slow drift. flutter = 0.5 -> within the 0.3 % spec (E10: 0.256 % peak).\nph_cap = ph_cap + 26 / sr;\nph_cap = ph_cap - floor(ph_cap);\nph_p1 = ph_p1 + 2.5 / sr;\nph_p1 = ph_p1 - floor(ph_p1);\nph_p2 = ph_p2 + 5.0 / sr;\nph_p2 = ph_p2 - floor(ph_p2);\ndrift = drift + ck_drift * (noise() * 3 - drift);\nfl_rnd = fl_rnd + ck_flr * (noise() * 2 - fl_rnd);\nwf = sm_flutter * 0.006 * (0.45 * sin(twopi * ph_cap) + 0.3 * sin(twopi * ph_p1) + 0.15 * sin(twopi * ph_p2) + 0.1 * fl_rnd)\n   + sm_wow * 0.005 * drift;\n\nv_eff = clamp(s_stop * (1 + wf), 0, 2);\nvc = v_eff * CR / sr;                        // tape cells per sample\n\n// ---- record head position (moving) with a head-speed limit\nif (d_head < 0) {\n\td_head = Ts2;\n}\nhs = max(head_slew, 0.05) * CR / sr;         // cells per sample\nd_head = d_head + clamp(Ts2 - d_head, -hs, hs);\nd = clamp(d_head, 16, L - 64);\n// SOS head: fixed just upstream of the slider's far end (APPROX gap 62.5 ms = 0.5 in at 8 ips)\nd_sos = clamp((s_hi + 62.5) * 0.001 * CR, d + 1, L - 32);\n\np_new = wrap(p + vc, 0, L);\nw_new = p_new + d;                           // write position (unwrapped relative to p_new)\nw_old = w_prev;\nif (first > 0.5) {\n\tw_old = w_new - vc;\n\tfirst = 0;\n}\n// keep w_old in the same unwrapped frame as w_new\nif (w_old - w_new > 0.5 * L) {\n\tw_old = w_old - L;\n} else if (w_new - w_old > 0.5 * L) {\n\tw_old = w_old + L;\n}\nu_cps = w_new - w_old;                       // head speed over tape, cells per sample\nu_out = u_cps / max(CR / sr, 0.000001);      // 1 = normal recording speed\n\n// ================= gates & per-sample coefficients ====================\nhold_s = hold_s + ck_a10 * (hold - hold_s);\ndrive_s = drive_s + ck_a10 * (drive - drive_s);\nsos_s = sos_s + ck_a10 * (sos - sos_s);\necho_on_s = echo_on_s + ck_a10 * (echo_on - echo_on_s);\necho_on_s2 = echo_on_s2 + ck_a10 * (echo_on_s - echo_on_s2);   // 2-stage: no corner at the switch\npb_s = pb_s + ck_a10 * (playback - pb_s);\ndkey = drive_s * sm_drive_db;\nif (dkey != ck_dkey) {\n\tck_dg = pow(10, dkey / 20);\n\tck_dkey = dkey;\n}\ndrive_gain = ck_dg;\nif (sm_sat != ck_sat) {\n\tck_gt = 0.6 * pow(4, 2 * (sm_sat - 0.5));  // 0.5: ~2-3 % THD at nominal level (calibration test E05: 2.1 %)\n\tck_sat = sm_sat;\n}\ng_t = ck_gt;\nif (sm_in_gain_db != ck_ing) {\n\tck_ig = pow(10, sm_in_gain_db / 20);\n\tck_ing = sm_in_gain_db;\n}\nif (sm_rec_db != ck_rkey) {\n\tck_rg = pow(10, sm_rec_db / 20);\n\tck_rkey = sm_rec_db;\n}\nif (sm_sos_db != ck_skey) {\n\tck_sg = pow(10, sm_sos_db / 20);\n\tck_skey = sm_sos_db;\n}\nif (sm_noise_db != ck_nkey) {\n\tck_ng = (sm_noise_db > -119) ? pow(10, sm_noise_db / 20) / ck_nnorm : 0;\n\tck_nkey = sm_noise_db;\n}\n// F1/F2 (v0.1.1): scale by the chain's peak loop gain instead of assuming it is 1.\n// Sustain: x (pk3 / pk) keeps the 3 nF behaviour exactly (factor 1.0) and gives 33 nF the\n// same peak loop gain (same runaway point). HOLD: / pk makes the per-pass peak gain equal to\n// Hold Feedback, so 1.0 holds the loop instead of growing.\nif (ck_pk3 < 0) {\n\tck_pk3 = loop_peak(2947);\n\tck_pk33 = loop_peak(268);\n}\npbs = psmooth(pb_eq, ck_ps);                 // F4: de-emphasis switch is crossfaded (10 ms)\npk_loop = (1 - pbs) * ck_pk3 + pbs * ck_pk33;\nfb_amt = (sm_sustain * 1.25) * (ck_pk3 / pk_loop) * (1 - hold_s) + (sm_hold_fb / pk_loop) * hold_c * hold_s;\nfb_amt = fb_amt * (1 - sos_s);               // ECHO/SUSTAIN not operative in SOS [S1]\nq_fb = 0.707 + sm_fb_res * 6;\ndfb_g = (drive_fb > 0.5) ? drive_gain : 1;\n\n// ================= Q5 FET INPUT STAGE (always in circuit) =============\nfkey = pre_bypass * 7 + sr;\nif (fkey != ck_fkey) {\n\t// quiescent point (no signal): source cap fully charged, so cdt = 0\n\tqi, qv = fet_step(0, 0, 0, RS, IDSS, VP);\n\tck_idq = qi;\n\tck_vsq = qv;\n\tck_fkey = fkey;\n\tif (vs_state < 0) {\n\t\tvs_state = qv;\n\t}\n}\nsm_pre = psmooth(pre_bypass, ck_ps);         // F4 (v0.1.1): source cap switched over 10 ms\ncdt = CS * sr * sm_pre;\nvg = lp1(x, 15915) * VPF * ck_ig;            // input RF filter: 100k series, 100 pF to ground [S14]\nid_n, vs_n = fet_step(vg, vs_state, cdt, RS, IDSS, VP);\nvs_state = fixdenorm(vs_n);\n// drain cannot fall below the source (+0.3 V): limits large positive swings\nid_c = min(id_n, (VDD - vs_n - 0.3) / RD);\nvac = (id_c - ck_idq) * RD;                  // drain AC (V); sign flipped so the device is non-inverting\npre = vac / VPF;                             // back to full-scale units (EP-3 gain kept)\n// output mixer coefficients (recomputed only when Echo Volume moves)\nif (sm_echo != ck_kkey) {\n\tgd, ge, rt = mixer(sm_echo);\n\tgd5, ge5, rt5 = mixer(0.5);\n\tck_gd = gd;\n\tck_ge = ge;\n\tck_rth = rt;\n\tck_en = gd5 / ge5;                       // echo source level: first repeat ~ dry level at k = 0.5 (APPROX)\n\tck_kkey = sm_echo;\n}\ndry_br = hp1(pre, 7) * ck_gd * sm_dry;       // 0.1 uF coupling into ~260k: ~7 Hz\n\n// ================= ECHO HEAD READ (fixed) =============================\nri = floor(p_new);\nrf = p_new - ri;\ni0 = wrap(ri, 0, L);\nim1 = wrap(i0 - 1, 0, L);\nip1 = wrap(i0 + 1, 0, L);\nip2 = wrap(i0 + 2, 0, L);\nm0 = peek(tape, im1, 0);\nc0 = peek(tape, i0, 0);\nn0 = peek(tape, ip1, 0);\nq0 = peek(tape, ip2, 0);\ny_echo = hermite(m0, c0, n0, q0, rf);\n// SOS head (monitors the loop before it reaches the record head)\nrs_pos = p_new + d_sos;\nrsi = floor(rs_pos);\nrsf = rs_pos - rsi;\nj0 = wrap(rsi, 0, L);\njm1 = wrap(j0 - 1, 0, L);\njp1 = wrap(j0 + 1, 0, L);\njp2 = wrap(j0 + 2, 0, L);\nsm0 = peek(tape, jm1, 0);\nsc0 = peek(tape, j0, 0);\nsn0 = peek(tape, jp1, 0);\nsq0 = peek(tape, jp2, 0);\ny_sos = hermite(sm0, sc0, sn0, sq0, rsf);\n\n// ================= PLAYBACK CHAIN =====================================\ngp = min(1, v_eff / 0.15);                   // head output falls away as the tape stops\nfc_tape = clamp(5188 * v_eff, 50, 0.45 * sr); // tape HF loss: H&H fit (7782 Hz @ 12 ips) x 8/12  APPROX\nyraw = y_echo * (1 - sos_s) + y_sos * sos_s; // SOS: you hear the SOS head [S1]\ntl, tb_, th = svf(yraw * gp, fc_tape, 0.707);\n// de-emphasis: 18k with 0.003 uF (forum, 2947 Hz) / 0.033 uF (manual scan, 268 Hz); both run and\n// are crossfaded (F4). Each is normalised at 1 kHz so both give the same mid level.\ny3 = lp1(tl, 2947);\ny33 = lp1(tl, 268);\nypb = (y3 * sqrt(1 + (1000 / 2947) * (1000 / 2947))) * (1 - pbs) + (y33 * sqrt(1 + (1000 / 268) * (1000 / 268))) * pbs;\nypb = ypb * lg;                              // F6 fade\nypb = hp1(ypb, 30);                          // head-amp coupling APPROX\nypb = ypb + lp1(noise(), 10000) * ck_ng;\n// F1 (v0.1.1): HOLD level trim. A fixed loop gain cannot freeze a loop: tape saturation\n// compresses slightly at playing level and frequencies off the loop's peak decay. While HOLD\n// is on, the playback power is compared with a target, and the hold gain is trimmed by at most\n// +-3 % per pass. Settling: after HOLD is pressed the target may only fall (the loop darkens\n// naturally but never grows) until the loop stops losing level (< 1 dB over a pass, at least\n// 2 passes; at most 30 s); then it is locked and changes by Hold Feedback^2 per pass\n// (1.0 = frozen), never sitting more than 1.5 dB above the loop's own level. Outside HOLD hold_c = 1 and nothing changes.\nhp_env = fixdenorm(hp_env + (1 - exp(-1 / (0.3 * sr))) * (ypb * ypb - hp_env));\ndsamp = max(d / max(vc, 0.000001), 1);\nif (hold > 0.5 && hold_prev < 0.5) {\n\thold_tgt = hp_env;\n\thold_cnt = 30 * sr;                          // settling time limit (dark voicing needs the longest)\n\thold_pass = dsamp + 0.3 * sr;                 // first check after one pass + envelope settle\n\thold_np = 0;\n\thold_elast = hp_env;\n}\nhold_prev = hold;\nif (hold > 0.5) {\n\tif (hold_cnt > 0) {\n\t\thold_tgt = min(hold_tgt, hp_env);\n\t\thold_cnt = hold_cnt - 1;\n\t\thold_pass = hold_pass - 1;\n\t\tif (hold_pass <= 0) {\n\t\t\thold_np = hold_np + 1;\n\t\t\tif (hold_np >= 2 && hp_env > 0.794 * hold_elast) {\n\t\t\t\thold_cnt = 0;                    // lost < 1 dB over the last pass: lock\n\t\t\t}\n\t\t\thold_elast = hp_env;\n\t\t\thold_pass = dsamp;\n\t\t}\n\t\tcc = (hold_tgt > 0.0000000001) ? clamp(sqrt(hold_tgt / max(hp_env, 0.00000000000000000001)), 0.97, 1) : 0.97;\n\t} else {\n\t\thold_tgt = fixdenorm(hold_tgt * exp(2 * log(max(sm_hold_fb, 0.01)) / dsamp));\n\t\t// a shortfall beyond 1.5 dB is spectral loss (e.g. the dark voicing shedding its mids), not\n\t\t// saturation: let the target follow, so the trim never pumps the loop back up by more than 1.5 dB\n\t\thold_tgt = min(hold_tgt, hp_env * 1.413);\n\t\tcc = (hold_tgt > 0.0000000001) ? clamp(sqrt(hold_tgt / max(hp_env, 0.00000000000000000001)), 0.97, 1.03) : 0.97;\n\t}\n\thold_c = hold_c + (1 - exp(-1 / (0.2 * sr))) * (cc - hold_c);\n} else {\n\thold_c = hold_c + (1 - exp(-1 / (0.2 * sr))) * (1 - hold_c);\n}\n// Echo Sustain feedback, with the Echolivity feedback filters\nf1l, f1b, f1h = svf(ypb, sm_fb_hp_hz, q_fb);\nf2l, f2b, f2h = svf(f1h, sm_fb_lp_hz, q_fb);\nguard = (env > 1.5) ? 1.5 / env : 1;\nfbs = f2l * fb_amt * guard * dfb_g;\nenv = fixdenorm(env + ((abs(f2l * fb_amt) > env) ? ck_up : ck_dn) * (abs(f2l * fb_amt) - env));\n\n// ================= RECORD CHAIN =======================================\nu = pre * ck_rg * drive_gain * (1 - hold_s) + fbs;\nu = hp1(u, 20);\nu = tapesat(u * g_t * drive_gain, 0.05) / g_t;\nu = dc_block(u);\n// write anti-alias: the head's speed over the tape sets the tape's sample spacing\n// spatial Nyquist: a frequency f lands at f / (|u_cps| sr) cycles per cell, which must stay < 0.5\n// 4th-order Butterworth at 0.35 sr |u|: everything that plays back below 0.35 sr (16.8 kHz @ 48k)\n// is kept; what would land above Nyquist is >= 40 dB down before the head samples it (test E03)\nfc_w = clamp(0.35 * sr * abs(u_cps), 20, 0.45 * sr);\nrl1, rb1, rh1 = svf(u, fc_w, 0.5412);\nrl, rb, rh = svf(rl1, fc_w, 1.3066);\nrec = fixnan(rl);\n\n// ================= RECORD/ERASE HEAD: fill every cell crossed =========\n// ECHO: erase + record (overwrite). SOS: erase off, new is added to the old\n// layer, which loses sos_db per pass. PLAYBACK: record and erase off.\nwr_gain = 1 - pb_s;\nsp_bias = sm_bias_khz * 1000 / (max(abs(u_cps), 0.000001) * sr);  // bias cycles per tape cell\nbias_amp = 0;\nif (sp_bias < FBIAS_MIN_SP) {\n\tbias_amp = sm_bias_leak * 0.1 * min(1, (FBIAS_MIN_SP - sp_bias) / 0.1);   // level APPROX\n}\nif (wr_gain > 0.0001 && abs(u_cps) > 0.000001) {\n\tklo = (u_cps > 0) ? floor(w_old) + 1 : -floor(-w_new);      // -floor(-x) = ceil(x)\n\tkhi = (u_cps > 0) ? floor(w_new) : -floor(-w_old) - 1;\n\tfor (k = klo; k <= khi; k += 1) {\n\t\tfq = (k - w_old) / u_cps;\n\t\tki = wrap(k, 0, L);\n\t\tval = rec_prev + fq * (rec - rec_prev);\n\t\tif (bias_amp > 0) {\n\t\t\tval = val + bias_amp * sin(twopi * sm_bias_khz * 1000 * ((t - 1 + fq) / sr));\n\t\t}\n\t\told = peek(tape, ki, 0);\n\t\tkeep = sos_s * ck_sg;                            // SOS keeps the old layer\n\t\tnv = old * (1 - wr_gain) + wr_gain * (old * keep + val);\n\t\tpoke(tape, nv, ki, 0);\n\t}\n}\nrec_prev = rec;\nw_prev = w_new;\np = p_new;\n\n// ================= OUTPUT =============================================\ne1l, e1b, e1h = svf(ypb, sm_echo_hp_hz, 0.707);\ne2l, e2b, e2h = svf(e1h, sm_echo_lp_hz, 0.707);\nech = dc_block(e2l) * echo_on_s2;\nif (sm_out_db != ck_okey) {\n\tck_og = pow(10, sm_out_db / 20);\n\tck_okey = sm_out_db;\n}\nif (sm_echo_trim_db != ck_etkey) {\n\tck_et = pow(10, sm_echo_trim_db / 20);\n\tck_etkey = sm_echo_trim_db;\n}\no_mix = dry_br + ech * ck_en * ck_ge * ck_et;\n// F4 (v0.1.1): the cable filter always runs (no stale state); below 1 pF it is blended out\no_lp = lp1(o_mix, 1 / (twopi * ck_rth * max(sm_cable_pf, 1) * 0.000000000001));\nif (sm_cable_pf >= 1) {\n\to_mix = o_lp;\n} else if (sm_cable_pf > 0) {\n\to_mix = o_mix + sm_cable_pf * (o_lp - o_mix);\n}\no1 = fixnan(o_mix * ck_og);\no2 = o1;\n\n// ================= OUTPUT PROTECTION (as the H&H device) =================\nif (ceiling_db != ck_ckey) {\n\tck_cl = pow(10, ceiling_db / 20);\n\tck_ckey = ceiling_db;\n}\nc_lin = ck_cl;\nthr = c_lin * 0.944061;\npk = abs(o1);\nover = (pk > thr) ? 1 : 0;\npg = 1;\nif (protect > 0.5) {\n\tgreq = (pk > thr) ? thr / pk : 1;\n\tif (greq < pg_hold) {\n\t\tpg_hold = greq;\n\t\tph_cnt = 0.010 * sr;\n\t} else if (ph_cnt > 0) {\n\t\tph_cnt = ph_cnt - 1;\n\t} else {\n\t\tpg_hold = pg_hold + ck_prel * (1 - pg_hold);\n\t}\n\tif (pg_hold < pg_s) {\n\t\tpg_s = pg_s + ck_patt * (pg_hold - pg_s);\n\t} else {\n\t\tpg_s = pg_hold;\n\t}\n\tpg = pg_s;\n\to1 = softclip(o1 * pg, thr, c_lin);\n\to2 = o1;\n} else {\n\tpg_hold = 1;\n\tpg_s = 1;\n\tph_cnt = 0;\n}\n\nout1 = o1;\nout2 = o2;\nout3 = (d / max(vc, 0.000000001)) / sr * 1000;\nout4 = tap_bpm;\nout5 = u_out;\nout6 = v_eff;\nout7 = pg;\nout8 = over;\n",
         "fontface": 0,
         "fontname": "<Monospaced>",
         "fontsize": 11.0,
         "numinlets": 2,
         "numoutlets": 8,
         "outlettype": [
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          ""
         ],
         "patching_rect": [
          20,
          60,
          900,
          700
         ]
        }
       },
       {
        "box": {
         "id": "g-in1",
         "maxclass": "newobj",
         "text": "in 1",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          20,
          20,
          30,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-in2",
         "maxclass": "newobj",
         "text": "in 2",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          880,
          20,
          30,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out1",
         "maxclass": "newobj",
         "text": "out 1",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out2",
         "maxclass": "newobj",
         "text": "out 2",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          140,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out3",
         "maxclass": "newobj",
         "text": "out 3",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          260,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out4",
         "maxclass": "newobj",
         "text": "out 4",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          380,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out5",
         "maxclass": "newobj",
         "text": "out 5",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          500,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out6",
         "maxclass": "newobj",
         "text": "out 6",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          620,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out7",
         "maxclass": "newobj",
         "text": "out 7",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          740,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out8",
         "maxclass": "newobj",
         "text": "out 8",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          860,
          780,
          40,
          22
         ]
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "g-in1",
          0
         ],
         "destination": [
          "g-code",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-in2",
          0
         ],
         "destination": [
          "g-code",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          0
         ],
         "destination": [
          "g-out1",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          1
         ],
         "destination": [
          "g-out2",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          2
         ],
         "destination": [
          "g-out3",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          3
         ],
         "destination": [
          "g-out4",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          4
         ],
         "destination": [
          "g-out5",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          5
         ],
         "destination": [
          "g-out6",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          6
         ],
         "destination": [
          "g-out7",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          7
         ],
         "destination": [
          "g-out8",
          0
         ]
        }
       }
      ]
     }
    }
   },
   {
    "box": {
     "id": "obj-66",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      920,
      450,
      130,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "text": "record~ out_GOLD4_oscillation_short 1"
    }
   },
   {
    "box": {
     "id": "obj-67",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1070,
      346,
      80,
      22
     ],
     "outlettype": [
      "bang"
     ],
     "text": "delay 6300"
    }
   },
   {
    "box": {
     "id": "obj-68",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1070,
      376,
      40,
      22
     ],
     "outlettype": [
      "bang",
      "bang"
     ],
     "text": "t b b"
    }
   },
   {
    "box": {
     "id": "obj-69",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1070,
      406,
      30,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "0"
    }
   },
   {
    "box": {
     "id": "obj-70",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1070,
      480,
      250,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "writewave out_GOLD4_oscillation_short_max.wav"
    }
   },
   {
    "box": {
     "id": "obj-71",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      920,
      510,
      290,
      20
     ],
     "text": "\u2192 writes out_GOLD4_oscillation_short_max.wav",
     "fontsize": 10.0
    }
   },
   {
    "box": {
     "id": "obj-72",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1220,
      180,
      290,
      20
     ],
     "text": "GOLD5_voice_late_cable0 \u2014 tier A (sample-exact), 4 s",
     "fontsize": 10.5
    }
   },
   {
    "box": {
     "id": "obj-73",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1220,
      204,
      290,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "noise_db -120, wow 0, flutter 0, sustain 0.4, pre_bypass 0, cable_pf 0, echo 0.8"
    }
   },
   {
    "box": {
     "id": "obj-74",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1220,
      232,
      230,
      22
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ in_GOLD5_voice_late_cable0 in_GOLD5_voice_late_cable0.wav"
    }
   },
   {
    "box": {
     "id": "obj-75",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1220,
      256,
      230,
      22
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ out_GOLD5_voice_late_cable0 4600 1"
    }
   },
   {
    "box": {
     "id": "obj-76",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      1220,
      284,
      140,
      26
     ],
     "outlettype": [
      "",
      "",
      "int"
     ],
     "text": "RUN GOLD5"
    }
   },
   {
    "box": {
     "id": "obj-77",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      1220,
      318,
      60,
      22
     ],
     "outlettype": [
      "bang",
      "bang",
      "bang"
     ],
     "text": "t b b b"
    }
   },
   {
    "box": {
     "id": "obj-78",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1290,
      346,
      30,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "1"
    }
   },
   {
    "box": {
     "id": "obj-79",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1220,
      346,
      40,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "start"
    }
   },
   {
    "box": {
     "id": "obj-80",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1220,
      376,
      120,
      22
     ],
     "outlettype": [
      "signal",
      "bang"
     ],
     "text": "play~ in_GOLD5_voice_late_cable0 1"
    }
   },
   {
    "box": {
     "id": "obj-81",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      1220,
      412,
      120,
      22
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "text": "gen~",
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 0,
       "revision": 0,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "dsp.gen",
      "rect": [
       50,
       50,
       960,
       840
      ],
      "boxes": [
       {
        "box": {
         "id": "g-code",
         "maxclass": "codebox",
         "code": "// FALLBACK NAMES BUILD (not a release): identical engine with locals that share Gen operator names renamed\n// (s->st_s, f->fq, i->ii, gtp->g_tp, r->rdp). Use only if gen~ reports an error on one of those names.\n// =====================================================================\n// ECHOLIVITY \u2014 EP-3 (Maestro Echoplex EP-3 model) \u00b7 tape engine v0.1.2-dev\n// v0.1.2-dev: identifiers renamed that collide with gen~ built-ins (dcblock -> dc_block,\n// lt -> l_t); no functional change (bit-identical, test R06/X01).\n// v0.1.1-dev remediation (see CHANGELOG / validation/EP3_REMEDIATION_REPORT.md): F1 HOLD loop gain,\n// F2 33 nF feedback runaway, F3 8 s default loop, F4 click-free DE-EMPH / Cable / Source-cap\n// changes, F6 loop-length change fade.\n// gen~ codebox. Status of every value: docs/EP3_MODELING_NOTES.md\n//\n// Signal flow (EP-3 manual, Maestro owner/service manual [S1]):\n//   input -> Q5 FET stage (TIS58, 22k drain, 3.3k source, 0.022 uF source\n//   bypass = pre-emphasis) -> dry out (high output Z into cable C)\n//                           -> record level -> record amp -> RECORD/ERASE HEAD\n//   (moving, on the slider) -> tape (8 ips, ~75 ft loop) -> fixed ECHO head\n//   -> head amp + de-emphasis -> Echo Sustain (feedback) / Echo Volume (blend\n//   pot in the passive output mixer, wiper grounded) -> output (high Z, into the cable)\n//   SOS: SOS head (upstream of the record head) monitors the loop; erase off,\n//   new material is added to the old layer (-1 dB per pass, manual alignment).\n//\n// The record head moves, so a slider move changes how sound is WRITTEN on the\n// tape (pitch change heard one delay later). The write is band-limited (pre-\n// write low-pass that follows the head's speed over the tape, after\n// Arnardottir/Abel/Smith 2008) and fills every tape cell the head crosses.\n//\n// Tape buffer: fixed 48 000 cells per second of tape at nominal speed, so the\n// 112.5 s loop costs the same memory at any sample rate.\n// Level convention: 100 mV == -18 dBFS RMS (same as the H&H device).\n// Mono like the original: L+R are summed at the input; out1 == out2.\n//\n// out1/out2: audio   out3: delay (ms)   out4: tap BPM\n// out5: record-head write speed over tape (1 = normal)   out6: tape speed\n// out7: output-protection gain   out8: output over flag\n// =====================================================================\n\n// ---------- stateful helpers (each call site gets its own state) ------\nsvf(x, fc, q) {\n\tHistory s1(0);\n\tHistory s2(0);\n\tHistory key_fc(-1);\n\tHistory key_q(-1);\n\tHistory key_sr(-1);\n\tHistory c_k(0);\n\tHistory c_a1(0);\n\tHistory c_a2(0);\n\tHistory c_a3(0);\n\tif (fc != key_fc || q != key_q || samplerate != key_sr) {\n\t\tfcc = clamp(fc, 5, samplerate * 0.49);\n\t\tg = tan(pi * fcc / samplerate);\n\t\tc_k = 1 / q;\n\t\tc_a1 = 1 / (1 + g * (g + c_k));\n\t\tc_a2 = g * c_a1;\n\t\tc_a3 = g * c_a2;\n\t\tkey_fc = fc;\n\t\tkey_q = q;\n\t\tkey_sr = samplerate;\n\t}\n\tv3 = x - s2;\n\tv1 = c_a1 * s1 + c_a2 * v3;\n\tv2 = s2 + c_a2 * s1 + c_a3 * v3;\n\ts1 = fixdenorm(2 * v1 - s1);\n\ts2 = fixdenorm(2 * v2 - s2);\n\treturn v2, v1, x - c_k * v1 - v2;\n}\n\nlp1(x, fc) {\n\tHistory z(0);\n\tHistory key_fc(-1);\n\tHistory key_sr(-1);\n\tHistory c_a(0);\n\tif (fc != key_fc || samplerate != key_sr) {\n\t\tc_a = 1 - exp(-twopi * min(fc, samplerate * 0.49) / samplerate);\n\t\tkey_fc = fc;\n\t\tkey_sr = samplerate;\n\t}\n\tz = fixdenorm(z + c_a * (x - z));\n\treturn z;\n}\n\nhp1(x, fc) {\n\treturn x - lp1(x, fc);\n}\n\ndc_block(x) {\n\tHistory x1(0);\n\tHistory y1(0);\n\tR = 1 - twopi * 10 / samplerate;\n\ty = fixdenorm(x - x1 + R * y1);\n\tx1 = x;\n\ty1 = y;\n\treturn y;\n}\n\nhermite(xm1, x0, x1, x2, fq) {\n\tc1 = 0.5 * (x1 - xm1);\n\tc2 = xm1 - 2.5 * x0 + 2 * x1 - 0.5 * x2;\n\tc3 = 0.5 * (x2 - xm1) + 1.5 * (x0 - x1);\n\treturn ((c3 * fq + c2) * fq + c1) * fq + x0;\n}\n\nsoftclip(x, k, c) {\n\tax = abs(x);\n\ty = x;\n\tif (ax > k) {\n\t\tsg = (x >= 0) ? 1 : -1;\n\t\ty = sg * (k + (c - k) * tanh((ax - k) / (c - k)));\n\t}\n\treturn y;\n}\n\ntapesat(x, b) {\n\tHistory key_b(-99999);\n\tHistory c_tb(0);\n\tif (b != key_b) {\n\t\tc_tb = tanh(b);\n\t\tkey_b = b;\n\t}\n\ttb = c_tb;\n\treturn (tanh(x + b) - tb) / (1 - tb * tb);\n}\n\npsmooth(t, a) {\n\tHistory st_s(0);\n\tHistory init(0);\n\tif (init < 0.5) {\n\t\tst_s = t;\n\t\tinit = 1;\n\t}\n\tst_s = st_s + a * (t - st_s);\n\tif (abs(t - st_s) <= 0.000000001 * max(1, abs(t))) {\n\t\tst_s = t;\n\t}\n\treturn st_s;\n}\n\nfsmooth(fq, a) {\n\tHistory ls(0);\n\tHistory init(0);\n\tl_t = log(fq);\n\tif (init < 0.5) {\n\t\tls = l_t;\n\t\tinit = 1;\n\t}\n\tls = ls + a * (l_t - ls);\n\tif (abs(l_t - ls) <= 0.000000001) {\n\t\tls = l_t;\n\t}\n\treturn (ls == l_t) ? fq : exp(ls);\n}\n\n// JFET drain current, square law: Id = Idss (1 - Vgs/Vp)^2 for Vp < Vgs, else 0.\n// Vgs above +0.4 V is held there (gate-source diode conducts).\n// Source node: Rs in parallel with Cs (Cs = 0 when the bypass cap is out).\n// Backward-Euler step for the source node, solved in closed form:\n//   (Cs/dt + 1/Rs) Vs - (Cs/dt) Vs0 = Id(vg - Vs)\n// Returns (Id, Vs).\nfet_step(vg, vs0, cdt, rs, idss, vp) {\n\ta = cdt + 1 / rs;\n\tb = cdt * vs0;\n\tvgc = min(vg, 0.4 + vs0);\n\t// w = 1 - Vgs/Vp; Vs = Vp w - Vp + vg  ->  idss w^2 - a Vp w + (a Vp - a vg + b) = 0\n\tqa = idss;\n\tqb = -a * vp;\n\tqc = a * vp - a * vgc + b;\n\tdisc = qb * qb - 4 * qa * qc;\n\tidq = 0;\n\tvsq = b / a;                                  // cut-off: no drain current\n\tif (disc >= 0) {\n\t\tw = (-qb + sqrt(disc)) / (2 * qa);\n\t\tif (w > 0) {\n\t\t\tidq = idss * w * w;\n\t\t\tvsq = vp * w - vp + vgc;\n\t\t}\n\t}\n\treturn idq, vsq;\n}\n\n// Passive output mixer (EP-3; values from replica/forum traces [S11][S13]-[S15], APPROX until a\n// clean schematic): drain -0.1uF- A; A -470k- gnd; A -220k- B; B = Echo Volume lug 1;\n// B -100k- OUT. Echo amp -220k- E; E -100k- gnd; E = pot lug 3; E -100k- OUT.\n// The 500k pot's WIPER IS GROUNDED: k = 0 shorts the echo lug, k = 1 shorts the dry lug,\n// so Echo Volume is a blend and the dry level peaks near k = 0.2 (non-monotonic).\n// OUT drives the amp (1M) and the cable capacitance. Returns dry gain, echo gain and the\n// Thevenin resistance at OUT (which, with the cable C, sets the treble roll-off).\nmixer(k) {\n\trp3 = clamp(k, 0, 1) * 500000;\n\trp1 = 500000 - rp3;\n\tra = 22000 * 470000 / 492000;\n\tvbf = (470000 / 492000) * rp1 / (ra + 220000 + rp1);\n\trdb = (ra + 220000) * rp1 / (ra + 220000 + rp1) + 100000;\n\trsh = rp3 * 100000 / (rp3 + 100000);\n\tvef = rsh / (220000 + rsh);\n\treb = 220000 * rsh / (220000 + rsh) + 100000;\n\tgsum = 1 / rdb + 1 / reb + 0.000001;\n\treturn vbf / rdb / gsum, vef / reb / gsum, 1 / gsum;\n}\n\n// F1/F2 (v0.1.1): peak gain of the fixed playback/record loop chain for a de-emphasis corner fde:\n// tape HF loss (2-pole, 5188 Hz) x de-emphasis (1-pole fde, normalised to 1 at 1 kHz)\n// x couplings (30, 20, 10 Hz high-passes). The 1 kHz normalisation lifts the chain above 1 below\n// 1 kHz: peak 1.043 (334 Hz) for 3 nF and 3.383 (102 Hz) for 33 nF, matching measured per-pass\n// gains of 1.040 / 3.369 (validation/EP3_REMEDIATION_REPORT.md). Grid search, 20 Hz\u20134 kHz.\nloop_peak(fde) {\n\tnrm = sqrt(1 + (1000 / fde) * (1000 / fde));\n\tpk = 0;\n\tfor (ii = 0; ii < 96; ii += 1) {\n\t\tfq = 20 * pow(200, ii / 95);\n\t\tg_tp = 1 / sqrt(1 + pow(fq / 5188, 4));\n\t\tgd = nrm / sqrt(1 + (fq / fde) * (fq / fde));\n\t\tg30 = (fq / 30) / sqrt(1 + (fq / 30) * (fq / 30));\n\t\tg20 = (fq / 20) / sqrt(1 + (fq / 20) * (fq / 20));\n\t\tg10 = (fq / 10) / sqrt(1 + (fq / 10) * (fq / 10));\n\t\tpk = max(pk, g_tp * gd * g30 * g20 * g10);\n\t}\n\treturn pk;\n}\n\n// ---------- tape ------------------------------------------------------\n// 112.5 s * 48 000 cells/s (+ margin)\nData tape(5400064, 1);\n\n// ---------- parameters ------------------------------------------------\nParam in_gain_db(0, min=-36, max=12);\nParam dry(1, min=0, max=1);                  // Echolivity trim on the dry branch (1 = original)\nParam echo(0.5, min=0, max=1);               // ECHO VOLUME: the 500k blend pot (wiper grounded)\nParam echo_trim_db(0, min=-24, max=12);      // Echolivity trim on the echo branch\nParam out_db(0, min=-36, max=12);\nParam mode(2, min=0, max=2);\nParam bpm(120, min=20, max=999);\nParam sync_div(2, min=0, max=5);\nParam sync_type(0, min=0, max=2);\nParam sync_mult(1, min=1, max=8);\nParam offset_ms(0, min=-100, max=100);\nParam tap(0, min=0, max=1000000);\nParam tap_div(3, min=0, max=5);\nParam tap_type(0, min=0, max=2);\nParam bar_beats(4, min=1, max=16);\n// ECHO DELAY slider: delay is linear in head position at constant tape speed.\n// 60\u2013600 ms default = DAFX/CCRMA measured range [S3]; 80\u2013800 per [S4].\nParam slider_pos(0.5, min=0, max=1);\nParam slider_min_ms(60, min=2, max=2000);\nParam slider_max_ms(600, min=2, max=4000);\nParam glide_ms(40, min=1, max=2000);\nParam transition_ms(250, min=1, max=4000);\nParam head_slew(4, min=0.05, max=12);        // max head speed, in delay-seconds per second (APPROX)\n// EP-3 front panel / internal\nParam sustain(0.4, min=0, max=1);            // ECHO SUSTAIN (500k lin [S12]); runs away from 0.8 (test E14)\nParam rec_db(0, min=-12, max=12);            // RECORD LEVEL trimmer (internal on the original)\nParam sos(0, min=0, max=1);                  // ECHO / SOUND ON SOUND switch\nParam sos_db(-1, min=-6, max=0);             // SOS loss per pass; manual alignment: \"approximately 1dB\"\nParam echo_on(1, min=0, max=1);              // footswitch: echo on/off\nParam playback(0, min=0, max=1);             // footswitch: playback (record + erase off)\nParam pre_bypass(1, min=0, max=1);           // Q5 source bypass 0.022 uF (manual addendum) in/out\nParam cable_pf(470, min=0, max=2000);        // cable + amp input capacitance; 470 pF fits ClinchFX's descriptions (test E07)\nParam pb_eq(0, min=0, max=1);                // de-emphasis: 0 = 18k/0.003uF (forum), 1 = 18k/0.033uF (manual scan)\nParam bias_khz(100, min=40, max=120);        // \"approximate frequency of 100 KC\" [S1]\nParam bias_leak(0.3, min=0, max=1);          // bias heard on very fast slider moves (APPROX level)\nParam loop_s(8, min=1, max=112.5);           // F3 (v0.1.1): default 8 s for usable SOS/PLAYBACK; 112.5 s = ~75 ft at 8 ips [S18] (authentic)\n// tape character (Echolivity)\nParam sat(0.5, min=0, max=1);\nParam noise_db(-60, min=-120, max=-30);\nParam wow(0.1, min=0, max=1);                // slow drift\nParam flutter(0.25, min=0, max=1);           // 0.5 stays within the 0.3 % spec (E10: 0.256 %); capstan 26 Hz, pinch 2.5/5 Hz\n// performance (Echolivity)\nParam hold(0, min=0, max=1);\nParam hold_fb(1, min=0.9, max=1.05);\nParam drive(0, min=0, max=1);\nParam drive_db(12, min=0, max=24);\nParam drive_fb(0, min=0, max=1);\nParam tape_stop(0, min=0, max=1);\nParam stop_time(1, min=0.05, max=8);\nParam start_time(0.4, min=0.05, max=8);\nParam fb_hp_hz(10, min=10, max=2000);\nParam fb_lp_hz(20000, min=500, max=20000);\nParam fb_res(0, min=0, max=1);\nParam echo_hp_hz(10, min=10, max=2000);\nParam echo_lp_hz(20000, min=500, max=20000);\nParam protect(1, min=0, max=1);\nParam ceiling_db(-0.3, min=-12, max=0);\n\n// ---------- state -----------------------------------------------------\nHistory p(0);\nHistory d_head(-1);\nHistory Ts1(-1);\nHistory Ts2(-1);\nHistory w_prev(0);\nHistory rec_prev(0);\nHistory first(1);\nHistory s_stop(1);\nHistory hold_s(0);\nHistory drive_s(0);\nHistory sos_s(0);\nHistory echo_on_s(1);\nHistory echo_on_s2(1);\nHistory pb_s(0);\nHistory env(0);\nHistory prev_mode(-1);\nHistory trans_left(0);\nHistory nsamp(0);\nHistory tap_prev(0);\nHistory last_tap(-1);\nHistory t_count(0);\nHistory ti0(0);\nHistory ti1(0);\nHistory ti2(0);\nHistory ti3(0);\nHistory tap_bpm(120);\nHistory ph_cap(0);\nHistory ph_p1(0);\nHistory ph_p2(0);\nHistory drift(0);\nHistory fl_rnd(0);\nHistory last_sr(0);\nHistory vs_state(-1);\nHistory pg_hold(1);\nHistory pg_s(1);\nHistory ph_cnt(0);\nHistory u_out(1);\nHistory ck_pk3(-1);\nHistory ck_pk33(-1);\nHistory L_cur(-1);\nHistory hp_env(0);\nHistory hold_tgt(0);\nHistory hold_c(1);\nHistory hold_prev(0);\nHistory hold_cnt(0);\nHistory hold_pass(0);\nHistory hold_np(0);\nHistory hold_elast(0);\nHistory lg(1);\nHistory lg1(1);\nHistory lg_t(1);\nHistory lg_hold(0);\n// cached coefficients\nHistory ck_sr(-1);\nHistory ck_ps(0);\nHistory ck_a10(0);\nHistory ck_drift(0);\nHistory ck_flr(0);\nHistory ck_nnorm(1);\nHistory ck_up(0);\nHistory ck_dn(0);\nHistory ck_prel(0);\nHistory ck_patt(0);\nHistory ck_tau(-1);\nHistory ck_as(0);\nHistory ck_fkey(-99999);\nHistory ck_idq(0);\nHistory ck_vsq(0);\nHistory ck_dkey(-99999);\nHistory ck_dg(1);\nHistory ck_sat(-99999);\nHistory ck_gt(1);\nHistory ck_ing(-99999);\nHistory ck_ig(1);\nHistory ck_rkey(-99999);\nHistory ck_rg(1);\nHistory ck_skey(-99999);\nHistory ck_sg(0.891);\nHistory ck_nkey(-99999);\nHistory ck_ng(0);\nHistory ck_okey(-99999);\nHistory ck_kkey(-99999);\nHistory ck_gd(0.18);\nHistory ck_ge(0.13);\nHistory ck_rth(83000);\nHistory ck_en(1);\nHistory ck_etkey(-99999);\nHistory ck_et(1);\nHistory ck_og(1);\nHistory ck_ckey(-99999);\nHistory ck_cl(1);\n\nCR = 48000;                                  // tape cells per second at nominal speed\nNB = 5400064;\nVPF = 0.794;                                 // volts per full scale (100 mV = -18 dBFS RMS)\nRD = 22000;                                  // Q5 drain resistor [S1][S8]\nRS = 3300;                                   // Q5 source resistor [S1]\nCS = 0.000000022;                            // Q5 source bypass [S1 addendum]\nIDSS = 0.0034;                               // APPROX: fitted so Vs = 1.8 V at 21.2 V supply\nVP = -3.0;                                   //   (measured 1.72\u20131.88 V / 21.0\u201321.3 V on two units [S8])\nVDD = 21.2;\nFBIAS_MIN_SP = 0.45;                         // spatial Nyquist guard (cycles per tape cell)\n\nsr = samplerate;\nt = nsamp;\nnsamp = nsamp + 1;\nx = 0.5 * (fixnan(in1) + fixnan(in2));      // mono, like the original\n\nif (sr != last_sr) {\n\tif (last_sr > 0) {\n\t\tTs1 = -1;\n\t\tTs2 = -1;\n\t\td_head = -1;\n\t\tlast_tap = -1;\n\t\tt_count = 0;\n\t}\n\tlast_sr = sr;\n}\n\n// ================= TAP TEMPO (sample counter; as the H&H device) =======\nif (tap > tap_prev + 0.5) {\n\tif (last_tap >= 0) {\n\t\tiv = t - last_tap;\n\t\tif (iv < 0.15 * sr) {\n\t\t\tiv = -1;\n\t\t} else if (iv > 2 * sr) {\n\t\t\tt_count = 0;\n\t\t\tlast_tap = t;\n\t\t} else {\n\t\t\tif (t_count > 0) {\n\t\t\t\ttavg0 = (ti0 + ti1 + ti2 + ti3) / min(t_count, 4);\n\t\t\t\tif (abs(iv - tavg0) > 0.4 * tavg0) {\n\t\t\t\t\tt_count = 0;\n\t\t\t\t}\n\t\t\t}\n\t\t\tti3 = ti2;\n\t\t\tti2 = ti1;\n\t\t\tti1 = ti0;\n\t\t\tti0 = iv;\n\t\t\tif (t_count == 0) {\n\t\t\t\tti1 = 0;\n\t\t\t\tti2 = 0;\n\t\t\t\tti3 = 0;\n\t\t\t}\n\t\t\tt_count = min(t_count + 1, 4);\n\t\t\ttavg = (ti0 + ti1 + ti2 + ti3) / t_count;\n\t\t\ttap_bpm = 60 * sr / tavg;\n\t\t\tlast_tap = t;\n\t\t}\n\t} else {\n\t\tlast_tap = t;\n\t}\n}\ntap_prev = tap;\n\n// ================= TARGET DELAY TIME ==================================\ns_lo = min(slider_min_ms, slider_max_ms);\ns_hi = max(slider_min_ms, slider_max_ms);\nT = (s_lo + slider_pos * (s_hi - s_lo)) * 0.001;\nif (mode < 1.5) {\n\tuse_bpm = max(bpm, 20);\n\tdv_idx = floor(sync_div + 0.5);\n\ttyp = floor(sync_type + 0.5);\n\tif (mode >= 0.5) {\n\t\tuse_bpm = tap_bpm;\n\t\tdv_idx = floor(tap_div + 0.5);\n\t\ttyp = floor(tap_type + 0.5);\n\t}\n\tbeats = 0.125;\n\tif (dv_idx == 1) { beats = 0.25; }\n\telse if (dv_idx == 2) { beats = 0.5; }\n\telse if (dv_idx == 3) { beats = 1; }\n\telse if (dv_idx == 4) { beats = 2; }\n\telse if (dv_idx >= 5) { beats = bar_beats; }\n\tif (typ == 1) { beats = beats * 1.5; }\n\telse if (typ == 2) { beats = beats * 2 / 3; }\n\tT = 60 / use_bpm * beats * max(sync_mult, 1) + offset_ms * 0.001;\n}\nT = clamp(T, 0.002, 4);\n\n// sample-rate-dependent constants\nif (sr != ck_sr) {\n\tck_ps = 1 - exp(-1 / (0.010 * sr));\n\tck_a10 = ck_ps;\n\tck_drift = 1 - exp(-twopi * 0.5 / sr);\n\tck_flr = 1 - exp(-twopi * 20 / sr);\n\ta_n0 = 1 - exp(-twopi * min(10000, 0.49 * sr) / sr);\n\tck_nnorm = sqrt((1 / 3) * a_n0 / (2 - a_n0));\n\tck_up = 1 - exp(-1 / (0.001 * sr));\n\tck_dn = 1 - exp(-1 / (0.200 * sr));\n\tck_prel = 1 - exp(-1 / (0.150 * sr));\n\tck_patt = 1 - exp(-1 / (0.0005 * sr));\n\tck_sr = sr;\n\tck_tau = -1;\n\tck_fkey = -99999;\n\tck_nkey = -99999;\n}\n\n// smoothed continuous parameters\nsm_in_gain_db = psmooth(in_gain_db, ck_ps);\nsm_dry = psmooth(dry, ck_ps);\nsm_echo = psmooth(echo, ck_ps);\nsm_echo_trim_db = psmooth(echo_trim_db, ck_ps);\nsm_out_db = psmooth(out_db, ck_ps);\nsm_sustain = psmooth(sustain, ck_ps);\nsm_rec_db = psmooth(rec_db, ck_ps);\nsm_sos_db = psmooth(sos_db, ck_ps);\nsm_bias_leak = psmooth(bias_leak, ck_ps);\nsm_sat = psmooth(sat, ck_ps);\nsm_noise_db = psmooth(noise_db, ck_ps);\nsm_wow = psmooth(wow, ck_ps);\nsm_flutter = psmooth(flutter, ck_ps);\nsm_hold_fb = psmooth(hold_fb, ck_ps);\nsm_drive_db = psmooth(drive_db, ck_ps);\nsm_fb_res = psmooth(fb_res, ck_ps);\nsm_cable_pf = psmooth(cable_pf, ck_ps);\nsm_bias_khz = fsmooth(bias_khz, ck_ps);\nsm_fb_hp_hz = fsmooth(fb_hp_hz, ck_ps);\nsm_fb_lp_hz = fsmooth(fb_lp_hz, ck_ps);\nsm_echo_hp_hz = fsmooth(echo_hp_hz, ck_ps);\nsm_echo_lp_hz = fsmooth(echo_lp_hz, ck_ps);\n// ceiling_db is not smoothed (see H&H test P05)\n\nif (mode != prev_mode) {\n\tif (prev_mode >= 0) {\n\t\ttrans_left = transition_ms * 0.001 * sr * 3;\n\t}\n\tprev_mode = mode;\n}\ntau_ms = glide_ms;\nif (trans_left > 0) {\n\ttau_ms = max(transition_ms, glide_ms);\n\ttrans_left = trans_left - 1;\n}\nif (tau_ms != ck_tau) {\n\tck_as = 1 - exp(-1 / (max(tau_ms, 0.5) * 0.001 * sr));\n\tck_tau = tau_ms;\n}\na_s = ck_as;\nTc = T * CR;                                 // target head distance in tape cells\nif (Ts1 < 0) {\n\tTs1 = Tc;\n\tTs2 = Tc;\n}\nTs1 = Ts1 + a_s * (Tc - Ts1);\nTs2 = Ts2 + a_s * (Ts1 - Ts2);\n\n// ================= TRANSPORT ==========================================\nif (tape_stop > 0.5) {\n\ts_stop = max(0, s_stop - 1 / (max(stop_time, 0.02) * sr));\n} else {\n\ts_stop = min(1, s_stop + 1 / (max(start_time, 0.02) * sr));\n}\n// F6 (v0.1.1): a Loop Length change moves the wrap point, so the heads land on other tape.\n// Fade the playback (echo + feedback) out with a smooth 2-stage curve (3 ms stages, ~40 ms to\n// silence), apply the new length, keep it muted until freshly recorded tape reaches the echo\n// head (one delay + 5 ms: the tape between the heads still holds old material), then fade in.\nL_tgt = floor(clamp(loop_s, 1, 112.5) * CR);\nif (L_cur < 0) {\n\tL_cur = L_tgt;\n}\nlg_t = 1;\nif (L_tgt != L_cur) {\n\tlg_t = 0;\n\tif (lg < 0.0001) {\n\t\tL_cur = L_tgt;\n\t\tfirst = 1;                               // restart the write-head tracking on the new loop\n\t\tlg_hold = Ts2 * sr / CR + 0.005 * sr;    // one delay (target head distance) + 5 ms\n\t}\n}\nif (lg_hold > 0) {\n\tlg_t = 0;\n\tlg_hold = lg_hold - 1;\n}\na_lg = 1 - exp(-1 / (0.003 * sr));\nlg1 = lg1 + a_lg * (lg_t - lg1);\nlg = lg + a_lg * (lg1 - lg);\nL = L_cur;\n\n// flutter: capstan 26 Hz, pinch wheel 2.5 / 5.0 Hz (measured on an Echoplex [S5]),\n// plus a little broadband flutter and slow drift. flutter = 0.5 -> within the 0.3 % spec (E10: 0.256 % peak).\nph_cap = ph_cap + 26 / sr;\nph_cap = ph_cap - floor(ph_cap);\nph_p1 = ph_p1 + 2.5 / sr;\nph_p1 = ph_p1 - floor(ph_p1);\nph_p2 = ph_p2 + 5.0 / sr;\nph_p2 = ph_p2 - floor(ph_p2);\ndrift = drift + ck_drift * (noise() * 3 - drift);\nfl_rnd = fl_rnd + ck_flr * (noise() * 2 - fl_rnd);\nwf = sm_flutter * 0.006 * (0.45 * sin(twopi * ph_cap) + 0.3 * sin(twopi * ph_p1) + 0.15 * sin(twopi * ph_p2) + 0.1 * fl_rnd)\n   + sm_wow * 0.005 * drift;\n\nv_eff = clamp(s_stop * (1 + wf), 0, 2);\nvc = v_eff * CR / sr;                        // tape cells per sample\n\n// ---- record head position (moving) with a head-speed limit\nif (d_head < 0) {\n\td_head = Ts2;\n}\nhs = max(head_slew, 0.05) * CR / sr;         // cells per sample\nd_head = d_head + clamp(Ts2 - d_head, -hs, hs);\nd = clamp(d_head, 16, L - 64);\n// SOS head: fixed just upstream of the slider's far end (APPROX gap 62.5 ms = 0.5 in at 8 ips)\nd_sos = clamp((s_hi + 62.5) * 0.001 * CR, d + 1, L - 32);\n\np_new = wrap(p + vc, 0, L);\nw_new = p_new + d;                           // write position (unwrapped relative to p_new)\nw_old = w_prev;\nif (first > 0.5) {\n\tw_old = w_new - vc;\n\tfirst = 0;\n}\n// keep w_old in the same unwrapped frame as w_new\nif (w_old - w_new > 0.5 * L) {\n\tw_old = w_old - L;\n} else if (w_new - w_old > 0.5 * L) {\n\tw_old = w_old + L;\n}\nu_cps = w_new - w_old;                       // head speed over tape, cells per sample\nu_out = u_cps / max(CR / sr, 0.000001);      // 1 = normal recording speed\n\n// ================= gates & per-sample coefficients ====================\nhold_s = hold_s + ck_a10 * (hold - hold_s);\ndrive_s = drive_s + ck_a10 * (drive - drive_s);\nsos_s = sos_s + ck_a10 * (sos - sos_s);\necho_on_s = echo_on_s + ck_a10 * (echo_on - echo_on_s);\necho_on_s2 = echo_on_s2 + ck_a10 * (echo_on_s - echo_on_s2);   // 2-stage: no corner at the switch\npb_s = pb_s + ck_a10 * (playback - pb_s);\ndkey = drive_s * sm_drive_db;\nif (dkey != ck_dkey) {\n\tck_dg = pow(10, dkey / 20);\n\tck_dkey = dkey;\n}\ndrive_gain = ck_dg;\nif (sm_sat != ck_sat) {\n\tck_gt = 0.6 * pow(4, 2 * (sm_sat - 0.5));  // 0.5: ~2-3 % THD at nominal level (calibration test E05: 2.1 %)\n\tck_sat = sm_sat;\n}\ng_t = ck_gt;\nif (sm_in_gain_db != ck_ing) {\n\tck_ig = pow(10, sm_in_gain_db / 20);\n\tck_ing = sm_in_gain_db;\n}\nif (sm_rec_db != ck_rkey) {\n\tck_rg = pow(10, sm_rec_db / 20);\n\tck_rkey = sm_rec_db;\n}\nif (sm_sos_db != ck_skey) {\n\tck_sg = pow(10, sm_sos_db / 20);\n\tck_skey = sm_sos_db;\n}\nif (sm_noise_db != ck_nkey) {\n\tck_ng = (sm_noise_db > -119) ? pow(10, sm_noise_db / 20) / ck_nnorm : 0;\n\tck_nkey = sm_noise_db;\n}\n// F1/F2 (v0.1.1): scale by the chain's peak loop gain instead of assuming it is 1.\n// Sustain: x (pk3 / pk) keeps the 3 nF behaviour exactly (factor 1.0) and gives 33 nF the\n// same peak loop gain (same runaway point). HOLD: / pk makes the per-pass peak gain equal to\n// Hold Feedback, so 1.0 holds the loop instead of growing.\nif (ck_pk3 < 0) {\n\tck_pk3 = loop_peak(2947);\n\tck_pk33 = loop_peak(268);\n}\npbs = psmooth(pb_eq, ck_ps);                 // F4: de-emphasis switch is crossfaded (10 ms)\npk_loop = (1 - pbs) * ck_pk3 + pbs * ck_pk33;\nfb_amt = (sm_sustain * 1.25) * (ck_pk3 / pk_loop) * (1 - hold_s) + (sm_hold_fb / pk_loop) * hold_c * hold_s;\nfb_amt = fb_amt * (1 - sos_s);               // ECHO/SUSTAIN not operative in SOS [S1]\nq_fb = 0.707 + sm_fb_res * 6;\ndfb_g = (drive_fb > 0.5) ? drive_gain : 1;\n\n// ================= Q5 FET INPUT STAGE (always in circuit) =============\nfkey = pre_bypass * 7 + sr;\nif (fkey != ck_fkey) {\n\t// quiescent point (no signal): source cap fully charged, so cdt = 0\n\tqi, qv = fet_step(0, 0, 0, RS, IDSS, VP);\n\tck_idq = qi;\n\tck_vsq = qv;\n\tck_fkey = fkey;\n\tif (vs_state < 0) {\n\t\tvs_state = qv;\n\t}\n}\nsm_pre = psmooth(pre_bypass, ck_ps);         // F4 (v0.1.1): source cap switched over 10 ms\ncdt = CS * sr * sm_pre;\nvg = lp1(x, 15915) * VPF * ck_ig;            // input RF filter: 100k series, 100 pF to ground [S14]\nid_n, vs_n = fet_step(vg, vs_state, cdt, RS, IDSS, VP);\nvs_state = fixdenorm(vs_n);\n// drain cannot fall below the source (+0.3 V): limits large positive swings\nid_c = min(id_n, (VDD - vs_n - 0.3) / RD);\nvac = (id_c - ck_idq) * RD;                  // drain AC (V); sign flipped so the device is non-inverting\npre = vac / VPF;                             // back to full-scale units (EP-3 gain kept)\n// output mixer coefficients (recomputed only when Echo Volume moves)\nif (sm_echo != ck_kkey) {\n\tgd, ge, rt = mixer(sm_echo);\n\tgd5, ge5, rt5 = mixer(0.5);\n\tck_gd = gd;\n\tck_ge = ge;\n\tck_rth = rt;\n\tck_en = gd5 / ge5;                       // echo source level: first repeat ~ dry level at k = 0.5 (APPROX)\n\tck_kkey = sm_echo;\n}\ndry_br = hp1(pre, 7) * ck_gd * sm_dry;       // 0.1 uF coupling into ~260k: ~7 Hz\n\n// ================= ECHO HEAD READ (fixed) =============================\nri = floor(p_new);\nrf = p_new - ri;\ni0 = wrap(ri, 0, L);\nim1 = wrap(i0 - 1, 0, L);\nip1 = wrap(i0 + 1, 0, L);\nip2 = wrap(i0 + 2, 0, L);\nm0 = peek(tape, im1, 0);\nc0 = peek(tape, i0, 0);\nn0 = peek(tape, ip1, 0);\nq0 = peek(tape, ip2, 0);\ny_echo = hermite(m0, c0, n0, q0, rf);\n// SOS head (monitors the loop before it reaches the record head)\nrs_pos = p_new + d_sos;\nrsi = floor(rs_pos);\nrsf = rs_pos - rsi;\nj0 = wrap(rsi, 0, L);\njm1 = wrap(j0 - 1, 0, L);\njp1 = wrap(j0 + 1, 0, L);\njp2 = wrap(j0 + 2, 0, L);\nsm0 = peek(tape, jm1, 0);\nsc0 = peek(tape, j0, 0);\nsn0 = peek(tape, jp1, 0);\nsq0 = peek(tape, jp2, 0);\ny_sos = hermite(sm0, sc0, sn0, sq0, rsf);\n\n// ================= PLAYBACK CHAIN =====================================\ngp = min(1, v_eff / 0.15);                   // head output falls away as the tape stops\nfc_tape = clamp(5188 * v_eff, 50, 0.45 * sr); // tape HF loss: H&H fit (7782 Hz @ 12 ips) x 8/12  APPROX\nyraw = y_echo * (1 - sos_s) + y_sos * sos_s; // SOS: you hear the SOS head [S1]\ntl, tb_, th = svf(yraw * gp, fc_tape, 0.707);\n// de-emphasis: 18k with 0.003 uF (forum, 2947 Hz) / 0.033 uF (manual scan, 268 Hz); both run and\n// are crossfaded (F4). Each is normalised at 1 kHz so both give the same mid level.\ny3 = lp1(tl, 2947);\ny33 = lp1(tl, 268);\nypb = (y3 * sqrt(1 + (1000 / 2947) * (1000 / 2947))) * (1 - pbs) + (y33 * sqrt(1 + (1000 / 268) * (1000 / 268))) * pbs;\nypb = ypb * lg;                              // F6 fade\nypb = hp1(ypb, 30);                          // head-amp coupling APPROX\nypb = ypb + lp1(noise(), 10000) * ck_ng;\n// F1 (v0.1.1): HOLD level trim. A fixed loop gain cannot freeze a loop: tape saturation\n// compresses slightly at playing level and frequencies off the loop's peak decay. While HOLD\n// is on, the playback power is compared with a target, and the hold gain is trimmed by at most\n// +-3 % per pass. Settling: after HOLD is pressed the target may only fall (the loop darkens\n// naturally but never grows) until the loop stops losing level (< 1 dB over a pass, at least\n// 2 passes; at most 30 s); then it is locked and changes by Hold Feedback^2 per pass\n// (1.0 = frozen), never sitting more than 1.5 dB above the loop's own level. Outside HOLD hold_c = 1 and nothing changes.\nhp_env = fixdenorm(hp_env + (1 - exp(-1 / (0.3 * sr))) * (ypb * ypb - hp_env));\ndsamp = max(d / max(vc, 0.000001), 1);\nif (hold > 0.5 && hold_prev < 0.5) {\n\thold_tgt = hp_env;\n\thold_cnt = 30 * sr;                          // settling time limit (dark voicing needs the longest)\n\thold_pass = dsamp + 0.3 * sr;                 // first check after one pass + envelope settle\n\thold_np = 0;\n\thold_elast = hp_env;\n}\nhold_prev = hold;\nif (hold > 0.5) {\n\tif (hold_cnt > 0) {\n\t\thold_tgt = min(hold_tgt, hp_env);\n\t\thold_cnt = hold_cnt - 1;\n\t\thold_pass = hold_pass - 1;\n\t\tif (hold_pass <= 0) {\n\t\t\thold_np = hold_np + 1;\n\t\t\tif (hold_np >= 2 && hp_env > 0.794 * hold_elast) {\n\t\t\t\thold_cnt = 0;                    // lost < 1 dB over the last pass: lock\n\t\t\t}\n\t\t\thold_elast = hp_env;\n\t\t\thold_pass = dsamp;\n\t\t}\n\t\tcc = (hold_tgt > 0.0000000001) ? clamp(sqrt(hold_tgt / max(hp_env, 0.00000000000000000001)), 0.97, 1) : 0.97;\n\t} else {\n\t\thold_tgt = fixdenorm(hold_tgt * exp(2 * log(max(sm_hold_fb, 0.01)) / dsamp));\n\t\t// a shortfall beyond 1.5 dB is spectral loss (e.g. the dark voicing shedding its mids), not\n\t\t// saturation: let the target follow, so the trim never pumps the loop back up by more than 1.5 dB\n\t\thold_tgt = min(hold_tgt, hp_env * 1.413);\n\t\tcc = (hold_tgt > 0.0000000001) ? clamp(sqrt(hold_tgt / max(hp_env, 0.00000000000000000001)), 0.97, 1.03) : 0.97;\n\t}\n\thold_c = hold_c + (1 - exp(-1 / (0.2 * sr))) * (cc - hold_c);\n} else {\n\thold_c = hold_c + (1 - exp(-1 / (0.2 * sr))) * (1 - hold_c);\n}\n// Echo Sustain feedback, with the Echolivity feedback filters\nf1l, f1b, f1h = svf(ypb, sm_fb_hp_hz, q_fb);\nf2l, f2b, f2h = svf(f1h, sm_fb_lp_hz, q_fb);\nguard = (env > 1.5) ? 1.5 / env : 1;\nfbs = f2l * fb_amt * guard * dfb_g;\nenv = fixdenorm(env + ((abs(f2l * fb_amt) > env) ? ck_up : ck_dn) * (abs(f2l * fb_amt) - env));\n\n// ================= RECORD CHAIN =======================================\nu = pre * ck_rg * drive_gain * (1 - hold_s) + fbs;\nu = hp1(u, 20);\nu = tapesat(u * g_t * drive_gain, 0.05) / g_t;\nu = dc_block(u);\n// write anti-alias: the head's speed over the tape sets the tape's sample spacing\n// spatial Nyquist: a frequency f lands at f / (|u_cps| sr) cycles per cell, which must stay < 0.5\n// 4th-order Butterworth at 0.35 sr |u|: everything that plays back below 0.35 sr (16.8 kHz @ 48k)\n// is kept; what would land above Nyquist is >= 40 dB down before the head samples it (test E03)\nfc_w = clamp(0.35 * sr * abs(u_cps), 20, 0.45 * sr);\nrl1, rb1, rh1 = svf(u, fc_w, 0.5412);\nrl, rb, rh = svf(rl1, fc_w, 1.3066);\nrec = fixnan(rl);\n\n// ================= RECORD/ERASE HEAD: fill every cell crossed =========\n// ECHO: erase + record (overwrite). SOS: erase off, new is added to the old\n// layer, which loses sos_db per pass. PLAYBACK: record and erase off.\nwr_gain = 1 - pb_s;\nsp_bias = sm_bias_khz * 1000 / (max(abs(u_cps), 0.000001) * sr);  // bias cycles per tape cell\nbias_amp = 0;\nif (sp_bias < FBIAS_MIN_SP) {\n\tbias_amp = sm_bias_leak * 0.1 * min(1, (FBIAS_MIN_SP - sp_bias) / 0.1);   // level APPROX\n}\nif (wr_gain > 0.0001 && abs(u_cps) > 0.000001) {\n\tklo = (u_cps > 0) ? floor(w_old) + 1 : -floor(-w_new);      // -floor(-x) = ceil(x)\n\tkhi = (u_cps > 0) ? floor(w_new) : -floor(-w_old) - 1;\n\tfor (k = klo; k <= khi; k += 1) {\n\t\tfq = (k - w_old) / u_cps;\n\t\tki = wrap(k, 0, L);\n\t\tval = rec_prev + fq * (rec - rec_prev);\n\t\tif (bias_amp > 0) {\n\t\t\tval = val + bias_amp * sin(twopi * sm_bias_khz * 1000 * ((t - 1 + fq) / sr));\n\t\t}\n\t\told = peek(tape, ki, 0);\n\t\tkeep = sos_s * ck_sg;                            // SOS keeps the old layer\n\t\tnv = old * (1 - wr_gain) + wr_gain * (old * keep + val);\n\t\tpoke(tape, nv, ki, 0);\n\t}\n}\nrec_prev = rec;\nw_prev = w_new;\np = p_new;\n\n// ================= OUTPUT =============================================\ne1l, e1b, e1h = svf(ypb, sm_echo_hp_hz, 0.707);\ne2l, e2b, e2h = svf(e1h, sm_echo_lp_hz, 0.707);\nech = dc_block(e2l) * echo_on_s2;\nif (sm_out_db != ck_okey) {\n\tck_og = pow(10, sm_out_db / 20);\n\tck_okey = sm_out_db;\n}\nif (sm_echo_trim_db != ck_etkey) {\n\tck_et = pow(10, sm_echo_trim_db / 20);\n\tck_etkey = sm_echo_trim_db;\n}\no_mix = dry_br + ech * ck_en * ck_ge * ck_et;\n// F4 (v0.1.1): the cable filter always runs (no stale state); below 1 pF it is blended out\no_lp = lp1(o_mix, 1 / (twopi * ck_rth * max(sm_cable_pf, 1) * 0.000000000001));\nif (sm_cable_pf >= 1) {\n\to_mix = o_lp;\n} else if (sm_cable_pf > 0) {\n\to_mix = o_mix + sm_cable_pf * (o_lp - o_mix);\n}\no1 = fixnan(o_mix * ck_og);\no2 = o1;\n\n// ================= OUTPUT PROTECTION (as the H&H device) =================\nif (ceiling_db != ck_ckey) {\n\tck_cl = pow(10, ceiling_db / 20);\n\tck_ckey = ceiling_db;\n}\nc_lin = ck_cl;\nthr = c_lin * 0.944061;\npk = abs(o1);\nover = (pk > thr) ? 1 : 0;\npg = 1;\nif (protect > 0.5) {\n\tgreq = (pk > thr) ? thr / pk : 1;\n\tif (greq < pg_hold) {\n\t\tpg_hold = greq;\n\t\tph_cnt = 0.010 * sr;\n\t} else if (ph_cnt > 0) {\n\t\tph_cnt = ph_cnt - 1;\n\t} else {\n\t\tpg_hold = pg_hold + ck_prel * (1 - pg_hold);\n\t}\n\tif (pg_hold < pg_s) {\n\t\tpg_s = pg_s + ck_patt * (pg_hold - pg_s);\n\t} else {\n\t\tpg_s = pg_hold;\n\t}\n\tpg = pg_s;\n\to1 = softclip(o1 * pg, thr, c_lin);\n\to2 = o1;\n} else {\n\tpg_hold = 1;\n\tpg_s = 1;\n\tph_cnt = 0;\n}\n\nout1 = o1;\nout2 = o2;\nout3 = (d / max(vc, 0.000000001)) / sr * 1000;\nout4 = tap_bpm;\nout5 = u_out;\nout6 = v_eff;\nout7 = pg;\nout8 = over;\n",
         "fontface": 0,
         "fontname": "<Monospaced>",
         "fontsize": 11.0,
         "numinlets": 2,
         "numoutlets": 8,
         "outlettype": [
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          ""
         ],
         "patching_rect": [
          20,
          60,
          900,
          700
         ]
        }
       },
       {
        "box": {
         "id": "g-in1",
         "maxclass": "newobj",
         "text": "in 1",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          20,
          20,
          30,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-in2",
         "maxclass": "newobj",
         "text": "in 2",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          880,
          20,
          30,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out1",
         "maxclass": "newobj",
         "text": "out 1",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out2",
         "maxclass": "newobj",
         "text": "out 2",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          140,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out3",
         "maxclass": "newobj",
         "text": "out 3",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          260,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out4",
         "maxclass": "newobj",
         "text": "out 4",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          380,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out5",
         "maxclass": "newobj",
         "text": "out 5",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          500,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out6",
         "maxclass": "newobj",
         "text": "out 6",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          620,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out7",
         "maxclass": "newobj",
         "text": "out 7",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          740,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out8",
         "maxclass": "newobj",
         "text": "out 8",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          860,
          780,
          40,
          22
         ]
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "g-in1",
          0
         ],
         "destination": [
          "g-code",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-in2",
          0
         ],
         "destination": [
          "g-code",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          0
         ],
         "destination": [
          "g-out1",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          1
         ],
         "destination": [
          "g-out2",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          2
         ],
         "destination": [
          "g-out3",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          3
         ],
         "destination": [
          "g-out4",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          4
         ],
         "destination": [
          "g-out5",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          5
         ],
         "destination": [
          "g-out6",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          6
         ],
         "destination": [
          "g-out7",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          7
         ],
         "destination": [
          "g-out8",
          0
         ]
        }
       }
      ]
     }
    }
   },
   {
    "box": {
     "id": "obj-82",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      1220,
      450,
      130,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "text": "record~ out_GOLD5_voice_late_cable0 1"
    }
   },
   {
    "box": {
     "id": "obj-83",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1370,
      346,
      80,
      22
     ],
     "outlettype": [
      "bang"
     ],
     "text": "delay 4300"
    }
   },
   {
    "box": {
     "id": "obj-84",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1370,
      376,
      40,
      22
     ],
     "outlettype": [
      "bang",
      "bang"
     ],
     "text": "t b b"
    }
   },
   {
    "box": {
     "id": "obj-85",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1370,
      406,
      30,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "0"
    }
   },
   {
    "box": {
     "id": "obj-86",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1370,
      480,
      250,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "writewave out_GOLD5_voice_late_cable0_max.wav"
    }
   },
   {
    "box": {
     "id": "obj-87",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1220,
      510,
      290,
      20
     ],
     "text": "\u2192 writes out_GOLD5_voice_late_cable0_max.wav",
     "fontsize": 10.0
    }
   },
   {
    "box": {
     "id": "obj-88",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      600,
      290,
      20
     ],
     "text": "BEH1_hold_bright \u2014 tier B (behaviour), 32 s",
     "fontsize": 10.5
    }
   },
   {
    "box": {
     "id": "obj-89",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      624,
      290,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "noise_db -120, wow 0, flutter 0, sustain 0.4, dry 0, cable_pf 0, loop_s 112.5"
    }
   },
   {
    "box": {
     "id": "obj-90",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      20,
      652,
      230,
      22
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ in_BEH1_hold_bright in_BEH1_hold_bright.wav"
    }
   },
   {
    "box": {
     "id": "obj-91",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      20,
      676,
      230,
      22
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ out_BEH1_hold_bright 32600 1"
    }
   },
   {
    "box": {
     "id": "obj-92",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      20,
      704,
      140,
      26
     ],
     "outlettype": [
      "",
      "",
      "int"
     ],
     "text": "RUN BEH1"
    }
   },
   {
    "box": {
     "id": "obj-93",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      20,
      738,
      60,
      22
     ],
     "outlettype": [
      "bang",
      "bang",
      "bang"
     ],
     "text": "t b b b"
    }
   },
   {
    "box": {
     "id": "obj-94",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      90,
      766,
      30,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "1"
    }
   },
   {
    "box": {
     "id": "obj-95",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20,
      766,
      40,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "start"
    }
   },
   {
    "box": {
     "id": "obj-96",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      20,
      796,
      120,
      22
     ],
     "outlettype": [
      "signal",
      "bang"
     ],
     "text": "play~ in_BEH1_hold_bright 1"
    }
   },
   {
    "box": {
     "id": "obj-97",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      20,
      832,
      120,
      22
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "text": "gen~",
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 0,
       "revision": 0,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "dsp.gen",
      "rect": [
       50,
       50,
       960,
       840
      ],
      "boxes": [
       {
        "box": {
         "id": "g-code",
         "maxclass": "codebox",
         "code": "// FALLBACK NAMES BUILD (not a release): identical engine with locals that share Gen operator names renamed\n// (s->st_s, f->fq, i->ii, gtp->g_tp, r->rdp). Use only if gen~ reports an error on one of those names.\n// =====================================================================\n// ECHOLIVITY \u2014 EP-3 (Maestro Echoplex EP-3 model) \u00b7 tape engine v0.1.2-dev\n// v0.1.2-dev: identifiers renamed that collide with gen~ built-ins (dcblock -> dc_block,\n// lt -> l_t); no functional change (bit-identical, test R06/X01).\n// v0.1.1-dev remediation (see CHANGELOG / validation/EP3_REMEDIATION_REPORT.md): F1 HOLD loop gain,\n// F2 33 nF feedback runaway, F3 8 s default loop, F4 click-free DE-EMPH / Cable / Source-cap\n// changes, F6 loop-length change fade.\n// gen~ codebox. Status of every value: docs/EP3_MODELING_NOTES.md\n//\n// Signal flow (EP-3 manual, Maestro owner/service manual [S1]):\n//   input -> Q5 FET stage (TIS58, 22k drain, 3.3k source, 0.022 uF source\n//   bypass = pre-emphasis) -> dry out (high output Z into cable C)\n//                           -> record level -> record amp -> RECORD/ERASE HEAD\n//   (moving, on the slider) -> tape (8 ips, ~75 ft loop) -> fixed ECHO head\n//   -> head amp + de-emphasis -> Echo Sustain (feedback) / Echo Volume (blend\n//   pot in the passive output mixer, wiper grounded) -> output (high Z, into the cable)\n//   SOS: SOS head (upstream of the record head) monitors the loop; erase off,\n//   new material is added to the old layer (-1 dB per pass, manual alignment).\n//\n// The record head moves, so a slider move changes how sound is WRITTEN on the\n// tape (pitch change heard one delay later). The write is band-limited (pre-\n// write low-pass that follows the head's speed over the tape, after\n// Arnardottir/Abel/Smith 2008) and fills every tape cell the head crosses.\n//\n// Tape buffer: fixed 48 000 cells per second of tape at nominal speed, so the\n// 112.5 s loop costs the same memory at any sample rate.\n// Level convention: 100 mV == -18 dBFS RMS (same as the H&H device).\n// Mono like the original: L+R are summed at the input; out1 == out2.\n//\n// out1/out2: audio   out3: delay (ms)   out4: tap BPM\n// out5: record-head write speed over tape (1 = normal)   out6: tape speed\n// out7: output-protection gain   out8: output over flag\n// =====================================================================\n\n// ---------- stateful helpers (each call site gets its own state) ------\nsvf(x, fc, q) {\n\tHistory s1(0);\n\tHistory s2(0);\n\tHistory key_fc(-1);\n\tHistory key_q(-1);\n\tHistory key_sr(-1);\n\tHistory c_k(0);\n\tHistory c_a1(0);\n\tHistory c_a2(0);\n\tHistory c_a3(0);\n\tif (fc != key_fc || q != key_q || samplerate != key_sr) {\n\t\tfcc = clamp(fc, 5, samplerate * 0.49);\n\t\tg = tan(pi * fcc / samplerate);\n\t\tc_k = 1 / q;\n\t\tc_a1 = 1 / (1 + g * (g + c_k));\n\t\tc_a2 = g * c_a1;\n\t\tc_a3 = g * c_a2;\n\t\tkey_fc = fc;\n\t\tkey_q = q;\n\t\tkey_sr = samplerate;\n\t}\n\tv3 = x - s2;\n\tv1 = c_a1 * s1 + c_a2 * v3;\n\tv2 = s2 + c_a2 * s1 + c_a3 * v3;\n\ts1 = fixdenorm(2 * v1 - s1);\n\ts2 = fixdenorm(2 * v2 - s2);\n\treturn v2, v1, x - c_k * v1 - v2;\n}\n\nlp1(x, fc) {\n\tHistory z(0);\n\tHistory key_fc(-1);\n\tHistory key_sr(-1);\n\tHistory c_a(0);\n\tif (fc != key_fc || samplerate != key_sr) {\n\t\tc_a = 1 - exp(-twopi * min(fc, samplerate * 0.49) / samplerate);\n\t\tkey_fc = fc;\n\t\tkey_sr = samplerate;\n\t}\n\tz = fixdenorm(z + c_a * (x - z));\n\treturn z;\n}\n\nhp1(x, fc) {\n\treturn x - lp1(x, fc);\n}\n\ndc_block(x) {\n\tHistory x1(0);\n\tHistory y1(0);\n\tR = 1 - twopi * 10 / samplerate;\n\ty = fixdenorm(x - x1 + R * y1);\n\tx1 = x;\n\ty1 = y;\n\treturn y;\n}\n\nhermite(xm1, x0, x1, x2, fq) {\n\tc1 = 0.5 * (x1 - xm1);\n\tc2 = xm1 - 2.5 * x0 + 2 * x1 - 0.5 * x2;\n\tc3 = 0.5 * (x2 - xm1) + 1.5 * (x0 - x1);\n\treturn ((c3 * fq + c2) * fq + c1) * fq + x0;\n}\n\nsoftclip(x, k, c) {\n\tax = abs(x);\n\ty = x;\n\tif (ax > k) {\n\t\tsg = (x >= 0) ? 1 : -1;\n\t\ty = sg * (k + (c - k) * tanh((ax - k) / (c - k)));\n\t}\n\treturn y;\n}\n\ntapesat(x, b) {\n\tHistory key_b(-99999);\n\tHistory c_tb(0);\n\tif (b != key_b) {\n\t\tc_tb = tanh(b);\n\t\tkey_b = b;\n\t}\n\ttb = c_tb;\n\treturn (tanh(x + b) - tb) / (1 - tb * tb);\n}\n\npsmooth(t, a) {\n\tHistory st_s(0);\n\tHistory init(0);\n\tif (init < 0.5) {\n\t\tst_s = t;\n\t\tinit = 1;\n\t}\n\tst_s = st_s + a * (t - st_s);\n\tif (abs(t - st_s) <= 0.000000001 * max(1, abs(t))) {\n\t\tst_s = t;\n\t}\n\treturn st_s;\n}\n\nfsmooth(fq, a) {\n\tHistory ls(0);\n\tHistory init(0);\n\tl_t = log(fq);\n\tif (init < 0.5) {\n\t\tls = l_t;\n\t\tinit = 1;\n\t}\n\tls = ls + a * (l_t - ls);\n\tif (abs(l_t - ls) <= 0.000000001) {\n\t\tls = l_t;\n\t}\n\treturn (ls == l_t) ? fq : exp(ls);\n}\n\n// JFET drain current, square law: Id = Idss (1 - Vgs/Vp)^2 for Vp < Vgs, else 0.\n// Vgs above +0.4 V is held there (gate-source diode conducts).\n// Source node: Rs in parallel with Cs (Cs = 0 when the bypass cap is out).\n// Backward-Euler step for the source node, solved in closed form:\n//   (Cs/dt + 1/Rs) Vs - (Cs/dt) Vs0 = Id(vg - Vs)\n// Returns (Id, Vs).\nfet_step(vg, vs0, cdt, rs, idss, vp) {\n\ta = cdt + 1 / rs;\n\tb = cdt * vs0;\n\tvgc = min(vg, 0.4 + vs0);\n\t// w = 1 - Vgs/Vp; Vs = Vp w - Vp + vg  ->  idss w^2 - a Vp w + (a Vp - a vg + b) = 0\n\tqa = idss;\n\tqb = -a * vp;\n\tqc = a * vp - a * vgc + b;\n\tdisc = qb * qb - 4 * qa * qc;\n\tidq = 0;\n\tvsq = b / a;                                  // cut-off: no drain current\n\tif (disc >= 0) {\n\t\tw = (-qb + sqrt(disc)) / (2 * qa);\n\t\tif (w > 0) {\n\t\t\tidq = idss * w * w;\n\t\t\tvsq = vp * w - vp + vgc;\n\t\t}\n\t}\n\treturn idq, vsq;\n}\n\n// Passive output mixer (EP-3; values from replica/forum traces [S11][S13]-[S15], APPROX until a\n// clean schematic): drain -0.1uF- A; A -470k- gnd; A -220k- B; B = Echo Volume lug 1;\n// B -100k- OUT. Echo amp -220k- E; E -100k- gnd; E = pot lug 3; E -100k- OUT.\n// The 500k pot's WIPER IS GROUNDED: k = 0 shorts the echo lug, k = 1 shorts the dry lug,\n// so Echo Volume is a blend and the dry level peaks near k = 0.2 (non-monotonic).\n// OUT drives the amp (1M) and the cable capacitance. Returns dry gain, echo gain and the\n// Thevenin resistance at OUT (which, with the cable C, sets the treble roll-off).\nmixer(k) {\n\trp3 = clamp(k, 0, 1) * 500000;\n\trp1 = 500000 - rp3;\n\tra = 22000 * 470000 / 492000;\n\tvbf = (470000 / 492000) * rp1 / (ra + 220000 + rp1);\n\trdb = (ra + 220000) * rp1 / (ra + 220000 + rp1) + 100000;\n\trsh = rp3 * 100000 / (rp3 + 100000);\n\tvef = rsh / (220000 + rsh);\n\treb = 220000 * rsh / (220000 + rsh) + 100000;\n\tgsum = 1 / rdb + 1 / reb + 0.000001;\n\treturn vbf / rdb / gsum, vef / reb / gsum, 1 / gsum;\n}\n\n// F1/F2 (v0.1.1): peak gain of the fixed playback/record loop chain for a de-emphasis corner fde:\n// tape HF loss (2-pole, 5188 Hz) x de-emphasis (1-pole fde, normalised to 1 at 1 kHz)\n// x couplings (30, 20, 10 Hz high-passes). The 1 kHz normalisation lifts the chain above 1 below\n// 1 kHz: peak 1.043 (334 Hz) for 3 nF and 3.383 (102 Hz) for 33 nF, matching measured per-pass\n// gains of 1.040 / 3.369 (validation/EP3_REMEDIATION_REPORT.md). Grid search, 20 Hz\u20134 kHz.\nloop_peak(fde) {\n\tnrm = sqrt(1 + (1000 / fde) * (1000 / fde));\n\tpk = 0;\n\tfor (ii = 0; ii < 96; ii += 1) {\n\t\tfq = 20 * pow(200, ii / 95);\n\t\tg_tp = 1 / sqrt(1 + pow(fq / 5188, 4));\n\t\tgd = nrm / sqrt(1 + (fq / fde) * (fq / fde));\n\t\tg30 = (fq / 30) / sqrt(1 + (fq / 30) * (fq / 30));\n\t\tg20 = (fq / 20) / sqrt(1 + (fq / 20) * (fq / 20));\n\t\tg10 = (fq / 10) / sqrt(1 + (fq / 10) * (fq / 10));\n\t\tpk = max(pk, g_tp * gd * g30 * g20 * g10);\n\t}\n\treturn pk;\n}\n\n// ---------- tape ------------------------------------------------------\n// 112.5 s * 48 000 cells/s (+ margin)\nData tape(5400064, 1);\n\n// ---------- parameters ------------------------------------------------\nParam in_gain_db(0, min=-36, max=12);\nParam dry(1, min=0, max=1);                  // Echolivity trim on the dry branch (1 = original)\nParam echo(0.5, min=0, max=1);               // ECHO VOLUME: the 500k blend pot (wiper grounded)\nParam echo_trim_db(0, min=-24, max=12);      // Echolivity trim on the echo branch\nParam out_db(0, min=-36, max=12);\nParam mode(2, min=0, max=2);\nParam bpm(120, min=20, max=999);\nParam sync_div(2, min=0, max=5);\nParam sync_type(0, min=0, max=2);\nParam sync_mult(1, min=1, max=8);\nParam offset_ms(0, min=-100, max=100);\nParam tap(0, min=0, max=1000000);\nParam tap_div(3, min=0, max=5);\nParam tap_type(0, min=0, max=2);\nParam bar_beats(4, min=1, max=16);\n// ECHO DELAY slider: delay is linear in head position at constant tape speed.\n// 60\u2013600 ms default = DAFX/CCRMA measured range [S3]; 80\u2013800 per [S4].\nParam slider_pos(0.5, min=0, max=1);\nParam slider_min_ms(60, min=2, max=2000);\nParam slider_max_ms(600, min=2, max=4000);\nParam glide_ms(40, min=1, max=2000);\nParam transition_ms(250, min=1, max=4000);\nParam head_slew(4, min=0.05, max=12);        // max head speed, in delay-seconds per second (APPROX)\n// EP-3 front panel / internal\nParam sustain(0.4, min=0, max=1);            // ECHO SUSTAIN (500k lin [S12]); runs away from 0.8 (test E14)\nParam rec_db(0, min=-12, max=12);            // RECORD LEVEL trimmer (internal on the original)\nParam sos(0, min=0, max=1);                  // ECHO / SOUND ON SOUND switch\nParam sos_db(-1, min=-6, max=0);             // SOS loss per pass; manual alignment: \"approximately 1dB\"\nParam echo_on(1, min=0, max=1);              // footswitch: echo on/off\nParam playback(0, min=0, max=1);             // footswitch: playback (record + erase off)\nParam pre_bypass(1, min=0, max=1);           // Q5 source bypass 0.022 uF (manual addendum) in/out\nParam cable_pf(470, min=0, max=2000);        // cable + amp input capacitance; 470 pF fits ClinchFX's descriptions (test E07)\nParam pb_eq(0, min=0, max=1);                // de-emphasis: 0 = 18k/0.003uF (forum), 1 = 18k/0.033uF (manual scan)\nParam bias_khz(100, min=40, max=120);        // \"approximate frequency of 100 KC\" [S1]\nParam bias_leak(0.3, min=0, max=1);          // bias heard on very fast slider moves (APPROX level)\nParam loop_s(8, min=1, max=112.5);           // F3 (v0.1.1): default 8 s for usable SOS/PLAYBACK; 112.5 s = ~75 ft at 8 ips [S18] (authentic)\n// tape character (Echolivity)\nParam sat(0.5, min=0, max=1);\nParam noise_db(-60, min=-120, max=-30);\nParam wow(0.1, min=0, max=1);                // slow drift\nParam flutter(0.25, min=0, max=1);           // 0.5 stays within the 0.3 % spec (E10: 0.256 %); capstan 26 Hz, pinch 2.5/5 Hz\n// performance (Echolivity)\nParam hold(0, min=0, max=1);\nParam hold_fb(1, min=0.9, max=1.05);\nParam drive(0, min=0, max=1);\nParam drive_db(12, min=0, max=24);\nParam drive_fb(0, min=0, max=1);\nParam tape_stop(0, min=0, max=1);\nParam stop_time(1, min=0.05, max=8);\nParam start_time(0.4, min=0.05, max=8);\nParam fb_hp_hz(10, min=10, max=2000);\nParam fb_lp_hz(20000, min=500, max=20000);\nParam fb_res(0, min=0, max=1);\nParam echo_hp_hz(10, min=10, max=2000);\nParam echo_lp_hz(20000, min=500, max=20000);\nParam protect(1, min=0, max=1);\nParam ceiling_db(-0.3, min=-12, max=0);\n\n// ---------- state -----------------------------------------------------\nHistory p(0);\nHistory d_head(-1);\nHistory Ts1(-1);\nHistory Ts2(-1);\nHistory w_prev(0);\nHistory rec_prev(0);\nHistory first(1);\nHistory s_stop(1);\nHistory hold_s(0);\nHistory drive_s(0);\nHistory sos_s(0);\nHistory echo_on_s(1);\nHistory echo_on_s2(1);\nHistory pb_s(0);\nHistory env(0);\nHistory prev_mode(-1);\nHistory trans_left(0);\nHistory nsamp(0);\nHistory tap_prev(0);\nHistory last_tap(-1);\nHistory t_count(0);\nHistory ti0(0);\nHistory ti1(0);\nHistory ti2(0);\nHistory ti3(0);\nHistory tap_bpm(120);\nHistory ph_cap(0);\nHistory ph_p1(0);\nHistory ph_p2(0);\nHistory drift(0);\nHistory fl_rnd(0);\nHistory last_sr(0);\nHistory vs_state(-1);\nHistory pg_hold(1);\nHistory pg_s(1);\nHistory ph_cnt(0);\nHistory u_out(1);\nHistory ck_pk3(-1);\nHistory ck_pk33(-1);\nHistory L_cur(-1);\nHistory hp_env(0);\nHistory hold_tgt(0);\nHistory hold_c(1);\nHistory hold_prev(0);\nHistory hold_cnt(0);\nHistory hold_pass(0);\nHistory hold_np(0);\nHistory hold_elast(0);\nHistory lg(1);\nHistory lg1(1);\nHistory lg_t(1);\nHistory lg_hold(0);\n// cached coefficients\nHistory ck_sr(-1);\nHistory ck_ps(0);\nHistory ck_a10(0);\nHistory ck_drift(0);\nHistory ck_flr(0);\nHistory ck_nnorm(1);\nHistory ck_up(0);\nHistory ck_dn(0);\nHistory ck_prel(0);\nHistory ck_patt(0);\nHistory ck_tau(-1);\nHistory ck_as(0);\nHistory ck_fkey(-99999);\nHistory ck_idq(0);\nHistory ck_vsq(0);\nHistory ck_dkey(-99999);\nHistory ck_dg(1);\nHistory ck_sat(-99999);\nHistory ck_gt(1);\nHistory ck_ing(-99999);\nHistory ck_ig(1);\nHistory ck_rkey(-99999);\nHistory ck_rg(1);\nHistory ck_skey(-99999);\nHistory ck_sg(0.891);\nHistory ck_nkey(-99999);\nHistory ck_ng(0);\nHistory ck_okey(-99999);\nHistory ck_kkey(-99999);\nHistory ck_gd(0.18);\nHistory ck_ge(0.13);\nHistory ck_rth(83000);\nHistory ck_en(1);\nHistory ck_etkey(-99999);\nHistory ck_et(1);\nHistory ck_og(1);\nHistory ck_ckey(-99999);\nHistory ck_cl(1);\n\nCR = 48000;                                  // tape cells per second at nominal speed\nNB = 5400064;\nVPF = 0.794;                                 // volts per full scale (100 mV = -18 dBFS RMS)\nRD = 22000;                                  // Q5 drain resistor [S1][S8]\nRS = 3300;                                   // Q5 source resistor [S1]\nCS = 0.000000022;                            // Q5 source bypass [S1 addendum]\nIDSS = 0.0034;                               // APPROX: fitted so Vs = 1.8 V at 21.2 V supply\nVP = -3.0;                                   //   (measured 1.72\u20131.88 V / 21.0\u201321.3 V on two units [S8])\nVDD = 21.2;\nFBIAS_MIN_SP = 0.45;                         // spatial Nyquist guard (cycles per tape cell)\n\nsr = samplerate;\nt = nsamp;\nnsamp = nsamp + 1;\nx = 0.5 * (fixnan(in1) + fixnan(in2));      // mono, like the original\n\nif (sr != last_sr) {\n\tif (last_sr > 0) {\n\t\tTs1 = -1;\n\t\tTs2 = -1;\n\t\td_head = -1;\n\t\tlast_tap = -1;\n\t\tt_count = 0;\n\t}\n\tlast_sr = sr;\n}\n\n// ================= TAP TEMPO (sample counter; as the H&H device) =======\nif (tap > tap_prev + 0.5) {\n\tif (last_tap >= 0) {\n\t\tiv = t - last_tap;\n\t\tif (iv < 0.15 * sr) {\n\t\t\tiv = -1;\n\t\t} else if (iv > 2 * sr) {\n\t\t\tt_count = 0;\n\t\t\tlast_tap = t;\n\t\t} else {\n\t\t\tif (t_count > 0) {\n\t\t\t\ttavg0 = (ti0 + ti1 + ti2 + ti3) / min(t_count, 4);\n\t\t\t\tif (abs(iv - tavg0) > 0.4 * tavg0) {\n\t\t\t\t\tt_count = 0;\n\t\t\t\t}\n\t\t\t}\n\t\t\tti3 = ti2;\n\t\t\tti2 = ti1;\n\t\t\tti1 = ti0;\n\t\t\tti0 = iv;\n\t\t\tif (t_count == 0) {\n\t\t\t\tti1 = 0;\n\t\t\t\tti2 = 0;\n\t\t\t\tti3 = 0;\n\t\t\t}\n\t\t\tt_count = min(t_count + 1, 4);\n\t\t\ttavg = (ti0 + ti1 + ti2 + ti3) / t_count;\n\t\t\ttap_bpm = 60 * sr / tavg;\n\t\t\tlast_tap = t;\n\t\t}\n\t} else {\n\t\tlast_tap = t;\n\t}\n}\ntap_prev = tap;\n\n// ================= TARGET DELAY TIME ==================================\ns_lo = min(slider_min_ms, slider_max_ms);\ns_hi = max(slider_min_ms, slider_max_ms);\nT = (s_lo + slider_pos * (s_hi - s_lo)) * 0.001;\nif (mode < 1.5) {\n\tuse_bpm = max(bpm, 20);\n\tdv_idx = floor(sync_div + 0.5);\n\ttyp = floor(sync_type + 0.5);\n\tif (mode >= 0.5) {\n\t\tuse_bpm = tap_bpm;\n\t\tdv_idx = floor(tap_div + 0.5);\n\t\ttyp = floor(tap_type + 0.5);\n\t}\n\tbeats = 0.125;\n\tif (dv_idx == 1) { beats = 0.25; }\n\telse if (dv_idx == 2) { beats = 0.5; }\n\telse if (dv_idx == 3) { beats = 1; }\n\telse if (dv_idx == 4) { beats = 2; }\n\telse if (dv_idx >= 5) { beats = bar_beats; }\n\tif (typ == 1) { beats = beats * 1.5; }\n\telse if (typ == 2) { beats = beats * 2 / 3; }\n\tT = 60 / use_bpm * beats * max(sync_mult, 1) + offset_ms * 0.001;\n}\nT = clamp(T, 0.002, 4);\n\n// sample-rate-dependent constants\nif (sr != ck_sr) {\n\tck_ps = 1 - exp(-1 / (0.010 * sr));\n\tck_a10 = ck_ps;\n\tck_drift = 1 - exp(-twopi * 0.5 / sr);\n\tck_flr = 1 - exp(-twopi * 20 / sr);\n\ta_n0 = 1 - exp(-twopi * min(10000, 0.49 * sr) / sr);\n\tck_nnorm = sqrt((1 / 3) * a_n0 / (2 - a_n0));\n\tck_up = 1 - exp(-1 / (0.001 * sr));\n\tck_dn = 1 - exp(-1 / (0.200 * sr));\n\tck_prel = 1 - exp(-1 / (0.150 * sr));\n\tck_patt = 1 - exp(-1 / (0.0005 * sr));\n\tck_sr = sr;\n\tck_tau = -1;\n\tck_fkey = -99999;\n\tck_nkey = -99999;\n}\n\n// smoothed continuous parameters\nsm_in_gain_db = psmooth(in_gain_db, ck_ps);\nsm_dry = psmooth(dry, ck_ps);\nsm_echo = psmooth(echo, ck_ps);\nsm_echo_trim_db = psmooth(echo_trim_db, ck_ps);\nsm_out_db = psmooth(out_db, ck_ps);\nsm_sustain = psmooth(sustain, ck_ps);\nsm_rec_db = psmooth(rec_db, ck_ps);\nsm_sos_db = psmooth(sos_db, ck_ps);\nsm_bias_leak = psmooth(bias_leak, ck_ps);\nsm_sat = psmooth(sat, ck_ps);\nsm_noise_db = psmooth(noise_db, ck_ps);\nsm_wow = psmooth(wow, ck_ps);\nsm_flutter = psmooth(flutter, ck_ps);\nsm_hold_fb = psmooth(hold_fb, ck_ps);\nsm_drive_db = psmooth(drive_db, ck_ps);\nsm_fb_res = psmooth(fb_res, ck_ps);\nsm_cable_pf = psmooth(cable_pf, ck_ps);\nsm_bias_khz = fsmooth(bias_khz, ck_ps);\nsm_fb_hp_hz = fsmooth(fb_hp_hz, ck_ps);\nsm_fb_lp_hz = fsmooth(fb_lp_hz, ck_ps);\nsm_echo_hp_hz = fsmooth(echo_hp_hz, ck_ps);\nsm_echo_lp_hz = fsmooth(echo_lp_hz, ck_ps);\n// ceiling_db is not smoothed (see H&H test P05)\n\nif (mode != prev_mode) {\n\tif (prev_mode >= 0) {\n\t\ttrans_left = transition_ms * 0.001 * sr * 3;\n\t}\n\tprev_mode = mode;\n}\ntau_ms = glide_ms;\nif (trans_left > 0) {\n\ttau_ms = max(transition_ms, glide_ms);\n\ttrans_left = trans_left - 1;\n}\nif (tau_ms != ck_tau) {\n\tck_as = 1 - exp(-1 / (max(tau_ms, 0.5) * 0.001 * sr));\n\tck_tau = tau_ms;\n}\na_s = ck_as;\nTc = T * CR;                                 // target head distance in tape cells\nif (Ts1 < 0) {\n\tTs1 = Tc;\n\tTs2 = Tc;\n}\nTs1 = Ts1 + a_s * (Tc - Ts1);\nTs2 = Ts2 + a_s * (Ts1 - Ts2);\n\n// ================= TRANSPORT ==========================================\nif (tape_stop > 0.5) {\n\ts_stop = max(0, s_stop - 1 / (max(stop_time, 0.02) * sr));\n} else {\n\ts_stop = min(1, s_stop + 1 / (max(start_time, 0.02) * sr));\n}\n// F6 (v0.1.1): a Loop Length change moves the wrap point, so the heads land on other tape.\n// Fade the playback (echo + feedback) out with a smooth 2-stage curve (3 ms stages, ~40 ms to\n// silence), apply the new length, keep it muted until freshly recorded tape reaches the echo\n// head (one delay + 5 ms: the tape between the heads still holds old material), then fade in.\nL_tgt = floor(clamp(loop_s, 1, 112.5) * CR);\nif (L_cur < 0) {\n\tL_cur = L_tgt;\n}\nlg_t = 1;\nif (L_tgt != L_cur) {\n\tlg_t = 0;\n\tif (lg < 0.0001) {\n\t\tL_cur = L_tgt;\n\t\tfirst = 1;                               // restart the write-head tracking on the new loop\n\t\tlg_hold = Ts2 * sr / CR + 0.005 * sr;    // one delay (target head distance) + 5 ms\n\t}\n}\nif (lg_hold > 0) {\n\tlg_t = 0;\n\tlg_hold = lg_hold - 1;\n}\na_lg = 1 - exp(-1 / (0.003 * sr));\nlg1 = lg1 + a_lg * (lg_t - lg1);\nlg = lg + a_lg * (lg1 - lg);\nL = L_cur;\n\n// flutter: capstan 26 Hz, pinch wheel 2.5 / 5.0 Hz (measured on an Echoplex [S5]),\n// plus a little broadband flutter and slow drift. flutter = 0.5 -> within the 0.3 % spec (E10: 0.256 % peak).\nph_cap = ph_cap + 26 / sr;\nph_cap = ph_cap - floor(ph_cap);\nph_p1 = ph_p1 + 2.5 / sr;\nph_p1 = ph_p1 - floor(ph_p1);\nph_p2 = ph_p2 + 5.0 / sr;\nph_p2 = ph_p2 - floor(ph_p2);\ndrift = drift + ck_drift * (noise() * 3 - drift);\nfl_rnd = fl_rnd + ck_flr * (noise() * 2 - fl_rnd);\nwf = sm_flutter * 0.006 * (0.45 * sin(twopi * ph_cap) + 0.3 * sin(twopi * ph_p1) + 0.15 * sin(twopi * ph_p2) + 0.1 * fl_rnd)\n   + sm_wow * 0.005 * drift;\n\nv_eff = clamp(s_stop * (1 + wf), 0, 2);\nvc = v_eff * CR / sr;                        // tape cells per sample\n\n// ---- record head position (moving) with a head-speed limit\nif (d_head < 0) {\n\td_head = Ts2;\n}\nhs = max(head_slew, 0.05) * CR / sr;         // cells per sample\nd_head = d_head + clamp(Ts2 - d_head, -hs, hs);\nd = clamp(d_head, 16, L - 64);\n// SOS head: fixed just upstream of the slider's far end (APPROX gap 62.5 ms = 0.5 in at 8 ips)\nd_sos = clamp((s_hi + 62.5) * 0.001 * CR, d + 1, L - 32);\n\np_new = wrap(p + vc, 0, L);\nw_new = p_new + d;                           // write position (unwrapped relative to p_new)\nw_old = w_prev;\nif (first > 0.5) {\n\tw_old = w_new - vc;\n\tfirst = 0;\n}\n// keep w_old in the same unwrapped frame as w_new\nif (w_old - w_new > 0.5 * L) {\n\tw_old = w_old - L;\n} else if (w_new - w_old > 0.5 * L) {\n\tw_old = w_old + L;\n}\nu_cps = w_new - w_old;                       // head speed over tape, cells per sample\nu_out = u_cps / max(CR / sr, 0.000001);      // 1 = normal recording speed\n\n// ================= gates & per-sample coefficients ====================\nhold_s = hold_s + ck_a10 * (hold - hold_s);\ndrive_s = drive_s + ck_a10 * (drive - drive_s);\nsos_s = sos_s + ck_a10 * (sos - sos_s);\necho_on_s = echo_on_s + ck_a10 * (echo_on - echo_on_s);\necho_on_s2 = echo_on_s2 + ck_a10 * (echo_on_s - echo_on_s2);   // 2-stage: no corner at the switch\npb_s = pb_s + ck_a10 * (playback - pb_s);\ndkey = drive_s * sm_drive_db;\nif (dkey != ck_dkey) {\n\tck_dg = pow(10, dkey / 20);\n\tck_dkey = dkey;\n}\ndrive_gain = ck_dg;\nif (sm_sat != ck_sat) {\n\tck_gt = 0.6 * pow(4, 2 * (sm_sat - 0.5));  // 0.5: ~2-3 % THD at nominal level (calibration test E05: 2.1 %)\n\tck_sat = sm_sat;\n}\ng_t = ck_gt;\nif (sm_in_gain_db != ck_ing) {\n\tck_ig = pow(10, sm_in_gain_db / 20);\n\tck_ing = sm_in_gain_db;\n}\nif (sm_rec_db != ck_rkey) {\n\tck_rg = pow(10, sm_rec_db / 20);\n\tck_rkey = sm_rec_db;\n}\nif (sm_sos_db != ck_skey) {\n\tck_sg = pow(10, sm_sos_db / 20);\n\tck_skey = sm_sos_db;\n}\nif (sm_noise_db != ck_nkey) {\n\tck_ng = (sm_noise_db > -119) ? pow(10, sm_noise_db / 20) / ck_nnorm : 0;\n\tck_nkey = sm_noise_db;\n}\n// F1/F2 (v0.1.1): scale by the chain's peak loop gain instead of assuming it is 1.\n// Sustain: x (pk3 / pk) keeps the 3 nF behaviour exactly (factor 1.0) and gives 33 nF the\n// same peak loop gain (same runaway point). HOLD: / pk makes the per-pass peak gain equal to\n// Hold Feedback, so 1.0 holds the loop instead of growing.\nif (ck_pk3 < 0) {\n\tck_pk3 = loop_peak(2947);\n\tck_pk33 = loop_peak(268);\n}\npbs = psmooth(pb_eq, ck_ps);                 // F4: de-emphasis switch is crossfaded (10 ms)\npk_loop = (1 - pbs) * ck_pk3 + pbs * ck_pk33;\nfb_amt = (sm_sustain * 1.25) * (ck_pk3 / pk_loop) * (1 - hold_s) + (sm_hold_fb / pk_loop) * hold_c * hold_s;\nfb_amt = fb_amt * (1 - sos_s);               // ECHO/SUSTAIN not operative in SOS [S1]\nq_fb = 0.707 + sm_fb_res * 6;\ndfb_g = (drive_fb > 0.5) ? drive_gain : 1;\n\n// ================= Q5 FET INPUT STAGE (always in circuit) =============\nfkey = pre_bypass * 7 + sr;\nif (fkey != ck_fkey) {\n\t// quiescent point (no signal): source cap fully charged, so cdt = 0\n\tqi, qv = fet_step(0, 0, 0, RS, IDSS, VP);\n\tck_idq = qi;\n\tck_vsq = qv;\n\tck_fkey = fkey;\n\tif (vs_state < 0) {\n\t\tvs_state = qv;\n\t}\n}\nsm_pre = psmooth(pre_bypass, ck_ps);         // F4 (v0.1.1): source cap switched over 10 ms\ncdt = CS * sr * sm_pre;\nvg = lp1(x, 15915) * VPF * ck_ig;            // input RF filter: 100k series, 100 pF to ground [S14]\nid_n, vs_n = fet_step(vg, vs_state, cdt, RS, IDSS, VP);\nvs_state = fixdenorm(vs_n);\n// drain cannot fall below the source (+0.3 V): limits large positive swings\nid_c = min(id_n, (VDD - vs_n - 0.3) / RD);\nvac = (id_c - ck_idq) * RD;                  // drain AC (V); sign flipped so the device is non-inverting\npre = vac / VPF;                             // back to full-scale units (EP-3 gain kept)\n// output mixer coefficients (recomputed only when Echo Volume moves)\nif (sm_echo != ck_kkey) {\n\tgd, ge, rt = mixer(sm_echo);\n\tgd5, ge5, rt5 = mixer(0.5);\n\tck_gd = gd;\n\tck_ge = ge;\n\tck_rth = rt;\n\tck_en = gd5 / ge5;                       // echo source level: first repeat ~ dry level at k = 0.5 (APPROX)\n\tck_kkey = sm_echo;\n}\ndry_br = hp1(pre, 7) * ck_gd * sm_dry;       // 0.1 uF coupling into ~260k: ~7 Hz\n\n// ================= ECHO HEAD READ (fixed) =============================\nri = floor(p_new);\nrf = p_new - ri;\ni0 = wrap(ri, 0, L);\nim1 = wrap(i0 - 1, 0, L);\nip1 = wrap(i0 + 1, 0, L);\nip2 = wrap(i0 + 2, 0, L);\nm0 = peek(tape, im1, 0);\nc0 = peek(tape, i0, 0);\nn0 = peek(tape, ip1, 0);\nq0 = peek(tape, ip2, 0);\ny_echo = hermite(m0, c0, n0, q0, rf);\n// SOS head (monitors the loop before it reaches the record head)\nrs_pos = p_new + d_sos;\nrsi = floor(rs_pos);\nrsf = rs_pos - rsi;\nj0 = wrap(rsi, 0, L);\njm1 = wrap(j0 - 1, 0, L);\njp1 = wrap(j0 + 1, 0, L);\njp2 = wrap(j0 + 2, 0, L);\nsm0 = peek(tape, jm1, 0);\nsc0 = peek(tape, j0, 0);\nsn0 = peek(tape, jp1, 0);\nsq0 = peek(tape, jp2, 0);\ny_sos = hermite(sm0, sc0, sn0, sq0, rsf);\n\n// ================= PLAYBACK CHAIN =====================================\ngp = min(1, v_eff / 0.15);                   // head output falls away as the tape stops\nfc_tape = clamp(5188 * v_eff, 50, 0.45 * sr); // tape HF loss: H&H fit (7782 Hz @ 12 ips) x 8/12  APPROX\nyraw = y_echo * (1 - sos_s) + y_sos * sos_s; // SOS: you hear the SOS head [S1]\ntl, tb_, th = svf(yraw * gp, fc_tape, 0.707);\n// de-emphasis: 18k with 0.003 uF (forum, 2947 Hz) / 0.033 uF (manual scan, 268 Hz); both run and\n// are crossfaded (F4). Each is normalised at 1 kHz so both give the same mid level.\ny3 = lp1(tl, 2947);\ny33 = lp1(tl, 268);\nypb = (y3 * sqrt(1 + (1000 / 2947) * (1000 / 2947))) * (1 - pbs) + (y33 * sqrt(1 + (1000 / 268) * (1000 / 268))) * pbs;\nypb = ypb * lg;                              // F6 fade\nypb = hp1(ypb, 30);                          // head-amp coupling APPROX\nypb = ypb + lp1(noise(), 10000) * ck_ng;\n// F1 (v0.1.1): HOLD level trim. A fixed loop gain cannot freeze a loop: tape saturation\n// compresses slightly at playing level and frequencies off the loop's peak decay. While HOLD\n// is on, the playback power is compared with a target, and the hold gain is trimmed by at most\n// +-3 % per pass. Settling: after HOLD is pressed the target may only fall (the loop darkens\n// naturally but never grows) until the loop stops losing level (< 1 dB over a pass, at least\n// 2 passes; at most 30 s); then it is locked and changes by Hold Feedback^2 per pass\n// (1.0 = frozen), never sitting more than 1.5 dB above the loop's own level. Outside HOLD hold_c = 1 and nothing changes.\nhp_env = fixdenorm(hp_env + (1 - exp(-1 / (0.3 * sr))) * (ypb * ypb - hp_env));\ndsamp = max(d / max(vc, 0.000001), 1);\nif (hold > 0.5 && hold_prev < 0.5) {\n\thold_tgt = hp_env;\n\thold_cnt = 30 * sr;                          // settling time limit (dark voicing needs the longest)\n\thold_pass = dsamp + 0.3 * sr;                 // first check after one pass + envelope settle\n\thold_np = 0;\n\thold_elast = hp_env;\n}\nhold_prev = hold;\nif (hold > 0.5) {\n\tif (hold_cnt > 0) {\n\t\thold_tgt = min(hold_tgt, hp_env);\n\t\thold_cnt = hold_cnt - 1;\n\t\thold_pass = hold_pass - 1;\n\t\tif (hold_pass <= 0) {\n\t\t\thold_np = hold_np + 1;\n\t\t\tif (hold_np >= 2 && hp_env > 0.794 * hold_elast) {\n\t\t\t\thold_cnt = 0;                    // lost < 1 dB over the last pass: lock\n\t\t\t}\n\t\t\thold_elast = hp_env;\n\t\t\thold_pass = dsamp;\n\t\t}\n\t\tcc = (hold_tgt > 0.0000000001) ? clamp(sqrt(hold_tgt / max(hp_env, 0.00000000000000000001)), 0.97, 1) : 0.97;\n\t} else {\n\t\thold_tgt = fixdenorm(hold_tgt * exp(2 * log(max(sm_hold_fb, 0.01)) / dsamp));\n\t\t// a shortfall beyond 1.5 dB is spectral loss (e.g. the dark voicing shedding its mids), not\n\t\t// saturation: let the target follow, so the trim never pumps the loop back up by more than 1.5 dB\n\t\thold_tgt = min(hold_tgt, hp_env * 1.413);\n\t\tcc = (hold_tgt > 0.0000000001) ? clamp(sqrt(hold_tgt / max(hp_env, 0.00000000000000000001)), 0.97, 1.03) : 0.97;\n\t}\n\thold_c = hold_c + (1 - exp(-1 / (0.2 * sr))) * (cc - hold_c);\n} else {\n\thold_c = hold_c + (1 - exp(-1 / (0.2 * sr))) * (1 - hold_c);\n}\n// Echo Sustain feedback, with the Echolivity feedback filters\nf1l, f1b, f1h = svf(ypb, sm_fb_hp_hz, q_fb);\nf2l, f2b, f2h = svf(f1h, sm_fb_lp_hz, q_fb);\nguard = (env > 1.5) ? 1.5 / env : 1;\nfbs = f2l * fb_amt * guard * dfb_g;\nenv = fixdenorm(env + ((abs(f2l * fb_amt) > env) ? ck_up : ck_dn) * (abs(f2l * fb_amt) - env));\n\n// ================= RECORD CHAIN =======================================\nu = pre * ck_rg * drive_gain * (1 - hold_s) + fbs;\nu = hp1(u, 20);\nu = tapesat(u * g_t * drive_gain, 0.05) / g_t;\nu = dc_block(u);\n// write anti-alias: the head's speed over the tape sets the tape's sample spacing\n// spatial Nyquist: a frequency f lands at f / (|u_cps| sr) cycles per cell, which must stay < 0.5\n// 4th-order Butterworth at 0.35 sr |u|: everything that plays back below 0.35 sr (16.8 kHz @ 48k)\n// is kept; what would land above Nyquist is >= 40 dB down before the head samples it (test E03)\nfc_w = clamp(0.35 * sr * abs(u_cps), 20, 0.45 * sr);\nrl1, rb1, rh1 = svf(u, fc_w, 0.5412);\nrl, rb, rh = svf(rl1, fc_w, 1.3066);\nrec = fixnan(rl);\n\n// ================= RECORD/ERASE HEAD: fill every cell crossed =========\n// ECHO: erase + record (overwrite). SOS: erase off, new is added to the old\n// layer, which loses sos_db per pass. PLAYBACK: record and erase off.\nwr_gain = 1 - pb_s;\nsp_bias = sm_bias_khz * 1000 / (max(abs(u_cps), 0.000001) * sr);  // bias cycles per tape cell\nbias_amp = 0;\nif (sp_bias < FBIAS_MIN_SP) {\n\tbias_amp = sm_bias_leak * 0.1 * min(1, (FBIAS_MIN_SP - sp_bias) / 0.1);   // level APPROX\n}\nif (wr_gain > 0.0001 && abs(u_cps) > 0.000001) {\n\tklo = (u_cps > 0) ? floor(w_old) + 1 : -floor(-w_new);      // -floor(-x) = ceil(x)\n\tkhi = (u_cps > 0) ? floor(w_new) : -floor(-w_old) - 1;\n\tfor (k = klo; k <= khi; k += 1) {\n\t\tfq = (k - w_old) / u_cps;\n\t\tki = wrap(k, 0, L);\n\t\tval = rec_prev + fq * (rec - rec_prev);\n\t\tif (bias_amp > 0) {\n\t\t\tval = val + bias_amp * sin(twopi * sm_bias_khz * 1000 * ((t - 1 + fq) / sr));\n\t\t}\n\t\told = peek(tape, ki, 0);\n\t\tkeep = sos_s * ck_sg;                            // SOS keeps the old layer\n\t\tnv = old * (1 - wr_gain) + wr_gain * (old * keep + val);\n\t\tpoke(tape, nv, ki, 0);\n\t}\n}\nrec_prev = rec;\nw_prev = w_new;\np = p_new;\n\n// ================= OUTPUT =============================================\ne1l, e1b, e1h = svf(ypb, sm_echo_hp_hz, 0.707);\ne2l, e2b, e2h = svf(e1h, sm_echo_lp_hz, 0.707);\nech = dc_block(e2l) * echo_on_s2;\nif (sm_out_db != ck_okey) {\n\tck_og = pow(10, sm_out_db / 20);\n\tck_okey = sm_out_db;\n}\nif (sm_echo_trim_db != ck_etkey) {\n\tck_et = pow(10, sm_echo_trim_db / 20);\n\tck_etkey = sm_echo_trim_db;\n}\no_mix = dry_br + ech * ck_en * ck_ge * ck_et;\n// F4 (v0.1.1): the cable filter always runs (no stale state); below 1 pF it is blended out\no_lp = lp1(o_mix, 1 / (twopi * ck_rth * max(sm_cable_pf, 1) * 0.000000000001));\nif (sm_cable_pf >= 1) {\n\to_mix = o_lp;\n} else if (sm_cable_pf > 0) {\n\to_mix = o_mix + sm_cable_pf * (o_lp - o_mix);\n}\no1 = fixnan(o_mix * ck_og);\no2 = o1;\n\n// ================= OUTPUT PROTECTION (as the H&H device) =================\nif (ceiling_db != ck_ckey) {\n\tck_cl = pow(10, ceiling_db / 20);\n\tck_ckey = ceiling_db;\n}\nc_lin = ck_cl;\nthr = c_lin * 0.944061;\npk = abs(o1);\nover = (pk > thr) ? 1 : 0;\npg = 1;\nif (protect > 0.5) {\n\tgreq = (pk > thr) ? thr / pk : 1;\n\tif (greq < pg_hold) {\n\t\tpg_hold = greq;\n\t\tph_cnt = 0.010 * sr;\n\t} else if (ph_cnt > 0) {\n\t\tph_cnt = ph_cnt - 1;\n\t} else {\n\t\tpg_hold = pg_hold + ck_prel * (1 - pg_hold);\n\t}\n\tif (pg_hold < pg_s) {\n\t\tpg_s = pg_s + ck_patt * (pg_hold - pg_s);\n\t} else {\n\t\tpg_s = pg_hold;\n\t}\n\tpg = pg_s;\n\to1 = softclip(o1 * pg, thr, c_lin);\n\to2 = o1;\n} else {\n\tpg_hold = 1;\n\tpg_s = 1;\n\tph_cnt = 0;\n}\n\nout1 = o1;\nout2 = o2;\nout3 = (d / max(vc, 0.000000001)) / sr * 1000;\nout4 = tap_bpm;\nout5 = u_out;\nout6 = v_eff;\nout7 = pg;\nout8 = over;\n",
         "fontface": 0,
         "fontname": "<Monospaced>",
         "fontsize": 11.0,
         "numinlets": 2,
         "numoutlets": 8,
         "outlettype": [
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          ""
         ],
         "patching_rect": [
          20,
          60,
          900,
          700
         ]
        }
       },
       {
        "box": {
         "id": "g-in1",
         "maxclass": "newobj",
         "text": "in 1",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          20,
          20,
          30,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-in2",
         "maxclass": "newobj",
         "text": "in 2",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          880,
          20,
          30,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out1",
         "maxclass": "newobj",
         "text": "out 1",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out2",
         "maxclass": "newobj",
         "text": "out 2",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          140,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out3",
         "maxclass": "newobj",
         "text": "out 3",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          260,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out4",
         "maxclass": "newobj",
         "text": "out 4",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          380,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out5",
         "maxclass": "newobj",
         "text": "out 5",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          500,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out6",
         "maxclass": "newobj",
         "text": "out 6",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          620,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out7",
         "maxclass": "newobj",
         "text": "out 7",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          740,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out8",
         "maxclass": "newobj",
         "text": "out 8",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          860,
          780,
          40,
          22
         ]
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "g-in1",
          0
         ],
         "destination": [
          "g-code",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-in2",
          0
         ],
         "destination": [
          "g-code",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          0
         ],
         "destination": [
          "g-out1",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          1
         ],
         "destination": [
          "g-out2",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          2
         ],
         "destination": [
          "g-out3",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          3
         ],
         "destination": [
          "g-out4",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          4
         ],
         "destination": [
          "g-out5",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          5
         ],
         "destination": [
          "g-out6",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          6
         ],
         "destination": [
          "g-out7",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          7
         ],
         "destination": [
          "g-out8",
          0
         ]
        }
       }
      ]
     }
    }
   },
   {
    "box": {
     "id": "obj-98",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      20,
      870,
      130,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "text": "record~ out_BEH1_hold_bright 1"
    }
   },
   {
    "box": {
     "id": "obj-99",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      170,
      766,
      80,
      22
     ],
     "outlettype": [
      "bang"
     ],
     "text": "delay 32300"
    }
   },
   {
    "box": {
     "id": "obj-100",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      170,
      796,
      40,
      22
     ],
     "outlettype": [
      "bang",
      "bang"
     ],
     "text": "t b b"
    }
   },
   {
    "box": {
     "id": "obj-101",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      170,
      826,
      30,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "0"
    }
   },
   {
    "box": {
     "id": "obj-102",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      170,
      900,
      250,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "writewave out_BEH1_hold_bright_max.wav"
    }
   },
   {
    "box": {
     "id": "obj-103",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      930,
      290,
      20
     ],
     "text": "\u2192 writes out_BEH1_hold_bright_max.wav",
     "fontsize": 10.0
    }
   },
   {
    "box": {
     "id": "obj-104",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      170,
      704,
      80,
      22
     ],
     "outlettype": [
      "bang"
     ],
     "text": "delay 1000"
    }
   },
   {
    "box": {
     "id": "obj-105",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      255,
      704,
      55,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "hold 1"
    }
   },
   {
    "box": {
     "id": "obj-106",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      320,
      600,
      290,
      20
     ],
     "text": "BEH2_hold_dark \u2014 tier B (behaviour), 32 s",
     "fontsize": 10.5
    }
   },
   {
    "box": {
     "id": "obj-107",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      320,
      624,
      290,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "noise_db -120, wow 0, flutter 0, sustain 0.4, dry 0, cable_pf 0, loop_s 112.5, pb_eq 1"
    }
   },
   {
    "box": {
     "id": "obj-108",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      320,
      652,
      230,
      22
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ in_BEH2_hold_dark in_BEH2_hold_dark.wav"
    }
   },
   {
    "box": {
     "id": "obj-109",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      320,
      676,
      230,
      22
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ out_BEH2_hold_dark 32600 1"
    }
   },
   {
    "box": {
     "id": "obj-110",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      320,
      704,
      140,
      26
     ],
     "outlettype": [
      "",
      "",
      "int"
     ],
     "text": "RUN BEH2"
    }
   },
   {
    "box": {
     "id": "obj-111",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      320,
      738,
      60,
      22
     ],
     "outlettype": [
      "bang",
      "bang",
      "bang"
     ],
     "text": "t b b b"
    }
   },
   {
    "box": {
     "id": "obj-112",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      390,
      766,
      30,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "1"
    }
   },
   {
    "box": {
     "id": "obj-113",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      320,
      766,
      40,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "start"
    }
   },
   {
    "box": {
     "id": "obj-114",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      320,
      796,
      120,
      22
     ],
     "outlettype": [
      "signal",
      "bang"
     ],
     "text": "play~ in_BEH2_hold_dark 1"
    }
   },
   {
    "box": {
     "id": "obj-115",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      320,
      832,
      120,
      22
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "text": "gen~",
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 0,
       "revision": 0,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "dsp.gen",
      "rect": [
       50,
       50,
       960,
       840
      ],
      "boxes": [
       {
        "box": {
         "id": "g-code",
         "maxclass": "codebox",
         "code": "// FALLBACK NAMES BUILD (not a release): identical engine with locals that share Gen operator names renamed\n// (s->st_s, f->fq, i->ii, gtp->g_tp, r->rdp). Use only if gen~ reports an error on one of those names.\n// =====================================================================\n// ECHOLIVITY \u2014 EP-3 (Maestro Echoplex EP-3 model) \u00b7 tape engine v0.1.2-dev\n// v0.1.2-dev: identifiers renamed that collide with gen~ built-ins (dcblock -> dc_block,\n// lt -> l_t); no functional change (bit-identical, test R06/X01).\n// v0.1.1-dev remediation (see CHANGELOG / validation/EP3_REMEDIATION_REPORT.md): F1 HOLD loop gain,\n// F2 33 nF feedback runaway, F3 8 s default loop, F4 click-free DE-EMPH / Cable / Source-cap\n// changes, F6 loop-length change fade.\n// gen~ codebox. Status of every value: docs/EP3_MODELING_NOTES.md\n//\n// Signal flow (EP-3 manual, Maestro owner/service manual [S1]):\n//   input -> Q5 FET stage (TIS58, 22k drain, 3.3k source, 0.022 uF source\n//   bypass = pre-emphasis) -> dry out (high output Z into cable C)\n//                           -> record level -> record amp -> RECORD/ERASE HEAD\n//   (moving, on the slider) -> tape (8 ips, ~75 ft loop) -> fixed ECHO head\n//   -> head amp + de-emphasis -> Echo Sustain (feedback) / Echo Volume (blend\n//   pot in the passive output mixer, wiper grounded) -> output (high Z, into the cable)\n//   SOS: SOS head (upstream of the record head) monitors the loop; erase off,\n//   new material is added to the old layer (-1 dB per pass, manual alignment).\n//\n// The record head moves, so a slider move changes how sound is WRITTEN on the\n// tape (pitch change heard one delay later). The write is band-limited (pre-\n// write low-pass that follows the head's speed over the tape, after\n// Arnardottir/Abel/Smith 2008) and fills every tape cell the head crosses.\n//\n// Tape buffer: fixed 48 000 cells per second of tape at nominal speed, so the\n// 112.5 s loop costs the same memory at any sample rate.\n// Level convention: 100 mV == -18 dBFS RMS (same as the H&H device).\n// Mono like the original: L+R are summed at the input; out1 == out2.\n//\n// out1/out2: audio   out3: delay (ms)   out4: tap BPM\n// out5: record-head write speed over tape (1 = normal)   out6: tape speed\n// out7: output-protection gain   out8: output over flag\n// =====================================================================\n\n// ---------- stateful helpers (each call site gets its own state) ------\nsvf(x, fc, q) {\n\tHistory s1(0);\n\tHistory s2(0);\n\tHistory key_fc(-1);\n\tHistory key_q(-1);\n\tHistory key_sr(-1);\n\tHistory c_k(0);\n\tHistory c_a1(0);\n\tHistory c_a2(0);\n\tHistory c_a3(0);\n\tif (fc != key_fc || q != key_q || samplerate != key_sr) {\n\t\tfcc = clamp(fc, 5, samplerate * 0.49);\n\t\tg = tan(pi * fcc / samplerate);\n\t\tc_k = 1 / q;\n\t\tc_a1 = 1 / (1 + g * (g + c_k));\n\t\tc_a2 = g * c_a1;\n\t\tc_a3 = g * c_a2;\n\t\tkey_fc = fc;\n\t\tkey_q = q;\n\t\tkey_sr = samplerate;\n\t}\n\tv3 = x - s2;\n\tv1 = c_a1 * s1 + c_a2 * v3;\n\tv2 = s2 + c_a2 * s1 + c_a3 * v3;\n\ts1 = fixdenorm(2 * v1 - s1);\n\ts2 = fixdenorm(2 * v2 - s2);\n\treturn v2, v1, x - c_k * v1 - v2;\n}\n\nlp1(x, fc) {\n\tHistory z(0);\n\tHistory key_fc(-1);\n\tHistory key_sr(-1);\n\tHistory c_a(0);\n\tif (fc != key_fc || samplerate != key_sr) {\n\t\tc_a = 1 - exp(-twopi * min(fc, samplerate * 0.49) / samplerate);\n\t\tkey_fc = fc;\n\t\tkey_sr = samplerate;\n\t}\n\tz = fixdenorm(z + c_a * (x - z));\n\treturn z;\n}\n\nhp1(x, fc) {\n\treturn x - lp1(x, fc);\n}\n\ndc_block(x) {\n\tHistory x1(0);\n\tHistory y1(0);\n\tR = 1 - twopi * 10 / samplerate;\n\ty = fixdenorm(x - x1 + R * y1);\n\tx1 = x;\n\ty1 = y;\n\treturn y;\n}\n\nhermite(xm1, x0, x1, x2, fq) {\n\tc1 = 0.5 * (x1 - xm1);\n\tc2 = xm1 - 2.5 * x0 + 2 * x1 - 0.5 * x2;\n\tc3 = 0.5 * (x2 - xm1) + 1.5 * (x0 - x1);\n\treturn ((c3 * fq + c2) * fq + c1) * fq + x0;\n}\n\nsoftclip(x, k, c) {\n\tax = abs(x);\n\ty = x;\n\tif (ax > k) {\n\t\tsg = (x >= 0) ? 1 : -1;\n\t\ty = sg * (k + (c - k) * tanh((ax - k) / (c - k)));\n\t}\n\treturn y;\n}\n\ntapesat(x, b) {\n\tHistory key_b(-99999);\n\tHistory c_tb(0);\n\tif (b != key_b) {\n\t\tc_tb = tanh(b);\n\t\tkey_b = b;\n\t}\n\ttb = c_tb;\n\treturn (tanh(x + b) - tb) / (1 - tb * tb);\n}\n\npsmooth(t, a) {\n\tHistory st_s(0);\n\tHistory init(0);\n\tif (init < 0.5) {\n\t\tst_s = t;\n\t\tinit = 1;\n\t}\n\tst_s = st_s + a * (t - st_s);\n\tif (abs(t - st_s) <= 0.000000001 * max(1, abs(t))) {\n\t\tst_s = t;\n\t}\n\treturn st_s;\n}\n\nfsmooth(fq, a) {\n\tHistory ls(0);\n\tHistory init(0);\n\tl_t = log(fq);\n\tif (init < 0.5) {\n\t\tls = l_t;\n\t\tinit = 1;\n\t}\n\tls = ls + a * (l_t - ls);\n\tif (abs(l_t - ls) <= 0.000000001) {\n\t\tls = l_t;\n\t}\n\treturn (ls == l_t) ? fq : exp(ls);\n}\n\n// JFET drain current, square law: Id = Idss (1 - Vgs/Vp)^2 for Vp < Vgs, else 0.\n// Vgs above +0.4 V is held there (gate-source diode conducts).\n// Source node: Rs in parallel with Cs (Cs = 0 when the bypass cap is out).\n// Backward-Euler step for the source node, solved in closed form:\n//   (Cs/dt + 1/Rs) Vs - (Cs/dt) Vs0 = Id(vg - Vs)\n// Returns (Id, Vs).\nfet_step(vg, vs0, cdt, rs, idss, vp) {\n\ta = cdt + 1 / rs;\n\tb = cdt * vs0;\n\tvgc = min(vg, 0.4 + vs0);\n\t// w = 1 - Vgs/Vp; Vs = Vp w - Vp + vg  ->  idss w^2 - a Vp w + (a Vp - a vg + b) = 0\n\tqa = idss;\n\tqb = -a * vp;\n\tqc = a * vp - a * vgc + b;\n\tdisc = qb * qb - 4 * qa * qc;\n\tidq = 0;\n\tvsq = b / a;                                  // cut-off: no drain current\n\tif (disc >= 0) {\n\t\tw = (-qb + sqrt(disc)) / (2 * qa);\n\t\tif (w > 0) {\n\t\t\tidq = idss * w * w;\n\t\t\tvsq = vp * w - vp + vgc;\n\t\t}\n\t}\n\treturn idq, vsq;\n}\n\n// Passive output mixer (EP-3; values from replica/forum traces [S11][S13]-[S15], APPROX until a\n// clean schematic): drain -0.1uF- A; A -470k- gnd; A -220k- B; B = Echo Volume lug 1;\n// B -100k- OUT. Echo amp -220k- E; E -100k- gnd; E = pot lug 3; E -100k- OUT.\n// The 500k pot's WIPER IS GROUNDED: k = 0 shorts the echo lug, k = 1 shorts the dry lug,\n// so Echo Volume is a blend and the dry level peaks near k = 0.2 (non-monotonic).\n// OUT drives the amp (1M) and the cable capacitance. Returns dry gain, echo gain and the\n// Thevenin resistance at OUT (which, with the cable C, sets the treble roll-off).\nmixer(k) {\n\trp3 = clamp(k, 0, 1) * 500000;\n\trp1 = 500000 - rp3;\n\tra = 22000 * 470000 / 492000;\n\tvbf = (470000 / 492000) * rp1 / (ra + 220000 + rp1);\n\trdb = (ra + 220000) * rp1 / (ra + 220000 + rp1) + 100000;\n\trsh = rp3 * 100000 / (rp3 + 100000);\n\tvef = rsh / (220000 + rsh);\n\treb = 220000 * rsh / (220000 + rsh) + 100000;\n\tgsum = 1 / rdb + 1 / reb + 0.000001;\n\treturn vbf / rdb / gsum, vef / reb / gsum, 1 / gsum;\n}\n\n// F1/F2 (v0.1.1): peak gain of the fixed playback/record loop chain for a de-emphasis corner fde:\n// tape HF loss (2-pole, 5188 Hz) x de-emphasis (1-pole fde, normalised to 1 at 1 kHz)\n// x couplings (30, 20, 10 Hz high-passes). The 1 kHz normalisation lifts the chain above 1 below\n// 1 kHz: peak 1.043 (334 Hz) for 3 nF and 3.383 (102 Hz) for 33 nF, matching measured per-pass\n// gains of 1.040 / 3.369 (validation/EP3_REMEDIATION_REPORT.md). Grid search, 20 Hz\u20134 kHz.\nloop_peak(fde) {\n\tnrm = sqrt(1 + (1000 / fde) * (1000 / fde));\n\tpk = 0;\n\tfor (ii = 0; ii < 96; ii += 1) {\n\t\tfq = 20 * pow(200, ii / 95);\n\t\tg_tp = 1 / sqrt(1 + pow(fq / 5188, 4));\n\t\tgd = nrm / sqrt(1 + (fq / fde) * (fq / fde));\n\t\tg30 = (fq / 30) / sqrt(1 + (fq / 30) * (fq / 30));\n\t\tg20 = (fq / 20) / sqrt(1 + (fq / 20) * (fq / 20));\n\t\tg10 = (fq / 10) / sqrt(1 + (fq / 10) * (fq / 10));\n\t\tpk = max(pk, g_tp * gd * g30 * g20 * g10);\n\t}\n\treturn pk;\n}\n\n// ---------- tape ------------------------------------------------------\n// 112.5 s * 48 000 cells/s (+ margin)\nData tape(5400064, 1);\n\n// ---------- parameters ------------------------------------------------\nParam in_gain_db(0, min=-36, max=12);\nParam dry(1, min=0, max=1);                  // Echolivity trim on the dry branch (1 = original)\nParam echo(0.5, min=0, max=1);               // ECHO VOLUME: the 500k blend pot (wiper grounded)\nParam echo_trim_db(0, min=-24, max=12);      // Echolivity trim on the echo branch\nParam out_db(0, min=-36, max=12);\nParam mode(2, min=0, max=2);\nParam bpm(120, min=20, max=999);\nParam sync_div(2, min=0, max=5);\nParam sync_type(0, min=0, max=2);\nParam sync_mult(1, min=1, max=8);\nParam offset_ms(0, min=-100, max=100);\nParam tap(0, min=0, max=1000000);\nParam tap_div(3, min=0, max=5);\nParam tap_type(0, min=0, max=2);\nParam bar_beats(4, min=1, max=16);\n// ECHO DELAY slider: delay is linear in head position at constant tape speed.\n// 60\u2013600 ms default = DAFX/CCRMA measured range [S3]; 80\u2013800 per [S4].\nParam slider_pos(0.5, min=0, max=1);\nParam slider_min_ms(60, min=2, max=2000);\nParam slider_max_ms(600, min=2, max=4000);\nParam glide_ms(40, min=1, max=2000);\nParam transition_ms(250, min=1, max=4000);\nParam head_slew(4, min=0.05, max=12);        // max head speed, in delay-seconds per second (APPROX)\n// EP-3 front panel / internal\nParam sustain(0.4, min=0, max=1);            // ECHO SUSTAIN (500k lin [S12]); runs away from 0.8 (test E14)\nParam rec_db(0, min=-12, max=12);            // RECORD LEVEL trimmer (internal on the original)\nParam sos(0, min=0, max=1);                  // ECHO / SOUND ON SOUND switch\nParam sos_db(-1, min=-6, max=0);             // SOS loss per pass; manual alignment: \"approximately 1dB\"\nParam echo_on(1, min=0, max=1);              // footswitch: echo on/off\nParam playback(0, min=0, max=1);             // footswitch: playback (record + erase off)\nParam pre_bypass(1, min=0, max=1);           // Q5 source bypass 0.022 uF (manual addendum) in/out\nParam cable_pf(470, min=0, max=2000);        // cable + amp input capacitance; 470 pF fits ClinchFX's descriptions (test E07)\nParam pb_eq(0, min=0, max=1);                // de-emphasis: 0 = 18k/0.003uF (forum), 1 = 18k/0.033uF (manual scan)\nParam bias_khz(100, min=40, max=120);        // \"approximate frequency of 100 KC\" [S1]\nParam bias_leak(0.3, min=0, max=1);          // bias heard on very fast slider moves (APPROX level)\nParam loop_s(8, min=1, max=112.5);           // F3 (v0.1.1): default 8 s for usable SOS/PLAYBACK; 112.5 s = ~75 ft at 8 ips [S18] (authentic)\n// tape character (Echolivity)\nParam sat(0.5, min=0, max=1);\nParam noise_db(-60, min=-120, max=-30);\nParam wow(0.1, min=0, max=1);                // slow drift\nParam flutter(0.25, min=0, max=1);           // 0.5 stays within the 0.3 % spec (E10: 0.256 %); capstan 26 Hz, pinch 2.5/5 Hz\n// performance (Echolivity)\nParam hold(0, min=0, max=1);\nParam hold_fb(1, min=0.9, max=1.05);\nParam drive(0, min=0, max=1);\nParam drive_db(12, min=0, max=24);\nParam drive_fb(0, min=0, max=1);\nParam tape_stop(0, min=0, max=1);\nParam stop_time(1, min=0.05, max=8);\nParam start_time(0.4, min=0.05, max=8);\nParam fb_hp_hz(10, min=10, max=2000);\nParam fb_lp_hz(20000, min=500, max=20000);\nParam fb_res(0, min=0, max=1);\nParam echo_hp_hz(10, min=10, max=2000);\nParam echo_lp_hz(20000, min=500, max=20000);\nParam protect(1, min=0, max=1);\nParam ceiling_db(-0.3, min=-12, max=0);\n\n// ---------- state -----------------------------------------------------\nHistory p(0);\nHistory d_head(-1);\nHistory Ts1(-1);\nHistory Ts2(-1);\nHistory w_prev(0);\nHistory rec_prev(0);\nHistory first(1);\nHistory s_stop(1);\nHistory hold_s(0);\nHistory drive_s(0);\nHistory sos_s(0);\nHistory echo_on_s(1);\nHistory echo_on_s2(1);\nHistory pb_s(0);\nHistory env(0);\nHistory prev_mode(-1);\nHistory trans_left(0);\nHistory nsamp(0);\nHistory tap_prev(0);\nHistory last_tap(-1);\nHistory t_count(0);\nHistory ti0(0);\nHistory ti1(0);\nHistory ti2(0);\nHistory ti3(0);\nHistory tap_bpm(120);\nHistory ph_cap(0);\nHistory ph_p1(0);\nHistory ph_p2(0);\nHistory drift(0);\nHistory fl_rnd(0);\nHistory last_sr(0);\nHistory vs_state(-1);\nHistory pg_hold(1);\nHistory pg_s(1);\nHistory ph_cnt(0);\nHistory u_out(1);\nHistory ck_pk3(-1);\nHistory ck_pk33(-1);\nHistory L_cur(-1);\nHistory hp_env(0);\nHistory hold_tgt(0);\nHistory hold_c(1);\nHistory hold_prev(0);\nHistory hold_cnt(0);\nHistory hold_pass(0);\nHistory hold_np(0);\nHistory hold_elast(0);\nHistory lg(1);\nHistory lg1(1);\nHistory lg_t(1);\nHistory lg_hold(0);\n// cached coefficients\nHistory ck_sr(-1);\nHistory ck_ps(0);\nHistory ck_a10(0);\nHistory ck_drift(0);\nHistory ck_flr(0);\nHistory ck_nnorm(1);\nHistory ck_up(0);\nHistory ck_dn(0);\nHistory ck_prel(0);\nHistory ck_patt(0);\nHistory ck_tau(-1);\nHistory ck_as(0);\nHistory ck_fkey(-99999);\nHistory ck_idq(0);\nHistory ck_vsq(0);\nHistory ck_dkey(-99999);\nHistory ck_dg(1);\nHistory ck_sat(-99999);\nHistory ck_gt(1);\nHistory ck_ing(-99999);\nHistory ck_ig(1);\nHistory ck_rkey(-99999);\nHistory ck_rg(1);\nHistory ck_skey(-99999);\nHistory ck_sg(0.891);\nHistory ck_nkey(-99999);\nHistory ck_ng(0);\nHistory ck_okey(-99999);\nHistory ck_kkey(-99999);\nHistory ck_gd(0.18);\nHistory ck_ge(0.13);\nHistory ck_rth(83000);\nHistory ck_en(1);\nHistory ck_etkey(-99999);\nHistory ck_et(1);\nHistory ck_og(1);\nHistory ck_ckey(-99999);\nHistory ck_cl(1);\n\nCR = 48000;                                  // tape cells per second at nominal speed\nNB = 5400064;\nVPF = 0.794;                                 // volts per full scale (100 mV = -18 dBFS RMS)\nRD = 22000;                                  // Q5 drain resistor [S1][S8]\nRS = 3300;                                   // Q5 source resistor [S1]\nCS = 0.000000022;                            // Q5 source bypass [S1 addendum]\nIDSS = 0.0034;                               // APPROX: fitted so Vs = 1.8 V at 21.2 V supply\nVP = -3.0;                                   //   (measured 1.72\u20131.88 V / 21.0\u201321.3 V on two units [S8])\nVDD = 21.2;\nFBIAS_MIN_SP = 0.45;                         // spatial Nyquist guard (cycles per tape cell)\n\nsr = samplerate;\nt = nsamp;\nnsamp = nsamp + 1;\nx = 0.5 * (fixnan(in1) + fixnan(in2));      // mono, like the original\n\nif (sr != last_sr) {\n\tif (last_sr > 0) {\n\t\tTs1 = -1;\n\t\tTs2 = -1;\n\t\td_head = -1;\n\t\tlast_tap = -1;\n\t\tt_count = 0;\n\t}\n\tlast_sr = sr;\n}\n\n// ================= TAP TEMPO (sample counter; as the H&H device) =======\nif (tap > tap_prev + 0.5) {\n\tif (last_tap >= 0) {\n\t\tiv = t - last_tap;\n\t\tif (iv < 0.15 * sr) {\n\t\t\tiv = -1;\n\t\t} else if (iv > 2 * sr) {\n\t\t\tt_count = 0;\n\t\t\tlast_tap = t;\n\t\t} else {\n\t\t\tif (t_count > 0) {\n\t\t\t\ttavg0 = (ti0 + ti1 + ti2 + ti3) / min(t_count, 4);\n\t\t\t\tif (abs(iv - tavg0) > 0.4 * tavg0) {\n\t\t\t\t\tt_count = 0;\n\t\t\t\t}\n\t\t\t}\n\t\t\tti3 = ti2;\n\t\t\tti2 = ti1;\n\t\t\tti1 = ti0;\n\t\t\tti0 = iv;\n\t\t\tif (t_count == 0) {\n\t\t\t\tti1 = 0;\n\t\t\t\tti2 = 0;\n\t\t\t\tti3 = 0;\n\t\t\t}\n\t\t\tt_count = min(t_count + 1, 4);\n\t\t\ttavg = (ti0 + ti1 + ti2 + ti3) / t_count;\n\t\t\ttap_bpm = 60 * sr / tavg;\n\t\t\tlast_tap = t;\n\t\t}\n\t} else {\n\t\tlast_tap = t;\n\t}\n}\ntap_prev = tap;\n\n// ================= TARGET DELAY TIME ==================================\ns_lo = min(slider_min_ms, slider_max_ms);\ns_hi = max(slider_min_ms, slider_max_ms);\nT = (s_lo + slider_pos * (s_hi - s_lo)) * 0.001;\nif (mode < 1.5) {\n\tuse_bpm = max(bpm, 20);\n\tdv_idx = floor(sync_div + 0.5);\n\ttyp = floor(sync_type + 0.5);\n\tif (mode >= 0.5) {\n\t\tuse_bpm = tap_bpm;\n\t\tdv_idx = floor(tap_div + 0.5);\n\t\ttyp = floor(tap_type + 0.5);\n\t}\n\tbeats = 0.125;\n\tif (dv_idx == 1) { beats = 0.25; }\n\telse if (dv_idx == 2) { beats = 0.5; }\n\telse if (dv_idx == 3) { beats = 1; }\n\telse if (dv_idx == 4) { beats = 2; }\n\telse if (dv_idx >= 5) { beats = bar_beats; }\n\tif (typ == 1) { beats = beats * 1.5; }\n\telse if (typ == 2) { beats = beats * 2 / 3; }\n\tT = 60 / use_bpm * beats * max(sync_mult, 1) + offset_ms * 0.001;\n}\nT = clamp(T, 0.002, 4);\n\n// sample-rate-dependent constants\nif (sr != ck_sr) {\n\tck_ps = 1 - exp(-1 / (0.010 * sr));\n\tck_a10 = ck_ps;\n\tck_drift = 1 - exp(-twopi * 0.5 / sr);\n\tck_flr = 1 - exp(-twopi * 20 / sr);\n\ta_n0 = 1 - exp(-twopi * min(10000, 0.49 * sr) / sr);\n\tck_nnorm = sqrt((1 / 3) * a_n0 / (2 - a_n0));\n\tck_up = 1 - exp(-1 / (0.001 * sr));\n\tck_dn = 1 - exp(-1 / (0.200 * sr));\n\tck_prel = 1 - exp(-1 / (0.150 * sr));\n\tck_patt = 1 - exp(-1 / (0.0005 * sr));\n\tck_sr = sr;\n\tck_tau = -1;\n\tck_fkey = -99999;\n\tck_nkey = -99999;\n}\n\n// smoothed continuous parameters\nsm_in_gain_db = psmooth(in_gain_db, ck_ps);\nsm_dry = psmooth(dry, ck_ps);\nsm_echo = psmooth(echo, ck_ps);\nsm_echo_trim_db = psmooth(echo_trim_db, ck_ps);\nsm_out_db = psmooth(out_db, ck_ps);\nsm_sustain = psmooth(sustain, ck_ps);\nsm_rec_db = psmooth(rec_db, ck_ps);\nsm_sos_db = psmooth(sos_db, ck_ps);\nsm_bias_leak = psmooth(bias_leak, ck_ps);\nsm_sat = psmooth(sat, ck_ps);\nsm_noise_db = psmooth(noise_db, ck_ps);\nsm_wow = psmooth(wow, ck_ps);\nsm_flutter = psmooth(flutter, ck_ps);\nsm_hold_fb = psmooth(hold_fb, ck_ps);\nsm_drive_db = psmooth(drive_db, ck_ps);\nsm_fb_res = psmooth(fb_res, ck_ps);\nsm_cable_pf = psmooth(cable_pf, ck_ps);\nsm_bias_khz = fsmooth(bias_khz, ck_ps);\nsm_fb_hp_hz = fsmooth(fb_hp_hz, ck_ps);\nsm_fb_lp_hz = fsmooth(fb_lp_hz, ck_ps);\nsm_echo_hp_hz = fsmooth(echo_hp_hz, ck_ps);\nsm_echo_lp_hz = fsmooth(echo_lp_hz, ck_ps);\n// ceiling_db is not smoothed (see H&H test P05)\n\nif (mode != prev_mode) {\n\tif (prev_mode >= 0) {\n\t\ttrans_left = transition_ms * 0.001 * sr * 3;\n\t}\n\tprev_mode = mode;\n}\ntau_ms = glide_ms;\nif (trans_left > 0) {\n\ttau_ms = max(transition_ms, glide_ms);\n\ttrans_left = trans_left - 1;\n}\nif (tau_ms != ck_tau) {\n\tck_as = 1 - exp(-1 / (max(tau_ms, 0.5) * 0.001 * sr));\n\tck_tau = tau_ms;\n}\na_s = ck_as;\nTc = T * CR;                                 // target head distance in tape cells\nif (Ts1 < 0) {\n\tTs1 = Tc;\n\tTs2 = Tc;\n}\nTs1 = Ts1 + a_s * (Tc - Ts1);\nTs2 = Ts2 + a_s * (Ts1 - Ts2);\n\n// ================= TRANSPORT ==========================================\nif (tape_stop > 0.5) {\n\ts_stop = max(0, s_stop - 1 / (max(stop_time, 0.02) * sr));\n} else {\n\ts_stop = min(1, s_stop + 1 / (max(start_time, 0.02) * sr));\n}\n// F6 (v0.1.1): a Loop Length change moves the wrap point, so the heads land on other tape.\n// Fade the playback (echo + feedback) out with a smooth 2-stage curve (3 ms stages, ~40 ms to\n// silence), apply the new length, keep it muted until freshly recorded tape reaches the echo\n// head (one delay + 5 ms: the tape between the heads still holds old material), then fade in.\nL_tgt = floor(clamp(loop_s, 1, 112.5) * CR);\nif (L_cur < 0) {\n\tL_cur = L_tgt;\n}\nlg_t = 1;\nif (L_tgt != L_cur) {\n\tlg_t = 0;\n\tif (lg < 0.0001) {\n\t\tL_cur = L_tgt;\n\t\tfirst = 1;                               // restart the write-head tracking on the new loop\n\t\tlg_hold = Ts2 * sr / CR + 0.005 * sr;    // one delay (target head distance) + 5 ms\n\t}\n}\nif (lg_hold > 0) {\n\tlg_t = 0;\n\tlg_hold = lg_hold - 1;\n}\na_lg = 1 - exp(-1 / (0.003 * sr));\nlg1 = lg1 + a_lg * (lg_t - lg1);\nlg = lg + a_lg * (lg1 - lg);\nL = L_cur;\n\n// flutter: capstan 26 Hz, pinch wheel 2.5 / 5.0 Hz (measured on an Echoplex [S5]),\n// plus a little broadband flutter and slow drift. flutter = 0.5 -> within the 0.3 % spec (E10: 0.256 % peak).\nph_cap = ph_cap + 26 / sr;\nph_cap = ph_cap - floor(ph_cap);\nph_p1 = ph_p1 + 2.5 / sr;\nph_p1 = ph_p1 - floor(ph_p1);\nph_p2 = ph_p2 + 5.0 / sr;\nph_p2 = ph_p2 - floor(ph_p2);\ndrift = drift + ck_drift * (noise() * 3 - drift);\nfl_rnd = fl_rnd + ck_flr * (noise() * 2 - fl_rnd);\nwf = sm_flutter * 0.006 * (0.45 * sin(twopi * ph_cap) + 0.3 * sin(twopi * ph_p1) + 0.15 * sin(twopi * ph_p2) + 0.1 * fl_rnd)\n   + sm_wow * 0.005 * drift;\n\nv_eff = clamp(s_stop * (1 + wf), 0, 2);\nvc = v_eff * CR / sr;                        // tape cells per sample\n\n// ---- record head position (moving) with a head-speed limit\nif (d_head < 0) {\n\td_head = Ts2;\n}\nhs = max(head_slew, 0.05) * CR / sr;         // cells per sample\nd_head = d_head + clamp(Ts2 - d_head, -hs, hs);\nd = clamp(d_head, 16, L - 64);\n// SOS head: fixed just upstream of the slider's far end (APPROX gap 62.5 ms = 0.5 in at 8 ips)\nd_sos = clamp((s_hi + 62.5) * 0.001 * CR, d + 1, L - 32);\n\np_new = wrap(p + vc, 0, L);\nw_new = p_new + d;                           // write position (unwrapped relative to p_new)\nw_old = w_prev;\nif (first > 0.5) {\n\tw_old = w_new - vc;\n\tfirst = 0;\n}\n// keep w_old in the same unwrapped frame as w_new\nif (w_old - w_new > 0.5 * L) {\n\tw_old = w_old - L;\n} else if (w_new - w_old > 0.5 * L) {\n\tw_old = w_old + L;\n}\nu_cps = w_new - w_old;                       // head speed over tape, cells per sample\nu_out = u_cps / max(CR / sr, 0.000001);      // 1 = normal recording speed\n\n// ================= gates & per-sample coefficients ====================\nhold_s = hold_s + ck_a10 * (hold - hold_s);\ndrive_s = drive_s + ck_a10 * (drive - drive_s);\nsos_s = sos_s + ck_a10 * (sos - sos_s);\necho_on_s = echo_on_s + ck_a10 * (echo_on - echo_on_s);\necho_on_s2 = echo_on_s2 + ck_a10 * (echo_on_s - echo_on_s2);   // 2-stage: no corner at the switch\npb_s = pb_s + ck_a10 * (playback - pb_s);\ndkey = drive_s * sm_drive_db;\nif (dkey != ck_dkey) {\n\tck_dg = pow(10, dkey / 20);\n\tck_dkey = dkey;\n}\ndrive_gain = ck_dg;\nif (sm_sat != ck_sat) {\n\tck_gt = 0.6 * pow(4, 2 * (sm_sat - 0.5));  // 0.5: ~2-3 % THD at nominal level (calibration test E05: 2.1 %)\n\tck_sat = sm_sat;\n}\ng_t = ck_gt;\nif (sm_in_gain_db != ck_ing) {\n\tck_ig = pow(10, sm_in_gain_db / 20);\n\tck_ing = sm_in_gain_db;\n}\nif (sm_rec_db != ck_rkey) {\n\tck_rg = pow(10, sm_rec_db / 20);\n\tck_rkey = sm_rec_db;\n}\nif (sm_sos_db != ck_skey) {\n\tck_sg = pow(10, sm_sos_db / 20);\n\tck_skey = sm_sos_db;\n}\nif (sm_noise_db != ck_nkey) {\n\tck_ng = (sm_noise_db > -119) ? pow(10, sm_noise_db / 20) / ck_nnorm : 0;\n\tck_nkey = sm_noise_db;\n}\n// F1/F2 (v0.1.1): scale by the chain's peak loop gain instead of assuming it is 1.\n// Sustain: x (pk3 / pk) keeps the 3 nF behaviour exactly (factor 1.0) and gives 33 nF the\n// same peak loop gain (same runaway point). HOLD: / pk makes the per-pass peak gain equal to\n// Hold Feedback, so 1.0 holds the loop instead of growing.\nif (ck_pk3 < 0) {\n\tck_pk3 = loop_peak(2947);\n\tck_pk33 = loop_peak(268);\n}\npbs = psmooth(pb_eq, ck_ps);                 // F4: de-emphasis switch is crossfaded (10 ms)\npk_loop = (1 - pbs) * ck_pk3 + pbs * ck_pk33;\nfb_amt = (sm_sustain * 1.25) * (ck_pk3 / pk_loop) * (1 - hold_s) + (sm_hold_fb / pk_loop) * hold_c * hold_s;\nfb_amt = fb_amt * (1 - sos_s);               // ECHO/SUSTAIN not operative in SOS [S1]\nq_fb = 0.707 + sm_fb_res * 6;\ndfb_g = (drive_fb > 0.5) ? drive_gain : 1;\n\n// ================= Q5 FET INPUT STAGE (always in circuit) =============\nfkey = pre_bypass * 7 + sr;\nif (fkey != ck_fkey) {\n\t// quiescent point (no signal): source cap fully charged, so cdt = 0\n\tqi, qv = fet_step(0, 0, 0, RS, IDSS, VP);\n\tck_idq = qi;\n\tck_vsq = qv;\n\tck_fkey = fkey;\n\tif (vs_state < 0) {\n\t\tvs_state = qv;\n\t}\n}\nsm_pre = psmooth(pre_bypass, ck_ps);         // F4 (v0.1.1): source cap switched over 10 ms\ncdt = CS * sr * sm_pre;\nvg = lp1(x, 15915) * VPF * ck_ig;            // input RF filter: 100k series, 100 pF to ground [S14]\nid_n, vs_n = fet_step(vg, vs_state, cdt, RS, IDSS, VP);\nvs_state = fixdenorm(vs_n);\n// drain cannot fall below the source (+0.3 V): limits large positive swings\nid_c = min(id_n, (VDD - vs_n - 0.3) / RD);\nvac = (id_c - ck_idq) * RD;                  // drain AC (V); sign flipped so the device is non-inverting\npre = vac / VPF;                             // back to full-scale units (EP-3 gain kept)\n// output mixer coefficients (recomputed only when Echo Volume moves)\nif (sm_echo != ck_kkey) {\n\tgd, ge, rt = mixer(sm_echo);\n\tgd5, ge5, rt5 = mixer(0.5);\n\tck_gd = gd;\n\tck_ge = ge;\n\tck_rth = rt;\n\tck_en = gd5 / ge5;                       // echo source level: first repeat ~ dry level at k = 0.5 (APPROX)\n\tck_kkey = sm_echo;\n}\ndry_br = hp1(pre, 7) * ck_gd * sm_dry;       // 0.1 uF coupling into ~260k: ~7 Hz\n\n// ================= ECHO HEAD READ (fixed) =============================\nri = floor(p_new);\nrf = p_new - ri;\ni0 = wrap(ri, 0, L);\nim1 = wrap(i0 - 1, 0, L);\nip1 = wrap(i0 + 1, 0, L);\nip2 = wrap(i0 + 2, 0, L);\nm0 = peek(tape, im1, 0);\nc0 = peek(tape, i0, 0);\nn0 = peek(tape, ip1, 0);\nq0 = peek(tape, ip2, 0);\ny_echo = hermite(m0, c0, n0, q0, rf);\n// SOS head (monitors the loop before it reaches the record head)\nrs_pos = p_new + d_sos;\nrsi = floor(rs_pos);\nrsf = rs_pos - rsi;\nj0 = wrap(rsi, 0, L);\njm1 = wrap(j0 - 1, 0, L);\njp1 = wrap(j0 + 1, 0, L);\njp2 = wrap(j0 + 2, 0, L);\nsm0 = peek(tape, jm1, 0);\nsc0 = peek(tape, j0, 0);\nsn0 = peek(tape, jp1, 0);\nsq0 = peek(tape, jp2, 0);\ny_sos = hermite(sm0, sc0, sn0, sq0, rsf);\n\n// ================= PLAYBACK CHAIN =====================================\ngp = min(1, v_eff / 0.15);                   // head output falls away as the tape stops\nfc_tape = clamp(5188 * v_eff, 50, 0.45 * sr); // tape HF loss: H&H fit (7782 Hz @ 12 ips) x 8/12  APPROX\nyraw = y_echo * (1 - sos_s) + y_sos * sos_s; // SOS: you hear the SOS head [S1]\ntl, tb_, th = svf(yraw * gp, fc_tape, 0.707);\n// de-emphasis: 18k with 0.003 uF (forum, 2947 Hz) / 0.033 uF (manual scan, 268 Hz); both run and\n// are crossfaded (F4). Each is normalised at 1 kHz so both give the same mid level.\ny3 = lp1(tl, 2947);\ny33 = lp1(tl, 268);\nypb = (y3 * sqrt(1 + (1000 / 2947) * (1000 / 2947))) * (1 - pbs) + (y33 * sqrt(1 + (1000 / 268) * (1000 / 268))) * pbs;\nypb = ypb * lg;                              // F6 fade\nypb = hp1(ypb, 30);                          // head-amp coupling APPROX\nypb = ypb + lp1(noise(), 10000) * ck_ng;\n// F1 (v0.1.1): HOLD level trim. A fixed loop gain cannot freeze a loop: tape saturation\n// compresses slightly at playing level and frequencies off the loop's peak decay. While HOLD\n// is on, the playback power is compared with a target, and the hold gain is trimmed by at most\n// +-3 % per pass. Settling: after HOLD is pressed the target may only fall (the loop darkens\n// naturally but never grows) until the loop stops losing level (< 1 dB over a pass, at least\n// 2 passes; at most 30 s); then it is locked and changes by Hold Feedback^2 per pass\n// (1.0 = frozen), never sitting more than 1.5 dB above the loop's own level. Outside HOLD hold_c = 1 and nothing changes.\nhp_env = fixdenorm(hp_env + (1 - exp(-1 / (0.3 * sr))) * (ypb * ypb - hp_env));\ndsamp = max(d / max(vc, 0.000001), 1);\nif (hold > 0.5 && hold_prev < 0.5) {\n\thold_tgt = hp_env;\n\thold_cnt = 30 * sr;                          // settling time limit (dark voicing needs the longest)\n\thold_pass = dsamp + 0.3 * sr;                 // first check after one pass + envelope settle\n\thold_np = 0;\n\thold_elast = hp_env;\n}\nhold_prev = hold;\nif (hold > 0.5) {\n\tif (hold_cnt > 0) {\n\t\thold_tgt = min(hold_tgt, hp_env);\n\t\thold_cnt = hold_cnt - 1;\n\t\thold_pass = hold_pass - 1;\n\t\tif (hold_pass <= 0) {\n\t\t\thold_np = hold_np + 1;\n\t\t\tif (hold_np >= 2 && hp_env > 0.794 * hold_elast) {\n\t\t\t\thold_cnt = 0;                    // lost < 1 dB over the last pass: lock\n\t\t\t}\n\t\t\thold_elast = hp_env;\n\t\t\thold_pass = dsamp;\n\t\t}\n\t\tcc = (hold_tgt > 0.0000000001) ? clamp(sqrt(hold_tgt / max(hp_env, 0.00000000000000000001)), 0.97, 1) : 0.97;\n\t} else {\n\t\thold_tgt = fixdenorm(hold_tgt * exp(2 * log(max(sm_hold_fb, 0.01)) / dsamp));\n\t\t// a shortfall beyond 1.5 dB is spectral loss (e.g. the dark voicing shedding its mids), not\n\t\t// saturation: let the target follow, so the trim never pumps the loop back up by more than 1.5 dB\n\t\thold_tgt = min(hold_tgt, hp_env * 1.413);\n\t\tcc = (hold_tgt > 0.0000000001) ? clamp(sqrt(hold_tgt / max(hp_env, 0.00000000000000000001)), 0.97, 1.03) : 0.97;\n\t}\n\thold_c = hold_c + (1 - exp(-1 / (0.2 * sr))) * (cc - hold_c);\n} else {\n\thold_c = hold_c + (1 - exp(-1 / (0.2 * sr))) * (1 - hold_c);\n}\n// Echo Sustain feedback, with the Echolivity feedback filters\nf1l, f1b, f1h = svf(ypb, sm_fb_hp_hz, q_fb);\nf2l, f2b, f2h = svf(f1h, sm_fb_lp_hz, q_fb);\nguard = (env > 1.5) ? 1.5 / env : 1;\nfbs = f2l * fb_amt * guard * dfb_g;\nenv = fixdenorm(env + ((abs(f2l * fb_amt) > env) ? ck_up : ck_dn) * (abs(f2l * fb_amt) - env));\n\n// ================= RECORD CHAIN =======================================\nu = pre * ck_rg * drive_gain * (1 - hold_s) + fbs;\nu = hp1(u, 20);\nu = tapesat(u * g_t * drive_gain, 0.05) / g_t;\nu = dc_block(u);\n// write anti-alias: the head's speed over the tape sets the tape's sample spacing\n// spatial Nyquist: a frequency f lands at f / (|u_cps| sr) cycles per cell, which must stay < 0.5\n// 4th-order Butterworth at 0.35 sr |u|: everything that plays back below 0.35 sr (16.8 kHz @ 48k)\n// is kept; what would land above Nyquist is >= 40 dB down before the head samples it (test E03)\nfc_w = clamp(0.35 * sr * abs(u_cps), 20, 0.45 * sr);\nrl1, rb1, rh1 = svf(u, fc_w, 0.5412);\nrl, rb, rh = svf(rl1, fc_w, 1.3066);\nrec = fixnan(rl);\n\n// ================= RECORD/ERASE HEAD: fill every cell crossed =========\n// ECHO: erase + record (overwrite). SOS: erase off, new is added to the old\n// layer, which loses sos_db per pass. PLAYBACK: record and erase off.\nwr_gain = 1 - pb_s;\nsp_bias = sm_bias_khz * 1000 / (max(abs(u_cps), 0.000001) * sr);  // bias cycles per tape cell\nbias_amp = 0;\nif (sp_bias < FBIAS_MIN_SP) {\n\tbias_amp = sm_bias_leak * 0.1 * min(1, (FBIAS_MIN_SP - sp_bias) / 0.1);   // level APPROX\n}\nif (wr_gain > 0.0001 && abs(u_cps) > 0.000001) {\n\tklo = (u_cps > 0) ? floor(w_old) + 1 : -floor(-w_new);      // -floor(-x) = ceil(x)\n\tkhi = (u_cps > 0) ? floor(w_new) : -floor(-w_old) - 1;\n\tfor (k = klo; k <= khi; k += 1) {\n\t\tfq = (k - w_old) / u_cps;\n\t\tki = wrap(k, 0, L);\n\t\tval = rec_prev + fq * (rec - rec_prev);\n\t\tif (bias_amp > 0) {\n\t\t\tval = val + bias_amp * sin(twopi * sm_bias_khz * 1000 * ((t - 1 + fq) / sr));\n\t\t}\n\t\told = peek(tape, ki, 0);\n\t\tkeep = sos_s * ck_sg;                            // SOS keeps the old layer\n\t\tnv = old * (1 - wr_gain) + wr_gain * (old * keep + val);\n\t\tpoke(tape, nv, ki, 0);\n\t}\n}\nrec_prev = rec;\nw_prev = w_new;\np = p_new;\n\n// ================= OUTPUT =============================================\ne1l, e1b, e1h = svf(ypb, sm_echo_hp_hz, 0.707);\ne2l, e2b, e2h = svf(e1h, sm_echo_lp_hz, 0.707);\nech = dc_block(e2l) * echo_on_s2;\nif (sm_out_db != ck_okey) {\n\tck_og = pow(10, sm_out_db / 20);\n\tck_okey = sm_out_db;\n}\nif (sm_echo_trim_db != ck_etkey) {\n\tck_et = pow(10, sm_echo_trim_db / 20);\n\tck_etkey = sm_echo_trim_db;\n}\no_mix = dry_br + ech * ck_en * ck_ge * ck_et;\n// F4 (v0.1.1): the cable filter always runs (no stale state); below 1 pF it is blended out\no_lp = lp1(o_mix, 1 / (twopi * ck_rth * max(sm_cable_pf, 1) * 0.000000000001));\nif (sm_cable_pf >= 1) {\n\to_mix = o_lp;\n} else if (sm_cable_pf > 0) {\n\to_mix = o_mix + sm_cable_pf * (o_lp - o_mix);\n}\no1 = fixnan(o_mix * ck_og);\no2 = o1;\n\n// ================= OUTPUT PROTECTION (as the H&H device) =================\nif (ceiling_db != ck_ckey) {\n\tck_cl = pow(10, ceiling_db / 20);\n\tck_ckey = ceiling_db;\n}\nc_lin = ck_cl;\nthr = c_lin * 0.944061;\npk = abs(o1);\nover = (pk > thr) ? 1 : 0;\npg = 1;\nif (protect > 0.5) {\n\tgreq = (pk > thr) ? thr / pk : 1;\n\tif (greq < pg_hold) {\n\t\tpg_hold = greq;\n\t\tph_cnt = 0.010 * sr;\n\t} else if (ph_cnt > 0) {\n\t\tph_cnt = ph_cnt - 1;\n\t} else {\n\t\tpg_hold = pg_hold + ck_prel * (1 - pg_hold);\n\t}\n\tif (pg_hold < pg_s) {\n\t\tpg_s = pg_s + ck_patt * (pg_hold - pg_s);\n\t} else {\n\t\tpg_s = pg_hold;\n\t}\n\tpg = pg_s;\n\to1 = softclip(o1 * pg, thr, c_lin);\n\to2 = o1;\n} else {\n\tpg_hold = 1;\n\tpg_s = 1;\n\tph_cnt = 0;\n}\n\nout1 = o1;\nout2 = o2;\nout3 = (d / max(vc, 0.000000001)) / sr * 1000;\nout4 = tap_bpm;\nout5 = u_out;\nout6 = v_eff;\nout7 = pg;\nout8 = over;\n",
         "fontface": 0,
         "fontname": "<Monospaced>",
         "fontsize": 11.0,
         "numinlets": 2,
         "numoutlets": 8,
         "outlettype": [
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          ""
         ],
         "patching_rect": [
          20,
          60,
          900,
          700
         ]
        }
       },
       {
        "box": {
         "id": "g-in1",
         "maxclass": "newobj",
         "text": "in 1",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          20,
          20,
          30,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-in2",
         "maxclass": "newobj",
         "text": "in 2",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          880,
          20,
          30,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out1",
         "maxclass": "newobj",
         "text": "out 1",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out2",
         "maxclass": "newobj",
         "text": "out 2",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          140,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out3",
         "maxclass": "newobj",
         "text": "out 3",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          260,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out4",
         "maxclass": "newobj",
         "text": "out 4",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          380,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out5",
         "maxclass": "newobj",
         "text": "out 5",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          500,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out6",
         "maxclass": "newobj",
         "text": "out 6",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          620,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out7",
         "maxclass": "newobj",
         "text": "out 7",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          740,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out8",
         "maxclass": "newobj",
         "text": "out 8",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          860,
          780,
          40,
          22
         ]
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "g-in1",
          0
         ],
         "destination": [
          "g-code",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-in2",
          0
         ],
         "destination": [
          "g-code",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          0
         ],
         "destination": [
          "g-out1",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          1
         ],
         "destination": [
          "g-out2",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          2
         ],
         "destination": [
          "g-out3",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          3
         ],
         "destination": [
          "g-out4",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          4
         ],
         "destination": [
          "g-out5",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          5
         ],
         "destination": [
          "g-out6",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          6
         ],
         "destination": [
          "g-out7",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          7
         ],
         "destination": [
          "g-out8",
          0
         ]
        }
       }
      ]
     }
    }
   },
   {
    "box": {
     "id": "obj-116",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      320,
      870,
      130,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "text": "record~ out_BEH2_hold_dark 1"
    }
   },
   {
    "box": {
     "id": "obj-117",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      470,
      766,
      80,
      22
     ],
     "outlettype": [
      "bang"
     ],
     "text": "delay 32300"
    }
   },
   {
    "box": {
     "id": "obj-118",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      470,
      796,
      40,
      22
     ],
     "outlettype": [
      "bang",
      "bang"
     ],
     "text": "t b b"
    }
   },
   {
    "box": {
     "id": "obj-119",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      470,
      826,
      30,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "0"
    }
   },
   {
    "box": {
     "id": "obj-120",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      470,
      900,
      250,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "writewave out_BEH2_hold_dark_max.wav"
    }
   },
   {
    "box": {
     "id": "obj-121",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      320,
      930,
      290,
      20
     ],
     "text": "\u2192 writes out_BEH2_hold_dark_max.wav",
     "fontsize": 10.0
    }
   },
   {
    "box": {
     "id": "obj-122",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      470,
      704,
      80,
      22
     ],
     "outlettype": [
      "bang"
     ],
     "text": "delay 1000"
    }
   },
   {
    "box": {
     "id": "obj-123",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      555,
      704,
      55,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "hold 1"
    }
   },
   {
    "box": {
     "id": "obj-124",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620,
      600,
      290,
      20
     ],
     "text": "BEH3_echo_tone_switch \u2014 tier B (behaviour), 3 s",
     "fontsize": 10.5
    }
   },
   {
    "box": {
     "id": "obj-125",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      620,
      624,
      290,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "noise_db -120, wow 0, flutter 0, sustain 0.5, slider_pos 0.1"
    }
   },
   {
    "box": {
     "id": "obj-126",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      620,
      652,
      230,
      22
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ in_BEH3_echo_tone_switch in_BEH3_echo_tone_switch.wav"
    }
   },
   {
    "box": {
     "id": "obj-127",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      620,
      676,
      230,
      22
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ out_BEH3_echo_tone_switch 3600 1"
    }
   },
   {
    "box": {
     "id": "obj-128",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      620,
      704,
      140,
      26
     ],
     "outlettype": [
      "",
      "",
      "int"
     ],
     "text": "RUN BEH3"
    }
   },
   {
    "box": {
     "id": "obj-129",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      620,
      738,
      60,
      22
     ],
     "outlettype": [
      "bang",
      "bang",
      "bang"
     ],
     "text": "t b b b"
    }
   },
   {
    "box": {
     "id": "obj-130",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      690,
      766,
      30,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "1"
    }
   },
   {
    "box": {
     "id": "obj-131",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      620,
      766,
      40,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "start"
    }
   },
   {
    "box": {
     "id": "obj-132",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      620,
      796,
      120,
      22
     ],
     "outlettype": [
      "signal",
      "bang"
     ],
     "text": "play~ in_BEH3_echo_tone_switch 1"
    }
   },
   {
    "box": {
     "id": "obj-133",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      620,
      832,
      120,
      22
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "text": "gen~",
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 0,
       "revision": 0,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "dsp.gen",
      "rect": [
       50,
       50,
       960,
       840
      ],
      "boxes": [
       {
        "box": {
         "id": "g-code",
         "maxclass": "codebox",
         "code": "// FALLBACK NAMES BUILD (not a release): identical engine with locals that share Gen operator names renamed\n// (s->st_s, f->fq, i->ii, gtp->g_tp, r->rdp). Use only if gen~ reports an error on one of those names.\n// =====================================================================\n// ECHOLIVITY \u2014 EP-3 (Maestro Echoplex EP-3 model) \u00b7 tape engine v0.1.2-dev\n// v0.1.2-dev: identifiers renamed that collide with gen~ built-ins (dcblock -> dc_block,\n// lt -> l_t); no functional change (bit-identical, test R06/X01).\n// v0.1.1-dev remediation (see CHANGELOG / validation/EP3_REMEDIATION_REPORT.md): F1 HOLD loop gain,\n// F2 33 nF feedback runaway, F3 8 s default loop, F4 click-free DE-EMPH / Cable / Source-cap\n// changes, F6 loop-length change fade.\n// gen~ codebox. Status of every value: docs/EP3_MODELING_NOTES.md\n//\n// Signal flow (EP-3 manual, Maestro owner/service manual [S1]):\n//   input -> Q5 FET stage (TIS58, 22k drain, 3.3k source, 0.022 uF source\n//   bypass = pre-emphasis) -> dry out (high output Z into cable C)\n//                           -> record level -> record amp -> RECORD/ERASE HEAD\n//   (moving, on the slider) -> tape (8 ips, ~75 ft loop) -> fixed ECHO head\n//   -> head amp + de-emphasis -> Echo Sustain (feedback) / Echo Volume (blend\n//   pot in the passive output mixer, wiper grounded) -> output (high Z, into the cable)\n//   SOS: SOS head (upstream of the record head) monitors the loop; erase off,\n//   new material is added to the old layer (-1 dB per pass, manual alignment).\n//\n// The record head moves, so a slider move changes how sound is WRITTEN on the\n// tape (pitch change heard one delay later). The write is band-limited (pre-\n// write low-pass that follows the head's speed over the tape, after\n// Arnardottir/Abel/Smith 2008) and fills every tape cell the head crosses.\n//\n// Tape buffer: fixed 48 000 cells per second of tape at nominal speed, so the\n// 112.5 s loop costs the same memory at any sample rate.\n// Level convention: 100 mV == -18 dBFS RMS (same as the H&H device).\n// Mono like the original: L+R are summed at the input; out1 == out2.\n//\n// out1/out2: audio   out3: delay (ms)   out4: tap BPM\n// out5: record-head write speed over tape (1 = normal)   out6: tape speed\n// out7: output-protection gain   out8: output over flag\n// =====================================================================\n\n// ---------- stateful helpers (each call site gets its own state) ------\nsvf(x, fc, q) {\n\tHistory s1(0);\n\tHistory s2(0);\n\tHistory key_fc(-1);\n\tHistory key_q(-1);\n\tHistory key_sr(-1);\n\tHistory c_k(0);\n\tHistory c_a1(0);\n\tHistory c_a2(0);\n\tHistory c_a3(0);\n\tif (fc != key_fc || q != key_q || samplerate != key_sr) {\n\t\tfcc = clamp(fc, 5, samplerate * 0.49);\n\t\tg = tan(pi * fcc / samplerate);\n\t\tc_k = 1 / q;\n\t\tc_a1 = 1 / (1 + g * (g + c_k));\n\t\tc_a2 = g * c_a1;\n\t\tc_a3 = g * c_a2;\n\t\tkey_fc = fc;\n\t\tkey_q = q;\n\t\tkey_sr = samplerate;\n\t}\n\tv3 = x - s2;\n\tv1 = c_a1 * s1 + c_a2 * v3;\n\tv2 = s2 + c_a2 * s1 + c_a3 * v3;\n\ts1 = fixdenorm(2 * v1 - s1);\n\ts2 = fixdenorm(2 * v2 - s2);\n\treturn v2, v1, x - c_k * v1 - v2;\n}\n\nlp1(x, fc) {\n\tHistory z(0);\n\tHistory key_fc(-1);\n\tHistory key_sr(-1);\n\tHistory c_a(0);\n\tif (fc != key_fc || samplerate != key_sr) {\n\t\tc_a = 1 - exp(-twopi * min(fc, samplerate * 0.49) / samplerate);\n\t\tkey_fc = fc;\n\t\tkey_sr = samplerate;\n\t}\n\tz = fixdenorm(z + c_a * (x - z));\n\treturn z;\n}\n\nhp1(x, fc) {\n\treturn x - lp1(x, fc);\n}\n\ndc_block(x) {\n\tHistory x1(0);\n\tHistory y1(0);\n\tR = 1 - twopi * 10 / samplerate;\n\ty = fixdenorm(x - x1 + R * y1);\n\tx1 = x;\n\ty1 = y;\n\treturn y;\n}\n\nhermite(xm1, x0, x1, x2, fq) {\n\tc1 = 0.5 * (x1 - xm1);\n\tc2 = xm1 - 2.5 * x0 + 2 * x1 - 0.5 * x2;\n\tc3 = 0.5 * (x2 - xm1) + 1.5 * (x0 - x1);\n\treturn ((c3 * fq + c2) * fq + c1) * fq + x0;\n}\n\nsoftclip(x, k, c) {\n\tax = abs(x);\n\ty = x;\n\tif (ax > k) {\n\t\tsg = (x >= 0) ? 1 : -1;\n\t\ty = sg * (k + (c - k) * tanh((ax - k) / (c - k)));\n\t}\n\treturn y;\n}\n\ntapesat(x, b) {\n\tHistory key_b(-99999);\n\tHistory c_tb(0);\n\tif (b != key_b) {\n\t\tc_tb = tanh(b);\n\t\tkey_b = b;\n\t}\n\ttb = c_tb;\n\treturn (tanh(x + b) - tb) / (1 - tb * tb);\n}\n\npsmooth(t, a) {\n\tHistory st_s(0);\n\tHistory init(0);\n\tif (init < 0.5) {\n\t\tst_s = t;\n\t\tinit = 1;\n\t}\n\tst_s = st_s + a * (t - st_s);\n\tif (abs(t - st_s) <= 0.000000001 * max(1, abs(t))) {\n\t\tst_s = t;\n\t}\n\treturn st_s;\n}\n\nfsmooth(fq, a) {\n\tHistory ls(0);\n\tHistory init(0);\n\tl_t = log(fq);\n\tif (init < 0.5) {\n\t\tls = l_t;\n\t\tinit = 1;\n\t}\n\tls = ls + a * (l_t - ls);\n\tif (abs(l_t - ls) <= 0.000000001) {\n\t\tls = l_t;\n\t}\n\treturn (ls == l_t) ? fq : exp(ls);\n}\n\n// JFET drain current, square law: Id = Idss (1 - Vgs/Vp)^2 for Vp < Vgs, else 0.\n// Vgs above +0.4 V is held there (gate-source diode conducts).\n// Source node: Rs in parallel with Cs (Cs = 0 when the bypass cap is out).\n// Backward-Euler step for the source node, solved in closed form:\n//   (Cs/dt + 1/Rs) Vs - (Cs/dt) Vs0 = Id(vg - Vs)\n// Returns (Id, Vs).\nfet_step(vg, vs0, cdt, rs, idss, vp) {\n\ta = cdt + 1 / rs;\n\tb = cdt * vs0;\n\tvgc = min(vg, 0.4 + vs0);\n\t// w = 1 - Vgs/Vp; Vs = Vp w - Vp + vg  ->  idss w^2 - a Vp w + (a Vp - a vg + b) = 0\n\tqa = idss;\n\tqb = -a * vp;\n\tqc = a * vp - a * vgc + b;\n\tdisc = qb * qb - 4 * qa * qc;\n\tidq = 0;\n\tvsq = b / a;                                  // cut-off: no drain current\n\tif (disc >= 0) {\n\t\tw = (-qb + sqrt(disc)) / (2 * qa);\n\t\tif (w > 0) {\n\t\t\tidq = idss * w * w;\n\t\t\tvsq = vp * w - vp + vgc;\n\t\t}\n\t}\n\treturn idq, vsq;\n}\n\n// Passive output mixer (EP-3; values from replica/forum traces [S11][S13]-[S15], APPROX until a\n// clean schematic): drain -0.1uF- A; A -470k- gnd; A -220k- B; B = Echo Volume lug 1;\n// B -100k- OUT. Echo amp -220k- E; E -100k- gnd; E = pot lug 3; E -100k- OUT.\n// The 500k pot's WIPER IS GROUNDED: k = 0 shorts the echo lug, k = 1 shorts the dry lug,\n// so Echo Volume is a blend and the dry level peaks near k = 0.2 (non-monotonic).\n// OUT drives the amp (1M) and the cable capacitance. Returns dry gain, echo gain and the\n// Thevenin resistance at OUT (which, with the cable C, sets the treble roll-off).\nmixer(k) {\n\trp3 = clamp(k, 0, 1) * 500000;\n\trp1 = 500000 - rp3;\n\tra = 22000 * 470000 / 492000;\n\tvbf = (470000 / 492000) * rp1 / (ra + 220000 + rp1);\n\trdb = (ra + 220000) * rp1 / (ra + 220000 + rp1) + 100000;\n\trsh = rp3 * 100000 / (rp3 + 100000);\n\tvef = rsh / (220000 + rsh);\n\treb = 220000 * rsh / (220000 + rsh) + 100000;\n\tgsum = 1 / rdb + 1 / reb + 0.000001;\n\treturn vbf / rdb / gsum, vef / reb / gsum, 1 / gsum;\n}\n\n// F1/F2 (v0.1.1): peak gain of the fixed playback/record loop chain for a de-emphasis corner fde:\n// tape HF loss (2-pole, 5188 Hz) x de-emphasis (1-pole fde, normalised to 1 at 1 kHz)\n// x couplings (30, 20, 10 Hz high-passes). The 1 kHz normalisation lifts the chain above 1 below\n// 1 kHz: peak 1.043 (334 Hz) for 3 nF and 3.383 (102 Hz) for 33 nF, matching measured per-pass\n// gains of 1.040 / 3.369 (validation/EP3_REMEDIATION_REPORT.md). Grid search, 20 Hz\u20134 kHz.\nloop_peak(fde) {\n\tnrm = sqrt(1 + (1000 / fde) * (1000 / fde));\n\tpk = 0;\n\tfor (ii = 0; ii < 96; ii += 1) {\n\t\tfq = 20 * pow(200, ii / 95);\n\t\tg_tp = 1 / sqrt(1 + pow(fq / 5188, 4));\n\t\tgd = nrm / sqrt(1 + (fq / fde) * (fq / fde));\n\t\tg30 = (fq / 30) / sqrt(1 + (fq / 30) * (fq / 30));\n\t\tg20 = (fq / 20) / sqrt(1 + (fq / 20) * (fq / 20));\n\t\tg10 = (fq / 10) / sqrt(1 + (fq / 10) * (fq / 10));\n\t\tpk = max(pk, g_tp * gd * g30 * g20 * g10);\n\t}\n\treturn pk;\n}\n\n// ---------- tape ------------------------------------------------------\n// 112.5 s * 48 000 cells/s (+ margin)\nData tape(5400064, 1);\n\n// ---------- parameters ------------------------------------------------\nParam in_gain_db(0, min=-36, max=12);\nParam dry(1, min=0, max=1);                  // Echolivity trim on the dry branch (1 = original)\nParam echo(0.5, min=0, max=1);               // ECHO VOLUME: the 500k blend pot (wiper grounded)\nParam echo_trim_db(0, min=-24, max=12);      // Echolivity trim on the echo branch\nParam out_db(0, min=-36, max=12);\nParam mode(2, min=0, max=2);\nParam bpm(120, min=20, max=999);\nParam sync_div(2, min=0, max=5);\nParam sync_type(0, min=0, max=2);\nParam sync_mult(1, min=1, max=8);\nParam offset_ms(0, min=-100, max=100);\nParam tap(0, min=0, max=1000000);\nParam tap_div(3, min=0, max=5);\nParam tap_type(0, min=0, max=2);\nParam bar_beats(4, min=1, max=16);\n// ECHO DELAY slider: delay is linear in head position at constant tape speed.\n// 60\u2013600 ms default = DAFX/CCRMA measured range [S3]; 80\u2013800 per [S4].\nParam slider_pos(0.5, min=0, max=1);\nParam slider_min_ms(60, min=2, max=2000);\nParam slider_max_ms(600, min=2, max=4000);\nParam glide_ms(40, min=1, max=2000);\nParam transition_ms(250, min=1, max=4000);\nParam head_slew(4, min=0.05, max=12);        // max head speed, in delay-seconds per second (APPROX)\n// EP-3 front panel / internal\nParam sustain(0.4, min=0, max=1);            // ECHO SUSTAIN (500k lin [S12]); runs away from 0.8 (test E14)\nParam rec_db(0, min=-12, max=12);            // RECORD LEVEL trimmer (internal on the original)\nParam sos(0, min=0, max=1);                  // ECHO / SOUND ON SOUND switch\nParam sos_db(-1, min=-6, max=0);             // SOS loss per pass; manual alignment: \"approximately 1dB\"\nParam echo_on(1, min=0, max=1);              // footswitch: echo on/off\nParam playback(0, min=0, max=1);             // footswitch: playback (record + erase off)\nParam pre_bypass(1, min=0, max=1);           // Q5 source bypass 0.022 uF (manual addendum) in/out\nParam cable_pf(470, min=0, max=2000);        // cable + amp input capacitance; 470 pF fits ClinchFX's descriptions (test E07)\nParam pb_eq(0, min=0, max=1);                // de-emphasis: 0 = 18k/0.003uF (forum), 1 = 18k/0.033uF (manual scan)\nParam bias_khz(100, min=40, max=120);        // \"approximate frequency of 100 KC\" [S1]\nParam bias_leak(0.3, min=0, max=1);          // bias heard on very fast slider moves (APPROX level)\nParam loop_s(8, min=1, max=112.5);           // F3 (v0.1.1): default 8 s for usable SOS/PLAYBACK; 112.5 s = ~75 ft at 8 ips [S18] (authentic)\n// tape character (Echolivity)\nParam sat(0.5, min=0, max=1);\nParam noise_db(-60, min=-120, max=-30);\nParam wow(0.1, min=0, max=1);                // slow drift\nParam flutter(0.25, min=0, max=1);           // 0.5 stays within the 0.3 % spec (E10: 0.256 %); capstan 26 Hz, pinch 2.5/5 Hz\n// performance (Echolivity)\nParam hold(0, min=0, max=1);\nParam hold_fb(1, min=0.9, max=1.05);\nParam drive(0, min=0, max=1);\nParam drive_db(12, min=0, max=24);\nParam drive_fb(0, min=0, max=1);\nParam tape_stop(0, min=0, max=1);\nParam stop_time(1, min=0.05, max=8);\nParam start_time(0.4, min=0.05, max=8);\nParam fb_hp_hz(10, min=10, max=2000);\nParam fb_lp_hz(20000, min=500, max=20000);\nParam fb_res(0, min=0, max=1);\nParam echo_hp_hz(10, min=10, max=2000);\nParam echo_lp_hz(20000, min=500, max=20000);\nParam protect(1, min=0, max=1);\nParam ceiling_db(-0.3, min=-12, max=0);\n\n// ---------- state -----------------------------------------------------\nHistory p(0);\nHistory d_head(-1);\nHistory Ts1(-1);\nHistory Ts2(-1);\nHistory w_prev(0);\nHistory rec_prev(0);\nHistory first(1);\nHistory s_stop(1);\nHistory hold_s(0);\nHistory drive_s(0);\nHistory sos_s(0);\nHistory echo_on_s(1);\nHistory echo_on_s2(1);\nHistory pb_s(0);\nHistory env(0);\nHistory prev_mode(-1);\nHistory trans_left(0);\nHistory nsamp(0);\nHistory tap_prev(0);\nHistory last_tap(-1);\nHistory t_count(0);\nHistory ti0(0);\nHistory ti1(0);\nHistory ti2(0);\nHistory ti3(0);\nHistory tap_bpm(120);\nHistory ph_cap(0);\nHistory ph_p1(0);\nHistory ph_p2(0);\nHistory drift(0);\nHistory fl_rnd(0);\nHistory last_sr(0);\nHistory vs_state(-1);\nHistory pg_hold(1);\nHistory pg_s(1);\nHistory ph_cnt(0);\nHistory u_out(1);\nHistory ck_pk3(-1);\nHistory ck_pk33(-1);\nHistory L_cur(-1);\nHistory hp_env(0);\nHistory hold_tgt(0);\nHistory hold_c(1);\nHistory hold_prev(0);\nHistory hold_cnt(0);\nHistory hold_pass(0);\nHistory hold_np(0);\nHistory hold_elast(0);\nHistory lg(1);\nHistory lg1(1);\nHistory lg_t(1);\nHistory lg_hold(0);\n// cached coefficients\nHistory ck_sr(-1);\nHistory ck_ps(0);\nHistory ck_a10(0);\nHistory ck_drift(0);\nHistory ck_flr(0);\nHistory ck_nnorm(1);\nHistory ck_up(0);\nHistory ck_dn(0);\nHistory ck_prel(0);\nHistory ck_patt(0);\nHistory ck_tau(-1);\nHistory ck_as(0);\nHistory ck_fkey(-99999);\nHistory ck_idq(0);\nHistory ck_vsq(0);\nHistory ck_dkey(-99999);\nHistory ck_dg(1);\nHistory ck_sat(-99999);\nHistory ck_gt(1);\nHistory ck_ing(-99999);\nHistory ck_ig(1);\nHistory ck_rkey(-99999);\nHistory ck_rg(1);\nHistory ck_skey(-99999);\nHistory ck_sg(0.891);\nHistory ck_nkey(-99999);\nHistory ck_ng(0);\nHistory ck_okey(-99999);\nHistory ck_kkey(-99999);\nHistory ck_gd(0.18);\nHistory ck_ge(0.13);\nHistory ck_rth(83000);\nHistory ck_en(1);\nHistory ck_etkey(-99999);\nHistory ck_et(1);\nHistory ck_og(1);\nHistory ck_ckey(-99999);\nHistory ck_cl(1);\n\nCR = 48000;                                  // tape cells per second at nominal speed\nNB = 5400064;\nVPF = 0.794;                                 // volts per full scale (100 mV = -18 dBFS RMS)\nRD = 22000;                                  // Q5 drain resistor [S1][S8]\nRS = 3300;                                   // Q5 source resistor [S1]\nCS = 0.000000022;                            // Q5 source bypass [S1 addendum]\nIDSS = 0.0034;                               // APPROX: fitted so Vs = 1.8 V at 21.2 V supply\nVP = -3.0;                                   //   (measured 1.72\u20131.88 V / 21.0\u201321.3 V on two units [S8])\nVDD = 21.2;\nFBIAS_MIN_SP = 0.45;                         // spatial Nyquist guard (cycles per tape cell)\n\nsr = samplerate;\nt = nsamp;\nnsamp = nsamp + 1;\nx = 0.5 * (fixnan(in1) + fixnan(in2));      // mono, like the original\n\nif (sr != last_sr) {\n\tif (last_sr > 0) {\n\t\tTs1 = -1;\n\t\tTs2 = -1;\n\t\td_head = -1;\n\t\tlast_tap = -1;\n\t\tt_count = 0;\n\t}\n\tlast_sr = sr;\n}\n\n// ================= TAP TEMPO (sample counter; as the H&H device) =======\nif (tap > tap_prev + 0.5) {\n\tif (last_tap >= 0) {\n\t\tiv = t - last_tap;\n\t\tif (iv < 0.15 * sr) {\n\t\t\tiv = -1;\n\t\t} else if (iv > 2 * sr) {\n\t\t\tt_count = 0;\n\t\t\tlast_tap = t;\n\t\t} else {\n\t\t\tif (t_count > 0) {\n\t\t\t\ttavg0 = (ti0 + ti1 + ti2 + ti3) / min(t_count, 4);\n\t\t\t\tif (abs(iv - tavg0) > 0.4 * tavg0) {\n\t\t\t\t\tt_count = 0;\n\t\t\t\t}\n\t\t\t}\n\t\t\tti3 = ti2;\n\t\t\tti2 = ti1;\n\t\t\tti1 = ti0;\n\t\t\tti0 = iv;\n\t\t\tif (t_count == 0) {\n\t\t\t\tti1 = 0;\n\t\t\t\tti2 = 0;\n\t\t\t\tti3 = 0;\n\t\t\t}\n\t\t\tt_count = min(t_count + 1, 4);\n\t\t\ttavg = (ti0 + ti1 + ti2 + ti3) / t_count;\n\t\t\ttap_bpm = 60 * sr / tavg;\n\t\t\tlast_tap = t;\n\t\t}\n\t} else {\n\t\tlast_tap = t;\n\t}\n}\ntap_prev = tap;\n\n// ================= TARGET DELAY TIME ==================================\ns_lo = min(slider_min_ms, slider_max_ms);\ns_hi = max(slider_min_ms, slider_max_ms);\nT = (s_lo + slider_pos * (s_hi - s_lo)) * 0.001;\nif (mode < 1.5) {\n\tuse_bpm = max(bpm, 20);\n\tdv_idx = floor(sync_div + 0.5);\n\ttyp = floor(sync_type + 0.5);\n\tif (mode >= 0.5) {\n\t\tuse_bpm = tap_bpm;\n\t\tdv_idx = floor(tap_div + 0.5);\n\t\ttyp = floor(tap_type + 0.5);\n\t}\n\tbeats = 0.125;\n\tif (dv_idx == 1) { beats = 0.25; }\n\telse if (dv_idx == 2) { beats = 0.5; }\n\telse if (dv_idx == 3) { beats = 1; }\n\telse if (dv_idx == 4) { beats = 2; }\n\telse if (dv_idx >= 5) { beats = bar_beats; }\n\tif (typ == 1) { beats = beats * 1.5; }\n\telse if (typ == 2) { beats = beats * 2 / 3; }\n\tT = 60 / use_bpm * beats * max(sync_mult, 1) + offset_ms * 0.001;\n}\nT = clamp(T, 0.002, 4);\n\n// sample-rate-dependent constants\nif (sr != ck_sr) {\n\tck_ps = 1 - exp(-1 / (0.010 * sr));\n\tck_a10 = ck_ps;\n\tck_drift = 1 - exp(-twopi * 0.5 / sr);\n\tck_flr = 1 - exp(-twopi * 20 / sr);\n\ta_n0 = 1 - exp(-twopi * min(10000, 0.49 * sr) / sr);\n\tck_nnorm = sqrt((1 / 3) * a_n0 / (2 - a_n0));\n\tck_up = 1 - exp(-1 / (0.001 * sr));\n\tck_dn = 1 - exp(-1 / (0.200 * sr));\n\tck_prel = 1 - exp(-1 / (0.150 * sr));\n\tck_patt = 1 - exp(-1 / (0.0005 * sr));\n\tck_sr = sr;\n\tck_tau = -1;\n\tck_fkey = -99999;\n\tck_nkey = -99999;\n}\n\n// smoothed continuous parameters\nsm_in_gain_db = psmooth(in_gain_db, ck_ps);\nsm_dry = psmooth(dry, ck_ps);\nsm_echo = psmooth(echo, ck_ps);\nsm_echo_trim_db = psmooth(echo_trim_db, ck_ps);\nsm_out_db = psmooth(out_db, ck_ps);\nsm_sustain = psmooth(sustain, ck_ps);\nsm_rec_db = psmooth(rec_db, ck_ps);\nsm_sos_db = psmooth(sos_db, ck_ps);\nsm_bias_leak = psmooth(bias_leak, ck_ps);\nsm_sat = psmooth(sat, ck_ps);\nsm_noise_db = psmooth(noise_db, ck_ps);\nsm_wow = psmooth(wow, ck_ps);\nsm_flutter = psmooth(flutter, ck_ps);\nsm_hold_fb = psmooth(hold_fb, ck_ps);\nsm_drive_db = psmooth(drive_db, ck_ps);\nsm_fb_res = psmooth(fb_res, ck_ps);\nsm_cable_pf = psmooth(cable_pf, ck_ps);\nsm_bias_khz = fsmooth(bias_khz, ck_ps);\nsm_fb_hp_hz = fsmooth(fb_hp_hz, ck_ps);\nsm_fb_lp_hz = fsmooth(fb_lp_hz, ck_ps);\nsm_echo_hp_hz = fsmooth(echo_hp_hz, ck_ps);\nsm_echo_lp_hz = fsmooth(echo_lp_hz, ck_ps);\n// ceiling_db is not smoothed (see H&H test P05)\n\nif (mode != prev_mode) {\n\tif (prev_mode >= 0) {\n\t\ttrans_left = transition_ms * 0.001 * sr * 3;\n\t}\n\tprev_mode = mode;\n}\ntau_ms = glide_ms;\nif (trans_left > 0) {\n\ttau_ms = max(transition_ms, glide_ms);\n\ttrans_left = trans_left - 1;\n}\nif (tau_ms != ck_tau) {\n\tck_as = 1 - exp(-1 / (max(tau_ms, 0.5) * 0.001 * sr));\n\tck_tau = tau_ms;\n}\na_s = ck_as;\nTc = T * CR;                                 // target head distance in tape cells\nif (Ts1 < 0) {\n\tTs1 = Tc;\n\tTs2 = Tc;\n}\nTs1 = Ts1 + a_s * (Tc - Ts1);\nTs2 = Ts2 + a_s * (Ts1 - Ts2);\n\n// ================= TRANSPORT ==========================================\nif (tape_stop > 0.5) {\n\ts_stop = max(0, s_stop - 1 / (max(stop_time, 0.02) * sr));\n} else {\n\ts_stop = min(1, s_stop + 1 / (max(start_time, 0.02) * sr));\n}\n// F6 (v0.1.1): a Loop Length change moves the wrap point, so the heads land on other tape.\n// Fade the playback (echo + feedback) out with a smooth 2-stage curve (3 ms stages, ~40 ms to\n// silence), apply the new length, keep it muted until freshly recorded tape reaches the echo\n// head (one delay + 5 ms: the tape between the heads still holds old material), then fade in.\nL_tgt = floor(clamp(loop_s, 1, 112.5) * CR);\nif (L_cur < 0) {\n\tL_cur = L_tgt;\n}\nlg_t = 1;\nif (L_tgt != L_cur) {\n\tlg_t = 0;\n\tif (lg < 0.0001) {\n\t\tL_cur = L_tgt;\n\t\tfirst = 1;                               // restart the write-head tracking on the new loop\n\t\tlg_hold = Ts2 * sr / CR + 0.005 * sr;    // one delay (target head distance) + 5 ms\n\t}\n}\nif (lg_hold > 0) {\n\tlg_t = 0;\n\tlg_hold = lg_hold - 1;\n}\na_lg = 1 - exp(-1 / (0.003 * sr));\nlg1 = lg1 + a_lg * (lg_t - lg1);\nlg = lg + a_lg * (lg1 - lg);\nL = L_cur;\n\n// flutter: capstan 26 Hz, pinch wheel 2.5 / 5.0 Hz (measured on an Echoplex [S5]),\n// plus a little broadband flutter and slow drift. flutter = 0.5 -> within the 0.3 % spec (E10: 0.256 % peak).\nph_cap = ph_cap + 26 / sr;\nph_cap = ph_cap - floor(ph_cap);\nph_p1 = ph_p1 + 2.5 / sr;\nph_p1 = ph_p1 - floor(ph_p1);\nph_p2 = ph_p2 + 5.0 / sr;\nph_p2 = ph_p2 - floor(ph_p2);\ndrift = drift + ck_drift * (noise() * 3 - drift);\nfl_rnd = fl_rnd + ck_flr * (noise() * 2 - fl_rnd);\nwf = sm_flutter * 0.006 * (0.45 * sin(twopi * ph_cap) + 0.3 * sin(twopi * ph_p1) + 0.15 * sin(twopi * ph_p2) + 0.1 * fl_rnd)\n   + sm_wow * 0.005 * drift;\n\nv_eff = clamp(s_stop * (1 + wf), 0, 2);\nvc = v_eff * CR / sr;                        // tape cells per sample\n\n// ---- record head position (moving) with a head-speed limit\nif (d_head < 0) {\n\td_head = Ts2;\n}\nhs = max(head_slew, 0.05) * CR / sr;         // cells per sample\nd_head = d_head + clamp(Ts2 - d_head, -hs, hs);\nd = clamp(d_head, 16, L - 64);\n// SOS head: fixed just upstream of the slider's far end (APPROX gap 62.5 ms = 0.5 in at 8 ips)\nd_sos = clamp((s_hi + 62.5) * 0.001 * CR, d + 1, L - 32);\n\np_new = wrap(p + vc, 0, L);\nw_new = p_new + d;                           // write position (unwrapped relative to p_new)\nw_old = w_prev;\nif (first > 0.5) {\n\tw_old = w_new - vc;\n\tfirst = 0;\n}\n// keep w_old in the same unwrapped frame as w_new\nif (w_old - w_new > 0.5 * L) {\n\tw_old = w_old - L;\n} else if (w_new - w_old > 0.5 * L) {\n\tw_old = w_old + L;\n}\nu_cps = w_new - w_old;                       // head speed over tape, cells per sample\nu_out = u_cps / max(CR / sr, 0.000001);      // 1 = normal recording speed\n\n// ================= gates & per-sample coefficients ====================\nhold_s = hold_s + ck_a10 * (hold - hold_s);\ndrive_s = drive_s + ck_a10 * (drive - drive_s);\nsos_s = sos_s + ck_a10 * (sos - sos_s);\necho_on_s = echo_on_s + ck_a10 * (echo_on - echo_on_s);\necho_on_s2 = echo_on_s2 + ck_a10 * (echo_on_s - echo_on_s2);   // 2-stage: no corner at the switch\npb_s = pb_s + ck_a10 * (playback - pb_s);\ndkey = drive_s * sm_drive_db;\nif (dkey != ck_dkey) {\n\tck_dg = pow(10, dkey / 20);\n\tck_dkey = dkey;\n}\ndrive_gain = ck_dg;\nif (sm_sat != ck_sat) {\n\tck_gt = 0.6 * pow(4, 2 * (sm_sat - 0.5));  // 0.5: ~2-3 % THD at nominal level (calibration test E05: 2.1 %)\n\tck_sat = sm_sat;\n}\ng_t = ck_gt;\nif (sm_in_gain_db != ck_ing) {\n\tck_ig = pow(10, sm_in_gain_db / 20);\n\tck_ing = sm_in_gain_db;\n}\nif (sm_rec_db != ck_rkey) {\n\tck_rg = pow(10, sm_rec_db / 20);\n\tck_rkey = sm_rec_db;\n}\nif (sm_sos_db != ck_skey) {\n\tck_sg = pow(10, sm_sos_db / 20);\n\tck_skey = sm_sos_db;\n}\nif (sm_noise_db != ck_nkey) {\n\tck_ng = (sm_noise_db > -119) ? pow(10, sm_noise_db / 20) / ck_nnorm : 0;\n\tck_nkey = sm_noise_db;\n}\n// F1/F2 (v0.1.1): scale by the chain's peak loop gain instead of assuming it is 1.\n// Sustain: x (pk3 / pk) keeps the 3 nF behaviour exactly (factor 1.0) and gives 33 nF the\n// same peak loop gain (same runaway point). HOLD: / pk makes the per-pass peak gain equal to\n// Hold Feedback, so 1.0 holds the loop instead of growing.\nif (ck_pk3 < 0) {\n\tck_pk3 = loop_peak(2947);\n\tck_pk33 = loop_peak(268);\n}\npbs = psmooth(pb_eq, ck_ps);                 // F4: de-emphasis switch is crossfaded (10 ms)\npk_loop = (1 - pbs) * ck_pk3 + pbs * ck_pk33;\nfb_amt = (sm_sustain * 1.25) * (ck_pk3 / pk_loop) * (1 - hold_s) + (sm_hold_fb / pk_loop) * hold_c * hold_s;\nfb_amt = fb_amt * (1 - sos_s);               // ECHO/SUSTAIN not operative in SOS [S1]\nq_fb = 0.707 + sm_fb_res * 6;\ndfb_g = (drive_fb > 0.5) ? drive_gain : 1;\n\n// ================= Q5 FET INPUT STAGE (always in circuit) =============\nfkey = pre_bypass * 7 + sr;\nif (fkey != ck_fkey) {\n\t// quiescent point (no signal): source cap fully charged, so cdt = 0\n\tqi, qv = fet_step(0, 0, 0, RS, IDSS, VP);\n\tck_idq = qi;\n\tck_vsq = qv;\n\tck_fkey = fkey;\n\tif (vs_state < 0) {\n\t\tvs_state = qv;\n\t}\n}\nsm_pre = psmooth(pre_bypass, ck_ps);         // F4 (v0.1.1): source cap switched over 10 ms\ncdt = CS * sr * sm_pre;\nvg = lp1(x, 15915) * VPF * ck_ig;            // input RF filter: 100k series, 100 pF to ground [S14]\nid_n, vs_n = fet_step(vg, vs_state, cdt, RS, IDSS, VP);\nvs_state = fixdenorm(vs_n);\n// drain cannot fall below the source (+0.3 V): limits large positive swings\nid_c = min(id_n, (VDD - vs_n - 0.3) / RD);\nvac = (id_c - ck_idq) * RD;                  // drain AC (V); sign flipped so the device is non-inverting\npre = vac / VPF;                             // back to full-scale units (EP-3 gain kept)\n// output mixer coefficients (recomputed only when Echo Volume moves)\nif (sm_echo != ck_kkey) {\n\tgd, ge, rt = mixer(sm_echo);\n\tgd5, ge5, rt5 = mixer(0.5);\n\tck_gd = gd;\n\tck_ge = ge;\n\tck_rth = rt;\n\tck_en = gd5 / ge5;                       // echo source level: first repeat ~ dry level at k = 0.5 (APPROX)\n\tck_kkey = sm_echo;\n}\ndry_br = hp1(pre, 7) * ck_gd * sm_dry;       // 0.1 uF coupling into ~260k: ~7 Hz\n\n// ================= ECHO HEAD READ (fixed) =============================\nri = floor(p_new);\nrf = p_new - ri;\ni0 = wrap(ri, 0, L);\nim1 = wrap(i0 - 1, 0, L);\nip1 = wrap(i0 + 1, 0, L);\nip2 = wrap(i0 + 2, 0, L);\nm0 = peek(tape, im1, 0);\nc0 = peek(tape, i0, 0);\nn0 = peek(tape, ip1, 0);\nq0 = peek(tape, ip2, 0);\ny_echo = hermite(m0, c0, n0, q0, rf);\n// SOS head (monitors the loop before it reaches the record head)\nrs_pos = p_new + d_sos;\nrsi = floor(rs_pos);\nrsf = rs_pos - rsi;\nj0 = wrap(rsi, 0, L);\njm1 = wrap(j0 - 1, 0, L);\njp1 = wrap(j0 + 1, 0, L);\njp2 = wrap(j0 + 2, 0, L);\nsm0 = peek(tape, jm1, 0);\nsc0 = peek(tape, j0, 0);\nsn0 = peek(tape, jp1, 0);\nsq0 = peek(tape, jp2, 0);\ny_sos = hermite(sm0, sc0, sn0, sq0, rsf);\n\n// ================= PLAYBACK CHAIN =====================================\ngp = min(1, v_eff / 0.15);                   // head output falls away as the tape stops\nfc_tape = clamp(5188 * v_eff, 50, 0.45 * sr); // tape HF loss: H&H fit (7782 Hz @ 12 ips) x 8/12  APPROX\nyraw = y_echo * (1 - sos_s) + y_sos * sos_s; // SOS: you hear the SOS head [S1]\ntl, tb_, th = svf(yraw * gp, fc_tape, 0.707);\n// de-emphasis: 18k with 0.003 uF (forum, 2947 Hz) / 0.033 uF (manual scan, 268 Hz); both run and\n// are crossfaded (F4). Each is normalised at 1 kHz so both give the same mid level.\ny3 = lp1(tl, 2947);\ny33 = lp1(tl, 268);\nypb = (y3 * sqrt(1 + (1000 / 2947) * (1000 / 2947))) * (1 - pbs) + (y33 * sqrt(1 + (1000 / 268) * (1000 / 268))) * pbs;\nypb = ypb * lg;                              // F6 fade\nypb = hp1(ypb, 30);                          // head-amp coupling APPROX\nypb = ypb + lp1(noise(), 10000) * ck_ng;\n// F1 (v0.1.1): HOLD level trim. A fixed loop gain cannot freeze a loop: tape saturation\n// compresses slightly at playing level and frequencies off the loop's peak decay. While HOLD\n// is on, the playback power is compared with a target, and the hold gain is trimmed by at most\n// +-3 % per pass. Settling: after HOLD is pressed the target may only fall (the loop darkens\n// naturally but never grows) until the loop stops losing level (< 1 dB over a pass, at least\n// 2 passes; at most 30 s); then it is locked and changes by Hold Feedback^2 per pass\n// (1.0 = frozen), never sitting more than 1.5 dB above the loop's own level. Outside HOLD hold_c = 1 and nothing changes.\nhp_env = fixdenorm(hp_env + (1 - exp(-1 / (0.3 * sr))) * (ypb * ypb - hp_env));\ndsamp = max(d / max(vc, 0.000001), 1);\nif (hold > 0.5 && hold_prev < 0.5) {\n\thold_tgt = hp_env;\n\thold_cnt = 30 * sr;                          // settling time limit (dark voicing needs the longest)\n\thold_pass = dsamp + 0.3 * sr;                 // first check after one pass + envelope settle\n\thold_np = 0;\n\thold_elast = hp_env;\n}\nhold_prev = hold;\nif (hold > 0.5) {\n\tif (hold_cnt > 0) {\n\t\thold_tgt = min(hold_tgt, hp_env);\n\t\thold_cnt = hold_cnt - 1;\n\t\thold_pass = hold_pass - 1;\n\t\tif (hold_pass <= 0) {\n\t\t\thold_np = hold_np + 1;\n\t\t\tif (hold_np >= 2 && hp_env > 0.794 * hold_elast) {\n\t\t\t\thold_cnt = 0;                    // lost < 1 dB over the last pass: lock\n\t\t\t}\n\t\t\thold_elast = hp_env;\n\t\t\thold_pass = dsamp;\n\t\t}\n\t\tcc = (hold_tgt > 0.0000000001) ? clamp(sqrt(hold_tgt / max(hp_env, 0.00000000000000000001)), 0.97, 1) : 0.97;\n\t} else {\n\t\thold_tgt = fixdenorm(hold_tgt * exp(2 * log(max(sm_hold_fb, 0.01)) / dsamp));\n\t\t// a shortfall beyond 1.5 dB is spectral loss (e.g. the dark voicing shedding its mids), not\n\t\t// saturation: let the target follow, so the trim never pumps the loop back up by more than 1.5 dB\n\t\thold_tgt = min(hold_tgt, hp_env * 1.413);\n\t\tcc = (hold_tgt > 0.0000000001) ? clamp(sqrt(hold_tgt / max(hp_env, 0.00000000000000000001)), 0.97, 1.03) : 0.97;\n\t}\n\thold_c = hold_c + (1 - exp(-1 / (0.2 * sr))) * (cc - hold_c);\n} else {\n\thold_c = hold_c + (1 - exp(-1 / (0.2 * sr))) * (1 - hold_c);\n}\n// Echo Sustain feedback, with the Echolivity feedback filters\nf1l, f1b, f1h = svf(ypb, sm_fb_hp_hz, q_fb);\nf2l, f2b, f2h = svf(f1h, sm_fb_lp_hz, q_fb);\nguard = (env > 1.5) ? 1.5 / env : 1;\nfbs = f2l * fb_amt * guard * dfb_g;\nenv = fixdenorm(env + ((abs(f2l * fb_amt) > env) ? ck_up : ck_dn) * (abs(f2l * fb_amt) - env));\n\n// ================= RECORD CHAIN =======================================\nu = pre * ck_rg * drive_gain * (1 - hold_s) + fbs;\nu = hp1(u, 20);\nu = tapesat(u * g_t * drive_gain, 0.05) / g_t;\nu = dc_block(u);\n// write anti-alias: the head's speed over the tape sets the tape's sample spacing\n// spatial Nyquist: a frequency f lands at f / (|u_cps| sr) cycles per cell, which must stay < 0.5\n// 4th-order Butterworth at 0.35 sr |u|: everything that plays back below 0.35 sr (16.8 kHz @ 48k)\n// is kept; what would land above Nyquist is >= 40 dB down before the head samples it (test E03)\nfc_w = clamp(0.35 * sr * abs(u_cps), 20, 0.45 * sr);\nrl1, rb1, rh1 = svf(u, fc_w, 0.5412);\nrl, rb, rh = svf(rl1, fc_w, 1.3066);\nrec = fixnan(rl);\n\n// ================= RECORD/ERASE HEAD: fill every cell crossed =========\n// ECHO: erase + record (overwrite). SOS: erase off, new is added to the old\n// layer, which loses sos_db per pass. PLAYBACK: record and erase off.\nwr_gain = 1 - pb_s;\nsp_bias = sm_bias_khz * 1000 / (max(abs(u_cps), 0.000001) * sr);  // bias cycles per tape cell\nbias_amp = 0;\nif (sp_bias < FBIAS_MIN_SP) {\n\tbias_amp = sm_bias_leak * 0.1 * min(1, (FBIAS_MIN_SP - sp_bias) / 0.1);   // level APPROX\n}\nif (wr_gain > 0.0001 && abs(u_cps) > 0.000001) {\n\tklo = (u_cps > 0) ? floor(w_old) + 1 : -floor(-w_new);      // -floor(-x) = ceil(x)\n\tkhi = (u_cps > 0) ? floor(w_new) : -floor(-w_old) - 1;\n\tfor (k = klo; k <= khi; k += 1) {\n\t\tfq = (k - w_old) / u_cps;\n\t\tki = wrap(k, 0, L);\n\t\tval = rec_prev + fq * (rec - rec_prev);\n\t\tif (bias_amp > 0) {\n\t\t\tval = val + bias_amp * sin(twopi * sm_bias_khz * 1000 * ((t - 1 + fq) / sr));\n\t\t}\n\t\told = peek(tape, ki, 0);\n\t\tkeep = sos_s * ck_sg;                            // SOS keeps the old layer\n\t\tnv = old * (1 - wr_gain) + wr_gain * (old * keep + val);\n\t\tpoke(tape, nv, ki, 0);\n\t}\n}\nrec_prev = rec;\nw_prev = w_new;\np = p_new;\n\n// ================= OUTPUT =============================================\ne1l, e1b, e1h = svf(ypb, sm_echo_hp_hz, 0.707);\ne2l, e2b, e2h = svf(e1h, sm_echo_lp_hz, 0.707);\nech = dc_block(e2l) * echo_on_s2;\nif (sm_out_db != ck_okey) {\n\tck_og = pow(10, sm_out_db / 20);\n\tck_okey = sm_out_db;\n}\nif (sm_echo_trim_db != ck_etkey) {\n\tck_et = pow(10, sm_echo_trim_db / 20);\n\tck_etkey = sm_echo_trim_db;\n}\no_mix = dry_br + ech * ck_en * ck_ge * ck_et;\n// F4 (v0.1.1): the cable filter always runs (no stale state); below 1 pF it is blended out\no_lp = lp1(o_mix, 1 / (twopi * ck_rth * max(sm_cable_pf, 1) * 0.000000000001));\nif (sm_cable_pf >= 1) {\n\to_mix = o_lp;\n} else if (sm_cable_pf > 0) {\n\to_mix = o_mix + sm_cable_pf * (o_lp - o_mix);\n}\no1 = fixnan(o_mix * ck_og);\no2 = o1;\n\n// ================= OUTPUT PROTECTION (as the H&H device) =================\nif (ceiling_db != ck_ckey) {\n\tck_cl = pow(10, ceiling_db / 20);\n\tck_ckey = ceiling_db;\n}\nc_lin = ck_cl;\nthr = c_lin * 0.944061;\npk = abs(o1);\nover = (pk > thr) ? 1 : 0;\npg = 1;\nif (protect > 0.5) {\n\tgreq = (pk > thr) ? thr / pk : 1;\n\tif (greq < pg_hold) {\n\t\tpg_hold = greq;\n\t\tph_cnt = 0.010 * sr;\n\t} else if (ph_cnt > 0) {\n\t\tph_cnt = ph_cnt - 1;\n\t} else {\n\t\tpg_hold = pg_hold + ck_prel * (1 - pg_hold);\n\t}\n\tif (pg_hold < pg_s) {\n\t\tpg_s = pg_s + ck_patt * (pg_hold - pg_s);\n\t} else {\n\t\tpg_s = pg_hold;\n\t}\n\tpg = pg_s;\n\to1 = softclip(o1 * pg, thr, c_lin);\n\to2 = o1;\n} else {\n\tpg_hold = 1;\n\tpg_s = 1;\n\tph_cnt = 0;\n}\n\nout1 = o1;\nout2 = o2;\nout3 = (d / max(vc, 0.000000001)) / sr * 1000;\nout4 = tap_bpm;\nout5 = u_out;\nout6 = v_eff;\nout7 = pg;\nout8 = over;\n",
         "fontface": 0,
         "fontname": "<Monospaced>",
         "fontsize": 11.0,
         "numinlets": 2,
         "numoutlets": 8,
         "outlettype": [
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          ""
         ],
         "patching_rect": [
          20,
          60,
          900,
          700
         ]
        }
       },
       {
        "box": {
         "id": "g-in1",
         "maxclass": "newobj",
         "text": "in 1",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          20,
          20,
          30,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-in2",
         "maxclass": "newobj",
         "text": "in 2",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          880,
          20,
          30,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out1",
         "maxclass": "newobj",
         "text": "out 1",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out2",
         "maxclass": "newobj",
         "text": "out 2",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          140,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out3",
         "maxclass": "newobj",
         "text": "out 3",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          260,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out4",
         "maxclass": "newobj",
         "text": "out 4",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          380,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out5",
         "maxclass": "newobj",
         "text": "out 5",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          500,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out6",
         "maxclass": "newobj",
         "text": "out 6",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          620,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out7",
         "maxclass": "newobj",
         "text": "out 7",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          740,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out8",
         "maxclass": "newobj",
         "text": "out 8",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          860,
          780,
          40,
          22
         ]
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "g-in1",
          0
         ],
         "destination": [
          "g-code",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-in2",
          0
         ],
         "destination": [
          "g-code",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          0
         ],
         "destination": [
          "g-out1",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          1
         ],
         "destination": [
          "g-out2",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          2
         ],
         "destination": [
          "g-out3",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          3
         ],
         "destination": [
          "g-out4",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          4
         ],
         "destination": [
          "g-out5",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          5
         ],
         "destination": [
          "g-out6",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          6
         ],
         "destination": [
          "g-out7",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          7
         ],
         "destination": [
          "g-out8",
          0
         ]
        }
       }
      ]
     }
    }
   },
   {
    "box": {
     "id": "obj-134",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      620,
      870,
      130,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "text": "record~ out_BEH3_echo_tone_switch 1"
    }
   },
   {
    "box": {
     "id": "obj-135",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      770,
      766,
      80,
      22
     ],
     "outlettype": [
      "bang"
     ],
     "text": "delay 3300"
    }
   },
   {
    "box": {
     "id": "obj-136",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      770,
      796,
      40,
      22
     ],
     "outlettype": [
      "bang",
      "bang"
     ],
     "text": "t b b"
    }
   },
   {
    "box": {
     "id": "obj-137",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      770,
      826,
      30,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "0"
    }
   },
   {
    "box": {
     "id": "obj-138",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      770,
      900,
      250,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "writewave out_BEH3_echo_tone_switch_max.wav"
    }
   },
   {
    "box": {
     "id": "obj-139",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620,
      930,
      290,
      20
     ],
     "text": "\u2192 writes out_BEH3_echo_tone_switch_max.wav",
     "fontsize": 10.0
    }
   },
   {
    "box": {
     "id": "obj-140",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      770,
      704,
      80,
      22
     ],
     "outlettype": [
      "bang"
     ],
     "text": "delay 1500"
    }
   },
   {
    "box": {
     "id": "obj-141",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      855,
      704,
      55,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "pb_eq 1"
    }
   },
   {
    "box": {
     "id": "obj-142",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      920,
      600,
      290,
      20
     ],
     "text": "BEH4_loop_change \u2014 tier B (behaviour), 8 s",
     "fontsize": 10.5
    }
   },
   {
    "box": {
     "id": "obj-143",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      920,
      624,
      290,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "noise_db -120, wow 0, flutter 0, sustain 0.4, dry 0, cable_pf 0, slider_pos 0.1, loop_s 112.5"
    }
   },
   {
    "box": {
     "id": "obj-144",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      920,
      652,
      230,
      22
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ in_BEH4_loop_change in_BEH4_loop_change.wav"
    }
   },
   {
    "box": {
     "id": "obj-145",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      920,
      676,
      230,
      22
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ out_BEH4_loop_change 8600 1"
    }
   },
   {
    "box": {
     "id": "obj-146",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      920,
      704,
      140,
      26
     ],
     "outlettype": [
      "",
      "",
      "int"
     ],
     "text": "RUN BEH4"
    }
   },
   {
    "box": {
     "id": "obj-147",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      920,
      738,
      60,
      22
     ],
     "outlettype": [
      "bang",
      "bang",
      "bang"
     ],
     "text": "t b b b"
    }
   },
   {
    "box": {
     "id": "obj-148",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      990,
      766,
      30,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "1"
    }
   },
   {
    "box": {
     "id": "obj-149",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      920,
      766,
      40,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "start"
    }
   },
   {
    "box": {
     "id": "obj-150",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      920,
      796,
      120,
      22
     ],
     "outlettype": [
      "signal",
      "bang"
     ],
     "text": "play~ in_BEH4_loop_change 1"
    }
   },
   {
    "box": {
     "id": "obj-151",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      920,
      832,
      120,
      22
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "text": "gen~",
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 0,
       "revision": 0,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "dsp.gen",
      "rect": [
       50,
       50,
       960,
       840
      ],
      "boxes": [
       {
        "box": {
         "id": "g-code",
         "maxclass": "codebox",
         "code": "// FALLBACK NAMES BUILD (not a release): identical engine with locals that share Gen operator names renamed\n// (s->st_s, f->fq, i->ii, gtp->g_tp, r->rdp). Use only if gen~ reports an error on one of those names.\n// =====================================================================\n// ECHOLIVITY \u2014 EP-3 (Maestro Echoplex EP-3 model) \u00b7 tape engine v0.1.2-dev\n// v0.1.2-dev: identifiers renamed that collide with gen~ built-ins (dcblock -> dc_block,\n// lt -> l_t); no functional change (bit-identical, test R06/X01).\n// v0.1.1-dev remediation (see CHANGELOG / validation/EP3_REMEDIATION_REPORT.md): F1 HOLD loop gain,\n// F2 33 nF feedback runaway, F3 8 s default loop, F4 click-free DE-EMPH / Cable / Source-cap\n// changes, F6 loop-length change fade.\n// gen~ codebox. Status of every value: docs/EP3_MODELING_NOTES.md\n//\n// Signal flow (EP-3 manual, Maestro owner/service manual [S1]):\n//   input -> Q5 FET stage (TIS58, 22k drain, 3.3k source, 0.022 uF source\n//   bypass = pre-emphasis) -> dry out (high output Z into cable C)\n//                           -> record level -> record amp -> RECORD/ERASE HEAD\n//   (moving, on the slider) -> tape (8 ips, ~75 ft loop) -> fixed ECHO head\n//   -> head amp + de-emphasis -> Echo Sustain (feedback) / Echo Volume (blend\n//   pot in the passive output mixer, wiper grounded) -> output (high Z, into the cable)\n//   SOS: SOS head (upstream of the record head) monitors the loop; erase off,\n//   new material is added to the old layer (-1 dB per pass, manual alignment).\n//\n// The record head moves, so a slider move changes how sound is WRITTEN on the\n// tape (pitch change heard one delay later). The write is band-limited (pre-\n// write low-pass that follows the head's speed over the tape, after\n// Arnardottir/Abel/Smith 2008) and fills every tape cell the head crosses.\n//\n// Tape buffer: fixed 48 000 cells per second of tape at nominal speed, so the\n// 112.5 s loop costs the same memory at any sample rate.\n// Level convention: 100 mV == -18 dBFS RMS (same as the H&H device).\n// Mono like the original: L+R are summed at the input; out1 == out2.\n//\n// out1/out2: audio   out3: delay (ms)   out4: tap BPM\n// out5: record-head write speed over tape (1 = normal)   out6: tape speed\n// out7: output-protection gain   out8: output over flag\n// =====================================================================\n\n// ---------- stateful helpers (each call site gets its own state) ------\nsvf(x, fc, q) {\n\tHistory s1(0);\n\tHistory s2(0);\n\tHistory key_fc(-1);\n\tHistory key_q(-1);\n\tHistory key_sr(-1);\n\tHistory c_k(0);\n\tHistory c_a1(0);\n\tHistory c_a2(0);\n\tHistory c_a3(0);\n\tif (fc != key_fc || q != key_q || samplerate != key_sr) {\n\t\tfcc = clamp(fc, 5, samplerate * 0.49);\n\t\tg = tan(pi * fcc / samplerate);\n\t\tc_k = 1 / q;\n\t\tc_a1 = 1 / (1 + g * (g + c_k));\n\t\tc_a2 = g * c_a1;\n\t\tc_a3 = g * c_a2;\n\t\tkey_fc = fc;\n\t\tkey_q = q;\n\t\tkey_sr = samplerate;\n\t}\n\tv3 = x - s2;\n\tv1 = c_a1 * s1 + c_a2 * v3;\n\tv2 = s2 + c_a2 * s1 + c_a3 * v3;\n\ts1 = fixdenorm(2 * v1 - s1);\n\ts2 = fixdenorm(2 * v2 - s2);\n\treturn v2, v1, x - c_k * v1 - v2;\n}\n\nlp1(x, fc) {\n\tHistory z(0);\n\tHistory key_fc(-1);\n\tHistory key_sr(-1);\n\tHistory c_a(0);\n\tif (fc != key_fc || samplerate != key_sr) {\n\t\tc_a = 1 - exp(-twopi * min(fc, samplerate * 0.49) / samplerate);\n\t\tkey_fc = fc;\n\t\tkey_sr = samplerate;\n\t}\n\tz = fixdenorm(z + c_a * (x - z));\n\treturn z;\n}\n\nhp1(x, fc) {\n\treturn x - lp1(x, fc);\n}\n\ndc_block(x) {\n\tHistory x1(0);\n\tHistory y1(0);\n\tR = 1 - twopi * 10 / samplerate;\n\ty = fixdenorm(x - x1 + R * y1);\n\tx1 = x;\n\ty1 = y;\n\treturn y;\n}\n\nhermite(xm1, x0, x1, x2, fq) {\n\tc1 = 0.5 * (x1 - xm1);\n\tc2 = xm1 - 2.5 * x0 + 2 * x1 - 0.5 * x2;\n\tc3 = 0.5 * (x2 - xm1) + 1.5 * (x0 - x1);\n\treturn ((c3 * fq + c2) * fq + c1) * fq + x0;\n}\n\nsoftclip(x, k, c) {\n\tax = abs(x);\n\ty = x;\n\tif (ax > k) {\n\t\tsg = (x >= 0) ? 1 : -1;\n\t\ty = sg * (k + (c - k) * tanh((ax - k) / (c - k)));\n\t}\n\treturn y;\n}\n\ntapesat(x, b) {\n\tHistory key_b(-99999);\n\tHistory c_tb(0);\n\tif (b != key_b) {\n\t\tc_tb = tanh(b);\n\t\tkey_b = b;\n\t}\n\ttb = c_tb;\n\treturn (tanh(x + b) - tb) / (1 - tb * tb);\n}\n\npsmooth(t, a) {\n\tHistory st_s(0);\n\tHistory init(0);\n\tif (init < 0.5) {\n\t\tst_s = t;\n\t\tinit = 1;\n\t}\n\tst_s = st_s + a * (t - st_s);\n\tif (abs(t - st_s) <= 0.000000001 * max(1, abs(t))) {\n\t\tst_s = t;\n\t}\n\treturn st_s;\n}\n\nfsmooth(fq, a) {\n\tHistory ls(0);\n\tHistory init(0);\n\tl_t = log(fq);\n\tif (init < 0.5) {\n\t\tls = l_t;\n\t\tinit = 1;\n\t}\n\tls = ls + a * (l_t - ls);\n\tif (abs(l_t - ls) <= 0.000000001) {\n\t\tls = l_t;\n\t}\n\treturn (ls == l_t) ? fq : exp(ls);\n}\n\n// JFET drain current, square law: Id = Idss (1 - Vgs/Vp)^2 for Vp < Vgs, else 0.\n// Vgs above +0.4 V is held there (gate-source diode conducts).\n// Source node: Rs in parallel with Cs (Cs = 0 when the bypass cap is out).\n// Backward-Euler step for the source node, solved in closed form:\n//   (Cs/dt + 1/Rs) Vs - (Cs/dt) Vs0 = Id(vg - Vs)\n// Returns (Id, Vs).\nfet_step(vg, vs0, cdt, rs, idss, vp) {\n\ta = cdt + 1 / rs;\n\tb = cdt * vs0;\n\tvgc = min(vg, 0.4 + vs0);\n\t// w = 1 - Vgs/Vp; Vs = Vp w - Vp + vg  ->  idss w^2 - a Vp w + (a Vp - a vg + b) = 0\n\tqa = idss;\n\tqb = -a * vp;\n\tqc = a * vp - a * vgc + b;\n\tdisc = qb * qb - 4 * qa * qc;\n\tidq = 0;\n\tvsq = b / a;                                  // cut-off: no drain current\n\tif (disc >= 0) {\n\t\tw = (-qb + sqrt(disc)) / (2 * qa);\n\t\tif (w > 0) {\n\t\t\tidq = idss * w * w;\n\t\t\tvsq = vp * w - vp + vgc;\n\t\t}\n\t}\n\treturn idq, vsq;\n}\n\n// Passive output mixer (EP-3; values from replica/forum traces [S11][S13]-[S15], APPROX until a\n// clean schematic): drain -0.1uF- A; A -470k- gnd; A -220k- B; B = Echo Volume lug 1;\n// B -100k- OUT. Echo amp -220k- E; E -100k- gnd; E = pot lug 3; E -100k- OUT.\n// The 500k pot's WIPER IS GROUNDED: k = 0 shorts the echo lug, k = 1 shorts the dry lug,\n// so Echo Volume is a blend and the dry level peaks near k = 0.2 (non-monotonic).\n// OUT drives the amp (1M) and the cable capacitance. Returns dry gain, echo gain and the\n// Thevenin resistance at OUT (which, with the cable C, sets the treble roll-off).\nmixer(k) {\n\trp3 = clamp(k, 0, 1) * 500000;\n\trp1 = 500000 - rp3;\n\tra = 22000 * 470000 / 492000;\n\tvbf = (470000 / 492000) * rp1 / (ra + 220000 + rp1);\n\trdb = (ra + 220000) * rp1 / (ra + 220000 + rp1) + 100000;\n\trsh = rp3 * 100000 / (rp3 + 100000);\n\tvef = rsh / (220000 + rsh);\n\treb = 220000 * rsh / (220000 + rsh) + 100000;\n\tgsum = 1 / rdb + 1 / reb + 0.000001;\n\treturn vbf / rdb / gsum, vef / reb / gsum, 1 / gsum;\n}\n\n// F1/F2 (v0.1.1): peak gain of the fixed playback/record loop chain for a de-emphasis corner fde:\n// tape HF loss (2-pole, 5188 Hz) x de-emphasis (1-pole fde, normalised to 1 at 1 kHz)\n// x couplings (30, 20, 10 Hz high-passes). The 1 kHz normalisation lifts the chain above 1 below\n// 1 kHz: peak 1.043 (334 Hz) for 3 nF and 3.383 (102 Hz) for 33 nF, matching measured per-pass\n// gains of 1.040 / 3.369 (validation/EP3_REMEDIATION_REPORT.md). Grid search, 20 Hz\u20134 kHz.\nloop_peak(fde) {\n\tnrm = sqrt(1 + (1000 / fde) * (1000 / fde));\n\tpk = 0;\n\tfor (ii = 0; ii < 96; ii += 1) {\n\t\tfq = 20 * pow(200, ii / 95);\n\t\tg_tp = 1 / sqrt(1 + pow(fq / 5188, 4));\n\t\tgd = nrm / sqrt(1 + (fq / fde) * (fq / fde));\n\t\tg30 = (fq / 30) / sqrt(1 + (fq / 30) * (fq / 30));\n\t\tg20 = (fq / 20) / sqrt(1 + (fq / 20) * (fq / 20));\n\t\tg10 = (fq / 10) / sqrt(1 + (fq / 10) * (fq / 10));\n\t\tpk = max(pk, g_tp * gd * g30 * g20 * g10);\n\t}\n\treturn pk;\n}\n\n// ---------- tape ------------------------------------------------------\n// 112.5 s * 48 000 cells/s (+ margin)\nData tape(5400064, 1);\n\n// ---------- parameters ------------------------------------------------\nParam in_gain_db(0, min=-36, max=12);\nParam dry(1, min=0, max=1);                  // Echolivity trim on the dry branch (1 = original)\nParam echo(0.5, min=0, max=1);               // ECHO VOLUME: the 500k blend pot (wiper grounded)\nParam echo_trim_db(0, min=-24, max=12);      // Echolivity trim on the echo branch\nParam out_db(0, min=-36, max=12);\nParam mode(2, min=0, max=2);\nParam bpm(120, min=20, max=999);\nParam sync_div(2, min=0, max=5);\nParam sync_type(0, min=0, max=2);\nParam sync_mult(1, min=1, max=8);\nParam offset_ms(0, min=-100, max=100);\nParam tap(0, min=0, max=1000000);\nParam tap_div(3, min=0, max=5);\nParam tap_type(0, min=0, max=2);\nParam bar_beats(4, min=1, max=16);\n// ECHO DELAY slider: delay is linear in head position at constant tape speed.\n// 60\u2013600 ms default = DAFX/CCRMA measured range [S3]; 80\u2013800 per [S4].\nParam slider_pos(0.5, min=0, max=1);\nParam slider_min_ms(60, min=2, max=2000);\nParam slider_max_ms(600, min=2, max=4000);\nParam glide_ms(40, min=1, max=2000);\nParam transition_ms(250, min=1, max=4000);\nParam head_slew(4, min=0.05, max=12);        // max head speed, in delay-seconds per second (APPROX)\n// EP-3 front panel / internal\nParam sustain(0.4, min=0, max=1);            // ECHO SUSTAIN (500k lin [S12]); runs away from 0.8 (test E14)\nParam rec_db(0, min=-12, max=12);            // RECORD LEVEL trimmer (internal on the original)\nParam sos(0, min=0, max=1);                  // ECHO / SOUND ON SOUND switch\nParam sos_db(-1, min=-6, max=0);             // SOS loss per pass; manual alignment: \"approximately 1dB\"\nParam echo_on(1, min=0, max=1);              // footswitch: echo on/off\nParam playback(0, min=0, max=1);             // footswitch: playback (record + erase off)\nParam pre_bypass(1, min=0, max=1);           // Q5 source bypass 0.022 uF (manual addendum) in/out\nParam cable_pf(470, min=0, max=2000);        // cable + amp input capacitance; 470 pF fits ClinchFX's descriptions (test E07)\nParam pb_eq(0, min=0, max=1);                // de-emphasis: 0 = 18k/0.003uF (forum), 1 = 18k/0.033uF (manual scan)\nParam bias_khz(100, min=40, max=120);        // \"approximate frequency of 100 KC\" [S1]\nParam bias_leak(0.3, min=0, max=1);          // bias heard on very fast slider moves (APPROX level)\nParam loop_s(8, min=1, max=112.5);           // F3 (v0.1.1): default 8 s for usable SOS/PLAYBACK; 112.5 s = ~75 ft at 8 ips [S18] (authentic)\n// tape character (Echolivity)\nParam sat(0.5, min=0, max=1);\nParam noise_db(-60, min=-120, max=-30);\nParam wow(0.1, min=0, max=1);                // slow drift\nParam flutter(0.25, min=0, max=1);           // 0.5 stays within the 0.3 % spec (E10: 0.256 %); capstan 26 Hz, pinch 2.5/5 Hz\n// performance (Echolivity)\nParam hold(0, min=0, max=1);\nParam hold_fb(1, min=0.9, max=1.05);\nParam drive(0, min=0, max=1);\nParam drive_db(12, min=0, max=24);\nParam drive_fb(0, min=0, max=1);\nParam tape_stop(0, min=0, max=1);\nParam stop_time(1, min=0.05, max=8);\nParam start_time(0.4, min=0.05, max=8);\nParam fb_hp_hz(10, min=10, max=2000);\nParam fb_lp_hz(20000, min=500, max=20000);\nParam fb_res(0, min=0, max=1);\nParam echo_hp_hz(10, min=10, max=2000);\nParam echo_lp_hz(20000, min=500, max=20000);\nParam protect(1, min=0, max=1);\nParam ceiling_db(-0.3, min=-12, max=0);\n\n// ---------- state -----------------------------------------------------\nHistory p(0);\nHistory d_head(-1);\nHistory Ts1(-1);\nHistory Ts2(-1);\nHistory w_prev(0);\nHistory rec_prev(0);\nHistory first(1);\nHistory s_stop(1);\nHistory hold_s(0);\nHistory drive_s(0);\nHistory sos_s(0);\nHistory echo_on_s(1);\nHistory echo_on_s2(1);\nHistory pb_s(0);\nHistory env(0);\nHistory prev_mode(-1);\nHistory trans_left(0);\nHistory nsamp(0);\nHistory tap_prev(0);\nHistory last_tap(-1);\nHistory t_count(0);\nHistory ti0(0);\nHistory ti1(0);\nHistory ti2(0);\nHistory ti3(0);\nHistory tap_bpm(120);\nHistory ph_cap(0);\nHistory ph_p1(0);\nHistory ph_p2(0);\nHistory drift(0);\nHistory fl_rnd(0);\nHistory last_sr(0);\nHistory vs_state(-1);\nHistory pg_hold(1);\nHistory pg_s(1);\nHistory ph_cnt(0);\nHistory u_out(1);\nHistory ck_pk3(-1);\nHistory ck_pk33(-1);\nHistory L_cur(-1);\nHistory hp_env(0);\nHistory hold_tgt(0);\nHistory hold_c(1);\nHistory hold_prev(0);\nHistory hold_cnt(0);\nHistory hold_pass(0);\nHistory hold_np(0);\nHistory hold_elast(0);\nHistory lg(1);\nHistory lg1(1);\nHistory lg_t(1);\nHistory lg_hold(0);\n// cached coefficients\nHistory ck_sr(-1);\nHistory ck_ps(0);\nHistory ck_a10(0);\nHistory ck_drift(0);\nHistory ck_flr(0);\nHistory ck_nnorm(1);\nHistory ck_up(0);\nHistory ck_dn(0);\nHistory ck_prel(0);\nHistory ck_patt(0);\nHistory ck_tau(-1);\nHistory ck_as(0);\nHistory ck_fkey(-99999);\nHistory ck_idq(0);\nHistory ck_vsq(0);\nHistory ck_dkey(-99999);\nHistory ck_dg(1);\nHistory ck_sat(-99999);\nHistory ck_gt(1);\nHistory ck_ing(-99999);\nHistory ck_ig(1);\nHistory ck_rkey(-99999);\nHistory ck_rg(1);\nHistory ck_skey(-99999);\nHistory ck_sg(0.891);\nHistory ck_nkey(-99999);\nHistory ck_ng(0);\nHistory ck_okey(-99999);\nHistory ck_kkey(-99999);\nHistory ck_gd(0.18);\nHistory ck_ge(0.13);\nHistory ck_rth(83000);\nHistory ck_en(1);\nHistory ck_etkey(-99999);\nHistory ck_et(1);\nHistory ck_og(1);\nHistory ck_ckey(-99999);\nHistory ck_cl(1);\n\nCR = 48000;                                  // tape cells per second at nominal speed\nNB = 5400064;\nVPF = 0.794;                                 // volts per full scale (100 mV = -18 dBFS RMS)\nRD = 22000;                                  // Q5 drain resistor [S1][S8]\nRS = 3300;                                   // Q5 source resistor [S1]\nCS = 0.000000022;                            // Q5 source bypass [S1 addendum]\nIDSS = 0.0034;                               // APPROX: fitted so Vs = 1.8 V at 21.2 V supply\nVP = -3.0;                                   //   (measured 1.72\u20131.88 V / 21.0\u201321.3 V on two units [S8])\nVDD = 21.2;\nFBIAS_MIN_SP = 0.45;                         // spatial Nyquist guard (cycles per tape cell)\n\nsr = samplerate;\nt = nsamp;\nnsamp = nsamp + 1;\nx = 0.5 * (fixnan(in1) + fixnan(in2));      // mono, like the original\n\nif (sr != last_sr) {\n\tif (last_sr > 0) {\n\t\tTs1 = -1;\n\t\tTs2 = -1;\n\t\td_head = -1;\n\t\tlast_tap = -1;\n\t\tt_count = 0;\n\t}\n\tlast_sr = sr;\n}\n\n// ================= TAP TEMPO (sample counter; as the H&H device) =======\nif (tap > tap_prev + 0.5) {\n\tif (last_tap >= 0) {\n\t\tiv = t - last_tap;\n\t\tif (iv < 0.15 * sr) {\n\t\t\tiv = -1;\n\t\t} else if (iv > 2 * sr) {\n\t\t\tt_count = 0;\n\t\t\tlast_tap = t;\n\t\t} else {\n\t\t\tif (t_count > 0) {\n\t\t\t\ttavg0 = (ti0 + ti1 + ti2 + ti3) / min(t_count, 4);\n\t\t\t\tif (abs(iv - tavg0) > 0.4 * tavg0) {\n\t\t\t\t\tt_count = 0;\n\t\t\t\t}\n\t\t\t}\n\t\t\tti3 = ti2;\n\t\t\tti2 = ti1;\n\t\t\tti1 = ti0;\n\t\t\tti0 = iv;\n\t\t\tif (t_count == 0) {\n\t\t\t\tti1 = 0;\n\t\t\t\tti2 = 0;\n\t\t\t\tti3 = 0;\n\t\t\t}\n\t\t\tt_count = min(t_count + 1, 4);\n\t\t\ttavg = (ti0 + ti1 + ti2 + ti3) / t_count;\n\t\t\ttap_bpm = 60 * sr / tavg;\n\t\t\tlast_tap = t;\n\t\t}\n\t} else {\n\t\tlast_tap = t;\n\t}\n}\ntap_prev = tap;\n\n// ================= TARGET DELAY TIME ==================================\ns_lo = min(slider_min_ms, slider_max_ms);\ns_hi = max(slider_min_ms, slider_max_ms);\nT = (s_lo + slider_pos * (s_hi - s_lo)) * 0.001;\nif (mode < 1.5) {\n\tuse_bpm = max(bpm, 20);\n\tdv_idx = floor(sync_div + 0.5);\n\ttyp = floor(sync_type + 0.5);\n\tif (mode >= 0.5) {\n\t\tuse_bpm = tap_bpm;\n\t\tdv_idx = floor(tap_div + 0.5);\n\t\ttyp = floor(tap_type + 0.5);\n\t}\n\tbeats = 0.125;\n\tif (dv_idx == 1) { beats = 0.25; }\n\telse if (dv_idx == 2) { beats = 0.5; }\n\telse if (dv_idx == 3) { beats = 1; }\n\telse if (dv_idx == 4) { beats = 2; }\n\telse if (dv_idx >= 5) { beats = bar_beats; }\n\tif (typ == 1) { beats = beats * 1.5; }\n\telse if (typ == 2) { beats = beats * 2 / 3; }\n\tT = 60 / use_bpm * beats * max(sync_mult, 1) + offset_ms * 0.001;\n}\nT = clamp(T, 0.002, 4);\n\n// sample-rate-dependent constants\nif (sr != ck_sr) {\n\tck_ps = 1 - exp(-1 / (0.010 * sr));\n\tck_a10 = ck_ps;\n\tck_drift = 1 - exp(-twopi * 0.5 / sr);\n\tck_flr = 1 - exp(-twopi * 20 / sr);\n\ta_n0 = 1 - exp(-twopi * min(10000, 0.49 * sr) / sr);\n\tck_nnorm = sqrt((1 / 3) * a_n0 / (2 - a_n0));\n\tck_up = 1 - exp(-1 / (0.001 * sr));\n\tck_dn = 1 - exp(-1 / (0.200 * sr));\n\tck_prel = 1 - exp(-1 / (0.150 * sr));\n\tck_patt = 1 - exp(-1 / (0.0005 * sr));\n\tck_sr = sr;\n\tck_tau = -1;\n\tck_fkey = -99999;\n\tck_nkey = -99999;\n}\n\n// smoothed continuous parameters\nsm_in_gain_db = psmooth(in_gain_db, ck_ps);\nsm_dry = psmooth(dry, ck_ps);\nsm_echo = psmooth(echo, ck_ps);\nsm_echo_trim_db = psmooth(echo_trim_db, ck_ps);\nsm_out_db = psmooth(out_db, ck_ps);\nsm_sustain = psmooth(sustain, ck_ps);\nsm_rec_db = psmooth(rec_db, ck_ps);\nsm_sos_db = psmooth(sos_db, ck_ps);\nsm_bias_leak = psmooth(bias_leak, ck_ps);\nsm_sat = psmooth(sat, ck_ps);\nsm_noise_db = psmooth(noise_db, ck_ps);\nsm_wow = psmooth(wow, ck_ps);\nsm_flutter = psmooth(flutter, ck_ps);\nsm_hold_fb = psmooth(hold_fb, ck_ps);\nsm_drive_db = psmooth(drive_db, ck_ps);\nsm_fb_res = psmooth(fb_res, ck_ps);\nsm_cable_pf = psmooth(cable_pf, ck_ps);\nsm_bias_khz = fsmooth(bias_khz, ck_ps);\nsm_fb_hp_hz = fsmooth(fb_hp_hz, ck_ps);\nsm_fb_lp_hz = fsmooth(fb_lp_hz, ck_ps);\nsm_echo_hp_hz = fsmooth(echo_hp_hz, ck_ps);\nsm_echo_lp_hz = fsmooth(echo_lp_hz, ck_ps);\n// ceiling_db is not smoothed (see H&H test P05)\n\nif (mode != prev_mode) {\n\tif (prev_mode >= 0) {\n\t\ttrans_left = transition_ms * 0.001 * sr * 3;\n\t}\n\tprev_mode = mode;\n}\ntau_ms = glide_ms;\nif (trans_left > 0) {\n\ttau_ms = max(transition_ms, glide_ms);\n\ttrans_left = trans_left - 1;\n}\nif (tau_ms != ck_tau) {\n\tck_as = 1 - exp(-1 / (max(tau_ms, 0.5) * 0.001 * sr));\n\tck_tau = tau_ms;\n}\na_s = ck_as;\nTc = T * CR;                                 // target head distance in tape cells\nif (Ts1 < 0) {\n\tTs1 = Tc;\n\tTs2 = Tc;\n}\nTs1 = Ts1 + a_s * (Tc - Ts1);\nTs2 = Ts2 + a_s * (Ts1 - Ts2);\n\n// ================= TRANSPORT ==========================================\nif (tape_stop > 0.5) {\n\ts_stop = max(0, s_stop - 1 / (max(stop_time, 0.02) * sr));\n} else {\n\ts_stop = min(1, s_stop + 1 / (max(start_time, 0.02) * sr));\n}\n// F6 (v0.1.1): a Loop Length change moves the wrap point, so the heads land on other tape.\n// Fade the playback (echo + feedback) out with a smooth 2-stage curve (3 ms stages, ~40 ms to\n// silence), apply the new length, keep it muted until freshly recorded tape reaches the echo\n// head (one delay + 5 ms: the tape between the heads still holds old material), then fade in.\nL_tgt = floor(clamp(loop_s, 1, 112.5) * CR);\nif (L_cur < 0) {\n\tL_cur = L_tgt;\n}\nlg_t = 1;\nif (L_tgt != L_cur) {\n\tlg_t = 0;\n\tif (lg < 0.0001) {\n\t\tL_cur = L_tgt;\n\t\tfirst = 1;                               // restart the write-head tracking on the new loop\n\t\tlg_hold = Ts2 * sr / CR + 0.005 * sr;    // one delay (target head distance) + 5 ms\n\t}\n}\nif (lg_hold > 0) {\n\tlg_t = 0;\n\tlg_hold = lg_hold - 1;\n}\na_lg = 1 - exp(-1 / (0.003 * sr));\nlg1 = lg1 + a_lg * (lg_t - lg1);\nlg = lg + a_lg * (lg1 - lg);\nL = L_cur;\n\n// flutter: capstan 26 Hz, pinch wheel 2.5 / 5.0 Hz (measured on an Echoplex [S5]),\n// plus a little broadband flutter and slow drift. flutter = 0.5 -> within the 0.3 % spec (E10: 0.256 % peak).\nph_cap = ph_cap + 26 / sr;\nph_cap = ph_cap - floor(ph_cap);\nph_p1 = ph_p1 + 2.5 / sr;\nph_p1 = ph_p1 - floor(ph_p1);\nph_p2 = ph_p2 + 5.0 / sr;\nph_p2 = ph_p2 - floor(ph_p2);\ndrift = drift + ck_drift * (noise() * 3 - drift);\nfl_rnd = fl_rnd + ck_flr * (noise() * 2 - fl_rnd);\nwf = sm_flutter * 0.006 * (0.45 * sin(twopi * ph_cap) + 0.3 * sin(twopi * ph_p1) + 0.15 * sin(twopi * ph_p2) + 0.1 * fl_rnd)\n   + sm_wow * 0.005 * drift;\n\nv_eff = clamp(s_stop * (1 + wf), 0, 2);\nvc = v_eff * CR / sr;                        // tape cells per sample\n\n// ---- record head position (moving) with a head-speed limit\nif (d_head < 0) {\n\td_head = Ts2;\n}\nhs = max(head_slew, 0.05) * CR / sr;         // cells per sample\nd_head = d_head + clamp(Ts2 - d_head, -hs, hs);\nd = clamp(d_head, 16, L - 64);\n// SOS head: fixed just upstream of the slider's far end (APPROX gap 62.5 ms = 0.5 in at 8 ips)\nd_sos = clamp((s_hi + 62.5) * 0.001 * CR, d + 1, L - 32);\n\np_new = wrap(p + vc, 0, L);\nw_new = p_new + d;                           // write position (unwrapped relative to p_new)\nw_old = w_prev;\nif (first > 0.5) {\n\tw_old = w_new - vc;\n\tfirst = 0;\n}\n// keep w_old in the same unwrapped frame as w_new\nif (w_old - w_new > 0.5 * L) {\n\tw_old = w_old - L;\n} else if (w_new - w_old > 0.5 * L) {\n\tw_old = w_old + L;\n}\nu_cps = w_new - w_old;                       // head speed over tape, cells per sample\nu_out = u_cps / max(CR / sr, 0.000001);      // 1 = normal recording speed\n\n// ================= gates & per-sample coefficients ====================\nhold_s = hold_s + ck_a10 * (hold - hold_s);\ndrive_s = drive_s + ck_a10 * (drive - drive_s);\nsos_s = sos_s + ck_a10 * (sos - sos_s);\necho_on_s = echo_on_s + ck_a10 * (echo_on - echo_on_s);\necho_on_s2 = echo_on_s2 + ck_a10 * (echo_on_s - echo_on_s2);   // 2-stage: no corner at the switch\npb_s = pb_s + ck_a10 * (playback - pb_s);\ndkey = drive_s * sm_drive_db;\nif (dkey != ck_dkey) {\n\tck_dg = pow(10, dkey / 20);\n\tck_dkey = dkey;\n}\ndrive_gain = ck_dg;\nif (sm_sat != ck_sat) {\n\tck_gt = 0.6 * pow(4, 2 * (sm_sat - 0.5));  // 0.5: ~2-3 % THD at nominal level (calibration test E05: 2.1 %)\n\tck_sat = sm_sat;\n}\ng_t = ck_gt;\nif (sm_in_gain_db != ck_ing) {\n\tck_ig = pow(10, sm_in_gain_db / 20);\n\tck_ing = sm_in_gain_db;\n}\nif (sm_rec_db != ck_rkey) {\n\tck_rg = pow(10, sm_rec_db / 20);\n\tck_rkey = sm_rec_db;\n}\nif (sm_sos_db != ck_skey) {\n\tck_sg = pow(10, sm_sos_db / 20);\n\tck_skey = sm_sos_db;\n}\nif (sm_noise_db != ck_nkey) {\n\tck_ng = (sm_noise_db > -119) ? pow(10, sm_noise_db / 20) / ck_nnorm : 0;\n\tck_nkey = sm_noise_db;\n}\n// F1/F2 (v0.1.1): scale by the chain's peak loop gain instead of assuming it is 1.\n// Sustain: x (pk3 / pk) keeps the 3 nF behaviour exactly (factor 1.0) and gives 33 nF the\n// same peak loop gain (same runaway point). HOLD: / pk makes the per-pass peak gain equal to\n// Hold Feedback, so 1.0 holds the loop instead of growing.\nif (ck_pk3 < 0) {\n\tck_pk3 = loop_peak(2947);\n\tck_pk33 = loop_peak(268);\n}\npbs = psmooth(pb_eq, ck_ps);                 // F4: de-emphasis switch is crossfaded (10 ms)\npk_loop = (1 - pbs) * ck_pk3 + pbs * ck_pk33;\nfb_amt = (sm_sustain * 1.25) * (ck_pk3 / pk_loop) * (1 - hold_s) + (sm_hold_fb / pk_loop) * hold_c * hold_s;\nfb_amt = fb_amt * (1 - sos_s);               // ECHO/SUSTAIN not operative in SOS [S1]\nq_fb = 0.707 + sm_fb_res * 6;\ndfb_g = (drive_fb > 0.5) ? drive_gain : 1;\n\n// ================= Q5 FET INPUT STAGE (always in circuit) =============\nfkey = pre_bypass * 7 + sr;\nif (fkey != ck_fkey) {\n\t// quiescent point (no signal): source cap fully charged, so cdt = 0\n\tqi, qv = fet_step(0, 0, 0, RS, IDSS, VP);\n\tck_idq = qi;\n\tck_vsq = qv;\n\tck_fkey = fkey;\n\tif (vs_state < 0) {\n\t\tvs_state = qv;\n\t}\n}\nsm_pre = psmooth(pre_bypass, ck_ps);         // F4 (v0.1.1): source cap switched over 10 ms\ncdt = CS * sr * sm_pre;\nvg = lp1(x, 15915) * VPF * ck_ig;            // input RF filter: 100k series, 100 pF to ground [S14]\nid_n, vs_n = fet_step(vg, vs_state, cdt, RS, IDSS, VP);\nvs_state = fixdenorm(vs_n);\n// drain cannot fall below the source (+0.3 V): limits large positive swings\nid_c = min(id_n, (VDD - vs_n - 0.3) / RD);\nvac = (id_c - ck_idq) * RD;                  // drain AC (V); sign flipped so the device is non-inverting\npre = vac / VPF;                             // back to full-scale units (EP-3 gain kept)\n// output mixer coefficients (recomputed only when Echo Volume moves)\nif (sm_echo != ck_kkey) {\n\tgd, ge, rt = mixer(sm_echo);\n\tgd5, ge5, rt5 = mixer(0.5);\n\tck_gd = gd;\n\tck_ge = ge;\n\tck_rth = rt;\n\tck_en = gd5 / ge5;                       // echo source level: first repeat ~ dry level at k = 0.5 (APPROX)\n\tck_kkey = sm_echo;\n}\ndry_br = hp1(pre, 7) * ck_gd * sm_dry;       // 0.1 uF coupling into ~260k: ~7 Hz\n\n// ================= ECHO HEAD READ (fixed) =============================\nri = floor(p_new);\nrf = p_new - ri;\ni0 = wrap(ri, 0, L);\nim1 = wrap(i0 - 1, 0, L);\nip1 = wrap(i0 + 1, 0, L);\nip2 = wrap(i0 + 2, 0, L);\nm0 = peek(tape, im1, 0);\nc0 = peek(tape, i0, 0);\nn0 = peek(tape, ip1, 0);\nq0 = peek(tape, ip2, 0);\ny_echo = hermite(m0, c0, n0, q0, rf);\n// SOS head (monitors the loop before it reaches the record head)\nrs_pos = p_new + d_sos;\nrsi = floor(rs_pos);\nrsf = rs_pos - rsi;\nj0 = wrap(rsi, 0, L);\njm1 = wrap(j0 - 1, 0, L);\njp1 = wrap(j0 + 1, 0, L);\njp2 = wrap(j0 + 2, 0, L);\nsm0 = peek(tape, jm1, 0);\nsc0 = peek(tape, j0, 0);\nsn0 = peek(tape, jp1, 0);\nsq0 = peek(tape, jp2, 0);\ny_sos = hermite(sm0, sc0, sn0, sq0, rsf);\n\n// ================= PLAYBACK CHAIN =====================================\ngp = min(1, v_eff / 0.15);                   // head output falls away as the tape stops\nfc_tape = clamp(5188 * v_eff, 50, 0.45 * sr); // tape HF loss: H&H fit (7782 Hz @ 12 ips) x 8/12  APPROX\nyraw = y_echo * (1 - sos_s) + y_sos * sos_s; // SOS: you hear the SOS head [S1]\ntl, tb_, th = svf(yraw * gp, fc_tape, 0.707);\n// de-emphasis: 18k with 0.003 uF (forum, 2947 Hz) / 0.033 uF (manual scan, 268 Hz); both run and\n// are crossfaded (F4). Each is normalised at 1 kHz so both give the same mid level.\ny3 = lp1(tl, 2947);\ny33 = lp1(tl, 268);\nypb = (y3 * sqrt(1 + (1000 / 2947) * (1000 / 2947))) * (1 - pbs) + (y33 * sqrt(1 + (1000 / 268) * (1000 / 268))) * pbs;\nypb = ypb * lg;                              // F6 fade\nypb = hp1(ypb, 30);                          // head-amp coupling APPROX\nypb = ypb + lp1(noise(), 10000) * ck_ng;\n// F1 (v0.1.1): HOLD level trim. A fixed loop gain cannot freeze a loop: tape saturation\n// compresses slightly at playing level and frequencies off the loop's peak decay. While HOLD\n// is on, the playback power is compared with a target, and the hold gain is trimmed by at most\n// +-3 % per pass. Settling: after HOLD is pressed the target may only fall (the loop darkens\n// naturally but never grows) until the loop stops losing level (< 1 dB over a pass, at least\n// 2 passes; at most 30 s); then it is locked and changes by Hold Feedback^2 per pass\n// (1.0 = frozen), never sitting more than 1.5 dB above the loop's own level. Outside HOLD hold_c = 1 and nothing changes.\nhp_env = fixdenorm(hp_env + (1 - exp(-1 / (0.3 * sr))) * (ypb * ypb - hp_env));\ndsamp = max(d / max(vc, 0.000001), 1);\nif (hold > 0.5 && hold_prev < 0.5) {\n\thold_tgt = hp_env;\n\thold_cnt = 30 * sr;                          // settling time limit (dark voicing needs the longest)\n\thold_pass = dsamp + 0.3 * sr;                 // first check after one pass + envelope settle\n\thold_np = 0;\n\thold_elast = hp_env;\n}\nhold_prev = hold;\nif (hold > 0.5) {\n\tif (hold_cnt > 0) {\n\t\thold_tgt = min(hold_tgt, hp_env);\n\t\thold_cnt = hold_cnt - 1;\n\t\thold_pass = hold_pass - 1;\n\t\tif (hold_pass <= 0) {\n\t\t\thold_np = hold_np + 1;\n\t\t\tif (hold_np >= 2 && hp_env > 0.794 * hold_elast) {\n\t\t\t\thold_cnt = 0;                    // lost < 1 dB over the last pass: lock\n\t\t\t}\n\t\t\thold_elast = hp_env;\n\t\t\thold_pass = dsamp;\n\t\t}\n\t\tcc = (hold_tgt > 0.0000000001) ? clamp(sqrt(hold_tgt / max(hp_env, 0.00000000000000000001)), 0.97, 1) : 0.97;\n\t} else {\n\t\thold_tgt = fixdenorm(hold_tgt * exp(2 * log(max(sm_hold_fb, 0.01)) / dsamp));\n\t\t// a shortfall beyond 1.5 dB is spectral loss (e.g. the dark voicing shedding its mids), not\n\t\t// saturation: let the target follow, so the trim never pumps the loop back up by more than 1.5 dB\n\t\thold_tgt = min(hold_tgt, hp_env * 1.413);\n\t\tcc = (hold_tgt > 0.0000000001) ? clamp(sqrt(hold_tgt / max(hp_env, 0.00000000000000000001)), 0.97, 1.03) : 0.97;\n\t}\n\thold_c = hold_c + (1 - exp(-1 / (0.2 * sr))) * (cc - hold_c);\n} else {\n\thold_c = hold_c + (1 - exp(-1 / (0.2 * sr))) * (1 - hold_c);\n}\n// Echo Sustain feedback, with the Echolivity feedback filters\nf1l, f1b, f1h = svf(ypb, sm_fb_hp_hz, q_fb);\nf2l, f2b, f2h = svf(f1h, sm_fb_lp_hz, q_fb);\nguard = (env > 1.5) ? 1.5 / env : 1;\nfbs = f2l * fb_amt * guard * dfb_g;\nenv = fixdenorm(env + ((abs(f2l * fb_amt) > env) ? ck_up : ck_dn) * (abs(f2l * fb_amt) - env));\n\n// ================= RECORD CHAIN =======================================\nu = pre * ck_rg * drive_gain * (1 - hold_s) + fbs;\nu = hp1(u, 20);\nu = tapesat(u * g_t * drive_gain, 0.05) / g_t;\nu = dc_block(u);\n// write anti-alias: the head's speed over the tape sets the tape's sample spacing\n// spatial Nyquist: a frequency f lands at f / (|u_cps| sr) cycles per cell, which must stay < 0.5\n// 4th-order Butterworth at 0.35 sr |u|: everything that plays back below 0.35 sr (16.8 kHz @ 48k)\n// is kept; what would land above Nyquist is >= 40 dB down before the head samples it (test E03)\nfc_w = clamp(0.35 * sr * abs(u_cps), 20, 0.45 * sr);\nrl1, rb1, rh1 = svf(u, fc_w, 0.5412);\nrl, rb, rh = svf(rl1, fc_w, 1.3066);\nrec = fixnan(rl);\n\n// ================= RECORD/ERASE HEAD: fill every cell crossed =========\n// ECHO: erase + record (overwrite). SOS: erase off, new is added to the old\n// layer, which loses sos_db per pass. PLAYBACK: record and erase off.\nwr_gain = 1 - pb_s;\nsp_bias = sm_bias_khz * 1000 / (max(abs(u_cps), 0.000001) * sr);  // bias cycles per tape cell\nbias_amp = 0;\nif (sp_bias < FBIAS_MIN_SP) {\n\tbias_amp = sm_bias_leak * 0.1 * min(1, (FBIAS_MIN_SP - sp_bias) / 0.1);   // level APPROX\n}\nif (wr_gain > 0.0001 && abs(u_cps) > 0.000001) {\n\tklo = (u_cps > 0) ? floor(w_old) + 1 : -floor(-w_new);      // -floor(-x) = ceil(x)\n\tkhi = (u_cps > 0) ? floor(w_new) : -floor(-w_old) - 1;\n\tfor (k = klo; k <= khi; k += 1) {\n\t\tfq = (k - w_old) / u_cps;\n\t\tki = wrap(k, 0, L);\n\t\tval = rec_prev + fq * (rec - rec_prev);\n\t\tif (bias_amp > 0) {\n\t\t\tval = val + bias_amp * sin(twopi * sm_bias_khz * 1000 * ((t - 1 + fq) / sr));\n\t\t}\n\t\told = peek(tape, ki, 0);\n\t\tkeep = sos_s * ck_sg;                            // SOS keeps the old layer\n\t\tnv = old * (1 - wr_gain) + wr_gain * (old * keep + val);\n\t\tpoke(tape, nv, ki, 0);\n\t}\n}\nrec_prev = rec;\nw_prev = w_new;\np = p_new;\n\n// ================= OUTPUT =============================================\ne1l, e1b, e1h = svf(ypb, sm_echo_hp_hz, 0.707);\ne2l, e2b, e2h = svf(e1h, sm_echo_lp_hz, 0.707);\nech = dc_block(e2l) * echo_on_s2;\nif (sm_out_db != ck_okey) {\n\tck_og = pow(10, sm_out_db / 20);\n\tck_okey = sm_out_db;\n}\nif (sm_echo_trim_db != ck_etkey) {\n\tck_et = pow(10, sm_echo_trim_db / 20);\n\tck_etkey = sm_echo_trim_db;\n}\no_mix = dry_br + ech * ck_en * ck_ge * ck_et;\n// F4 (v0.1.1): the cable filter always runs (no stale state); below 1 pF it is blended out\no_lp = lp1(o_mix, 1 / (twopi * ck_rth * max(sm_cable_pf, 1) * 0.000000000001));\nif (sm_cable_pf >= 1) {\n\to_mix = o_lp;\n} else if (sm_cable_pf > 0) {\n\to_mix = o_mix + sm_cable_pf * (o_lp - o_mix);\n}\no1 = fixnan(o_mix * ck_og);\no2 = o1;\n\n// ================= OUTPUT PROTECTION (as the H&H device) =================\nif (ceiling_db != ck_ckey) {\n\tck_cl = pow(10, ceiling_db / 20);\n\tck_ckey = ceiling_db;\n}\nc_lin = ck_cl;\nthr = c_lin * 0.944061;\npk = abs(o1);\nover = (pk > thr) ? 1 : 0;\npg = 1;\nif (protect > 0.5) {\n\tgreq = (pk > thr) ? thr / pk : 1;\n\tif (greq < pg_hold) {\n\t\tpg_hold = greq;\n\t\tph_cnt = 0.010 * sr;\n\t} else if (ph_cnt > 0) {\n\t\tph_cnt = ph_cnt - 1;\n\t} else {\n\t\tpg_hold = pg_hold + ck_prel * (1 - pg_hold);\n\t}\n\tif (pg_hold < pg_s) {\n\t\tpg_s = pg_s + ck_patt * (pg_hold - pg_s);\n\t} else {\n\t\tpg_s = pg_hold;\n\t}\n\tpg = pg_s;\n\to1 = softclip(o1 * pg, thr, c_lin);\n\to2 = o1;\n} else {\n\tpg_hold = 1;\n\tpg_s = 1;\n\tph_cnt = 0;\n}\n\nout1 = o1;\nout2 = o2;\nout3 = (d / max(vc, 0.000000001)) / sr * 1000;\nout4 = tap_bpm;\nout5 = u_out;\nout6 = v_eff;\nout7 = pg;\nout8 = over;\n",
         "fontface": 0,
         "fontname": "<Monospaced>",
         "fontsize": 11.0,
         "numinlets": 2,
         "numoutlets": 8,
         "outlettype": [
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          ""
         ],
         "patching_rect": [
          20,
          60,
          900,
          700
         ]
        }
       },
       {
        "box": {
         "id": "g-in1",
         "maxclass": "newobj",
         "text": "in 1",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          20,
          20,
          30,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-in2",
         "maxclass": "newobj",
         "text": "in 2",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          880,
          20,
          30,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out1",
         "maxclass": "newobj",
         "text": "out 1",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out2",
         "maxclass": "newobj",
         "text": "out 2",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          140,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out3",
         "maxclass": "newobj",
         "text": "out 3",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          260,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out4",
         "maxclass": "newobj",
         "text": "out 4",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          380,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out5",
         "maxclass": "newobj",
         "text": "out 5",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          500,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out6",
         "maxclass": "newobj",
         "text": "out 6",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          620,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out7",
         "maxclass": "newobj",
         "text": "out 7",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          740,
          780,
          40,
          22
         ]
        }
       },
       {
        "box": {
         "id": "g-out8",
         "maxclass": "newobj",
         "text": "out 8",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          860,
          780,
          40,
          22
         ]
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "g-in1",
          0
         ],
         "destination": [
          "g-code",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-in2",
          0
         ],
         "destination": [
          "g-code",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          0
         ],
         "destination": [
          "g-out1",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          1
         ],
         "destination": [
          "g-out2",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          2
         ],
         "destination": [
          "g-out3",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          3
         ],
         "destination": [
          "g-out4",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          4
         ],
         "destination": [
          "g-out5",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          5
         ],
         "destination": [
          "g-out6",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          6
         ],
         "destination": [
          "g-out7",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "g-code",
          7
         ],
         "destination": [
          "g-out8",
          0
         ]
        }
       }
      ]
     }
    }
   },
   {
    "box": {
     "id": "obj-152",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      920,
      870,
      130,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "text": "record~ out_BEH4_loop_change 1"
    }
   },
   {
    "box": {
     "id": "obj-153",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1070,
      766,
      80,
      22
     ],
     "outlettype": [
      "bang"
     ],
     "text": "delay 8300"
    }
   },
   {
    "box": {
     "id": "obj-154",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1070,
      796,
      40,
      22
     ],
     "outlettype": [
      "bang",
      "bang"
     ],
     "text": "t b b"
    }
   },
   {
    "box": {
     "id": "obj-155",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1070,
      826,
      30,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "0"
    }
   },
   {
    "box": {
     "id": "obj-156",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1070,
      900,
      250,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "writewave out_BEH4_loop_change_max.wav"
    }
   },
   {
    "box": {
     "id": "obj-157",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      920,
      930,
      290,
      20
     ],
     "text": "\u2192 writes out_BEH4_loop_change_max.wav",
     "fontsize": 10.0
    }
   },
   {
    "box": {
     "id": "obj-158",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1070,
      704,
      80,
      22
     ],
     "outlettype": [
      "bang"
     ],
     "text": "delay 4000"
    }
   },
   {
    "box": {
     "id": "obj-159",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1155,
      704,
      55,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "loop_s 4"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-3",
      0
     ],
     "destination": [
      "obj-4",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-3",
      0
     ],
     "destination": [
      "obj-5",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-5",
      0
     ],
     "destination": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-3",
      0
     ],
     "destination": [
      "obj-9",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-9",
      0
     ],
     "destination": [
      "obj-17",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-12",
      0
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-13",
      2
     ],
     "destination": [
      "obj-14",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-13",
      1
     ],
     "destination": [
      "obj-15",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-13",
      0
     ],
     "destination": [
      "obj-19",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-14",
      0
     ],
     "destination": [
      "obj-18",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-15",
      0
     ],
     "destination": [
      "obj-16",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-16",
      0
     ],
     "destination": [
      "obj-17",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-16",
      0
     ],
     "destination": [
      "obj-17",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-17",
      0
     ],
     "destination": [
      "obj-18",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-19",
      0
     ],
     "destination": [
      "obj-20",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-20",
      1
     ],
     "destination": [
      "obj-21",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-20",
      0
     ],
     "destination": [
      "obj-22",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-21",
      0
     ],
     "destination": [
      "obj-18",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-22",
      0
     ],
     "destination": [
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-3",
      0
     ],
     "destination": [
      "obj-25",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-25",
      0
     ],
     "destination": [
      "obj-33",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-28",
      0
     ],
     "destination": [
      "obj-29",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      2
     ],
     "destination": [
      "obj-30",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      1
     ],
     "destination": [
      "obj-31",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      0
     ],
     "destination": [
      "obj-35",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-30",
      0
     ],
     "destination": [
      "obj-34",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-31",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-32",
      0
     ],
     "destination": [
      "obj-33",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-32",
      0
     ],
     "destination": [
      "obj-33",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-33",
      0
     ],
     "destination": [
      "obj-34",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-35",
      0
     ],
     "destination": [
      "obj-36",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-36",
      1
     ],
     "destination": [
      "obj-37",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-36",
      0
     ],
     "destination": [
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-37",
      0
     ],
     "destination": [
      "obj-34",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-38",
      0
     ],
     "destination": [
      "obj-27",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-3",
      0
     ],
     "destination": [
      "obj-41",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-41",
      0
     ],
     "destination": [
      "obj-49",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-44",
      0
     ],
     "destination": [
      "obj-45",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-45",
      2
     ],
     "destination": [
      "obj-46",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-45",
      1
     ],
     "destination": [
      "obj-47",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-45",
      0
     ],
     "destination": [
      "obj-51",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-46",
      0
     ],
     "destination": [
      "obj-50",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-47",
      0
     ],
     "destination": [
      "obj-48",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-48",
      0
     ],
     "destination": [
      "obj-49",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-48",
      0
     ],
     "destination": [
      "obj-49",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-49",
      0
     ],
     "destination": [
      "obj-50",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-51",
      0
     ],
     "destination": [
      "obj-52",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-52",
      1
     ],
     "destination": [
      "obj-53",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-52",
      0
     ],
     "destination": [
      "obj-54",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-53",
      0
     ],
     "destination": [
      "obj-50",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-54",
      0
     ],
     "destination": [
      "obj-43",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-3",
      0
     ],
     "destination": [
      "obj-57",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-57",
      0
     ],
     "destination": [
      "obj-65",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-60",
      0
     ],
     "destination": [
      "obj-61",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-61",
      2
     ],
     "destination": [
      "obj-62",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-61",
      1
     ],
     "destination": [
      "obj-63",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-61",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-62",
      0
     ],
     "destination": [
      "obj-66",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-63",
      0
     ],
     "destination": [
      "obj-64",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-64",
      0
     ],
     "destination": [
      "obj-65",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-64",
      0
     ],
     "destination": [
      "obj-65",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-65",
      0
     ],
     "destination": [
      "obj-66",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-67",
      0
     ],
     "destination": [
      "obj-68",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-68",
      1
     ],
     "destination": [
      "obj-69",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-68",
      0
     ],
     "destination": [
      "obj-70",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      0
     ],
     "destination": [
      "obj-66",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-70",
      0
     ],
     "destination": [
      "obj-59",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-3",
      0
     ],
     "destination": [
      "obj-73",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-73",
      0
     ],
     "destination": [
      "obj-81",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-76",
      0
     ],
     "destination": [
      "obj-77",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-77",
      2
     ],
     "destination": [
      "obj-78",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-77",
      1
     ],
     "destination": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-77",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-78",
      0
     ],
     "destination": [
      "obj-82",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-79",
      0
     ],
     "destination": [
      "obj-80",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-80",
      0
     ],
     "destination": [
      "obj-81",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-80",
      0
     ],
     "destination": [
      "obj-81",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-81",
      0
     ],
     "destination": [
      "obj-82",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-83",
      0
     ],
     "destination": [
      "obj-84",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-84",
      1
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-84",
      0
     ],
     "destination": [
      "obj-86",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-85",
      0
     ],
     "destination": [
      "obj-82",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-86",
      0
     ],
     "destination": [
      "obj-75",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-3",
      0
     ],
     "destination": [
      "obj-89",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-89",
      0
     ],
     "destination": [
      "obj-97",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-92",
      0
     ],
     "destination": [
      "obj-93",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-93",
      2
     ],
     "destination": [
      "obj-94",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-93",
      1
     ],
     "destination": [
      "obj-95",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-93",
      0
     ],
     "destination": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-94",
      0
     ],
     "destination": [
      "obj-98",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-95",
      0
     ],
     "destination": [
      "obj-96",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-96",
      0
     ],
     "destination": [
      "obj-97",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-96",
      0
     ],
     "destination": [
      "obj-97",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-97",
      0
     ],
     "destination": [
      "obj-98",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-99",
      0
     ],
     "destination": [
      "obj-100",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-100",
      1
     ],
     "destination": [
      "obj-101",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-100",
      0
     ],
     "destination": [
      "obj-102",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-101",
      0
     ],
     "destination": [
      "obj-98",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-102",
      0
     ],
     "destination": [
      "obj-91",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-93",
      0
     ],
     "destination": [
      "obj-104",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-104",
      0
     ],
     "destination": [
      "obj-105",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-105",
      0
     ],
     "destination": [
      "obj-97",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-3",
      0
     ],
     "destination": [
      "obj-107",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-107",
      0
     ],
     "destination": [
      "obj-115",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-110",
      0
     ],
     "destination": [
      "obj-111",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-111",
      2
     ],
     "destination": [
      "obj-112",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-111",
      1
     ],
     "destination": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-111",
      0
     ],
     "destination": [
      "obj-117",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-112",
      0
     ],
     "destination": [
      "obj-116",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-113",
      0
     ],
     "destination": [
      "obj-114",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-114",
      0
     ],
     "destination": [
      "obj-115",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-114",
      0
     ],
     "destination": [
      "obj-115",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-115",
      0
     ],
     "destination": [
      "obj-116",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-117",
      0
     ],
     "destination": [
      "obj-118",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-118",
      1
     ],
     "destination": [
      "obj-119",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-118",
      0
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-119",
      0
     ],
     "destination": [
      "obj-116",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-120",
      0
     ],
     "destination": [
      "obj-109",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-111",
      0
     ],
     "destination": [
      "obj-122",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-122",
      0
     ],
     "destination": [
      "obj-123",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-123",
      0
     ],
     "destination": [
      "obj-115",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-3",
      0
     ],
     "destination": [
      "obj-125",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-125",
      0
     ],
     "destination": [
      "obj-133",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      0
     ],
     "destination": [
      "obj-129",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-129",
      2
     ],
     "destination": [
      "obj-130",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-129",
      1
     ],
     "destination": [
      "obj-131",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-129",
      0
     ],
     "destination": [
      "obj-135",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-130",
      0
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-131",
      0
     ],
     "destination": [
      "obj-132",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-132",
      0
     ],
     "destination": [
      "obj-133",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-132",
      0
     ],
     "destination": [
      "obj-133",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-133",
      0
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-135",
      0
     ],
     "destination": [
      "obj-136",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-136",
      1
     ],
     "destination": [
      "obj-137",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-136",
      0
     ],
     "destination": [
      "obj-138",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-137",
      0
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-138",
      0
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-129",
      0
     ],
     "destination": [
      "obj-140",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-140",
      0
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-141",
      0
     ],
     "destination": [
      "obj-133",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-3",
      0
     ],
     "destination": [
      "obj-143",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-143",
      0
     ],
     "destination": [
      "obj-151",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-146",
      0
     ],
     "destination": [
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-147",
      2
     ],
     "destination": [
      "obj-148",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-147",
      1
     ],
     "destination": [
      "obj-149",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-147",
      0
     ],
     "destination": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-148",
      0
     ],
     "destination": [
      "obj-152",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-149",
      0
     ],
     "destination": [
      "obj-150",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-150",
      0
     ],
     "destination": [
      "obj-151",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-150",
      0
     ],
     "destination": [
      "obj-151",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-151",
      0
     ],
     "destination": [
      "obj-152",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-153",
      0
     ],
     "destination": [
      "obj-154",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-154",
      1
     ],
     "destination": [
      "obj-155",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-154",
      0
     ],
     "destination": [
      "obj-156",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-155",
      0
     ],
     "destination": [
      "obj-152",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-156",
      0
     ],
     "destination": [
      "obj-145",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-147",
      0
     ],
     "destination": [
      "obj-158",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-158",
      0
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-159",
      0
     ],
     "destination": [
      "obj-151",
      0
     ]
    }
   }
  ],
  "dependency_cache": [],
  "autosave": 0
 }
}