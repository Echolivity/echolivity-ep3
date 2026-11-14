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
   60,
   80,
   1500,
   820
  ],
  "openinpresentation": 1,
  "default_fontsize": 10.0,
  "default_fontface": 0,
  "default_fontname": "Arial",
  "openrect": [
   0.0,
   0.0,
   1410.0,
   169.0
  ],
  "gridonopen": 1,
  "gridsize": [
   8.0,
   8.0
  ],
  "devicewidth": 1410.0,
  "description": "Echolivity EP-3 \u2014 tape echo after the Maestro Echoplex EP-3, v0.1.0-dev",
  "parameters": {
   "obj-32": [
    "Input Volume",
    "Input",
    0
   ],
   "obj-36": [
    "Delay Mode",
    "Mode",
    0
   ],
   "obj-38": [
    "Tap",
    "Tap",
    0
   ],
   "obj-42": [
    "Echo Delay",
    "Delay",
    0
   ],
   "obj-52": [
    "Sync Division",
    "Div",
    0
   ],
   "obj-54": [
    "Sync Type",
    "Type",
    0
   ],
   "obj-56": [
    "Sync Multiplier",
    "Mult",
    0
   ],
   "obj-59": [
    "Tap Division",
    "TapDiv",
    0
   ],
   "obj-61": [
    "Tap Type",
    "TapType",
    0
   ],
   "obj-63": [
    "Timing Offset",
    "Offset",
    0
   ],
   "obj-65": [
    "Slider Response",
    "Response",
    0
   ],
   "obj-86": [
    "HOLD Momentary",
    "HOLD",
    0
   ],
   "obj-87": [
    "HOLD Latch",
    "HOLDL",
    0
   ],
   "obj-97": [
    "DRIVE Momentary",
    "DRIVE",
    0
   ],
   "obj-98": [
    "DRIVE Latch",
    "DRIVEL",
    0
   ],
   "obj-108": [
    "STOP Momentary",
    "STOP",
    0
   ],
   "obj-109": [
    "STOP Latch",
    "STOPL",
    0
   ],
   "obj-122": [
    "Drive Amount",
    "DriveAmt",
    0
   ],
   "obj-124": [
    "Stop Time",
    "StopT",
    0
   ],
   "obj-126": [
    "Start Time",
    "StartT",
    0
   ],
   "obj-128": [
    "Echo Sustain",
    "Sustain",
    0
   ],
   "obj-130": [
    "Echo Volume",
    "EchoVol",
    0
   ],
   "obj-132": [
    "Record Level",
    "RecLvl",
    0
   ],
   "obj-135": [
    "Echo / Sound on Sound",
    "Mode SOS",
    0
   ],
   "obj-138": [
    "Echo On",
    "EchoOn",
    0
   ],
   "obj-140": [
    "Playback",
    "Playback",
    0
   ],
   "obj-143": [
    "SOS Loss",
    "SOSLoss",
    0
   ],
   "obj-146": [
    "Loop Length",
    "Loop",
    0
   ],
   "obj-148": [
    "Tape Saturation",
    "Sat",
    0
   ],
   "obj-150": [
    "Drift",
    "Drift",
    0
   ],
   "obj-152": [
    "Flutter",
    "Flutter",
    0
   ],
   "obj-154": [
    "Tape Noise",
    "Noise",
    0
   ],
   "obj-156": [
    "Bias Leak",
    "BiasLeak",
    0
   ],
   "obj-159": [
    "Bias Frequency",
    "BiasKHz",
    0
   ],
   "obj-163": [
    "Repeat HP",
    "Rep HP",
    0
   ],
   "obj-165": [
    "Repeat LP",
    "Rep LP",
    0
   ],
   "obj-167": [
    "Repeat Resonance",
    "Res",
    0
   ],
   "obj-170": [
    "Echo HP",
    "Echo HP",
    0
   ],
   "obj-172": [
    "Echo LP",
    "Echo LP",
    0
   ],
   "obj-174": [
    "Dry Trim",
    "DryTrim",
    0
   ],
   "obj-176": [
    "Echo Trim",
    "EchoTrim",
    0
   ],
   "obj-178": [
    "Output Level",
    "Output",
    0
   ],
   "obj-180": [
    "Output Ceiling",
    "Ceiling",
    0
   ],
   "obj-185": [
    "Output Protection",
    "Protect",
    0
   ],
   "obj-197": [
    "Pre-emphasis Cap",
    "PreCap",
    0
   ],
   "obj-199": [
    "Drive Feedback Path",
    "DriveFB",
    0
   ],
   "obj-202": [
    "Playback De-emphasis",
    "PB EQ",
    0
   ],
   "obj-205": [
    "Cable Load",
    "Cable",
    0
   ],
   "obj-207": [
    "Head Speed Limit",
    "HeadSpd",
    0
   ],
   "obj-209": [
    "Mode Transition",
    "Trans",
    0
   ],
   "obj-211": [
    "Hold Feedback",
    "HoldFB",
    0
   ],
   "obj-214": [
    "Slider Min",
    "SlideMin",
    0
   ],
   "obj-216": [
    "Slider Max",
    "SlideMax",
    0
   ],
   "obj-219": [
    "UI Theme",
    "Theme",
    0
   ],
   "inherited_shortname": 1
  },
  "boxes": [
   {
    "box": {
     "id": "obj-1",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      20,
      20,
      80,
      22
     ],
     "outlettype": [
      "signal",
      "signal"
     ],
     "text": "plugin~ 2"
    }
   },
   {
    "box": {
     "id": "obj-2",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      20,
      420,
      460,
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
         "code": "// =====================================================================\n// ECHOLIVITY \u2014 EP-3 (Maestro Echoplex EP-3 model) \u00b7 tape engine v0.1.0-dev\n// gen~ codebox. Status of every value: docs/EP3_MODELING_NOTES.md\n//\n// Signal flow (EP-3 manual, Maestro owner/service manual [S1]):\n//   input -> Q5 FET stage (TIS58, 22k drain, 3.3k source, 0.022 uF source\n//   bypass = pre-emphasis) -> dry out (high output Z into cable C)\n//                           -> record level -> record amp -> RECORD/ERASE HEAD\n//   (moving, on the slider) -> tape (8 ips, ~75 ft loop) -> fixed ECHO head\n//   -> head amp + de-emphasis -> Echo Sustain (feedback) / Echo Volume (blend\n//   pot in the passive output mixer, wiper grounded) -> output (high Z, into the cable)\n//   SOS: SOS head (upstream of the record head) monitors the loop; erase off,\n//   new material is added to the old layer (-1 dB per pass, manual alignment).\n//\n// The record head moves, so a slider move changes how sound is WRITTEN on the\n// tape (pitch change heard one delay later). The write is band-limited (pre-\n// write low-pass that follows the head's speed over the tape, after\n// Arnardottir/Abel/Smith 2008) and fills every tape cell the head crosses.\n//\n// Tape buffer: fixed 48 000 cells per second of tape at nominal speed, so the\n// 112.5 s loop costs the same memory at any sample rate.\n// Level convention: 100 mV == -18 dBFS RMS (same as the H&H device).\n// Mono like the original: L+R are summed at the input; out1 == out2.\n//\n// out1/out2: audio   out3: delay (ms)   out4: tap BPM\n// out5: record-head write speed over tape (1 = normal)   out6: tape speed\n// out7: output-protection gain   out8: output over flag\n// =====================================================================\n\n// ---------- stateful helpers (each call site gets its own state) ------\nsvf(x, fc, q) {\n\tHistory s1(0);\n\tHistory s2(0);\n\tHistory key_fc(-1);\n\tHistory key_q(-1);\n\tHistory key_sr(-1);\n\tHistory c_k(0);\n\tHistory c_a1(0);\n\tHistory c_a2(0);\n\tHistory c_a3(0);\n\tif (fc != key_fc || q != key_q || samplerate != key_sr) {\n\t\tfcc = clamp(fc, 5, samplerate * 0.49);\n\t\tg = tan(pi * fcc / samplerate);\n\t\tc_k = 1 / q;\n\t\tc_a1 = 1 / (1 + g * (g + c_k));\n\t\tc_a2 = g * c_a1;\n\t\tc_a3 = g * c_a2;\n\t\tkey_fc = fc;\n\t\tkey_q = q;\n\t\tkey_sr = samplerate;\n\t}\n\tv3 = x - s2;\n\tv1 = c_a1 * s1 + c_a2 * v3;\n\tv2 = s2 + c_a2 * s1 + c_a3 * v3;\n\ts1 = fixdenorm(2 * v1 - s1);\n\ts2 = fixdenorm(2 * v2 - s2);\n\treturn v2, v1, x - c_k * v1 - v2;\n}\n\nlp1(x, fc) {\n\tHistory z(0);\n\tHistory key_fc(-1);\n\tHistory key_sr(-1);\n\tHistory c_a(0);\n\tif (fc != key_fc || samplerate != key_sr) {\n\t\tc_a = 1 - exp(-twopi * min(fc, samplerate * 0.49) / samplerate);\n\t\tkey_fc = fc;\n\t\tkey_sr = samplerate;\n\t}\n\tz = fixdenorm(z + c_a * (x - z));\n\treturn z;\n}\n\nhp1(x, fc) {\n\treturn x - lp1(x, fc);\n}\n\ndcblock(x) {\n\tHistory x1(0);\n\tHistory y1(0);\n\tR = 1 - twopi * 10 / samplerate;\n\ty = fixdenorm(x - x1 + R * y1);\n\tx1 = x;\n\ty1 = y;\n\treturn y;\n}\n\nhermite(xm1, x0, x1, x2, f) {\n\tc1 = 0.5 * (x1 - xm1);\n\tc2 = xm1 - 2.5 * x0 + 2 * x1 - 0.5 * x2;\n\tc3 = 0.5 * (x2 - xm1) + 1.5 * (x0 - x1);\n\treturn ((c3 * f + c2) * f + c1) * f + x0;\n}\n\nsoftclip(x, k, c) {\n\tax = abs(x);\n\ty = x;\n\tif (ax > k) {\n\t\tsg = (x >= 0) ? 1 : -1;\n\t\ty = sg * (k + (c - k) * tanh((ax - k) / (c - k)));\n\t}\n\treturn y;\n}\n\ntapesat(x, b) {\n\tHistory key_b(-99999);\n\tHistory c_tb(0);\n\tif (b != key_b) {\n\t\tc_tb = tanh(b);\n\t\tkey_b = b;\n\t}\n\ttb = c_tb;\n\treturn (tanh(x + b) - tb) / (1 - tb * tb);\n}\n\npsmooth(t, a) {\n\tHistory s(0);\n\tHistory init(0);\n\tif (init < 0.5) {\n\t\ts = t;\n\t\tinit = 1;\n\t}\n\ts = s + a * (t - s);\n\tif (abs(t - s) <= 0.000000001 * max(1, abs(t))) {\n\t\ts = t;\n\t}\n\treturn s;\n}\n\nfsmooth(f, a) {\n\tHistory ls(0);\n\tHistory init(0);\n\tlt = log(f);\n\tif (init < 0.5) {\n\t\tls = lt;\n\t\tinit = 1;\n\t}\n\tls = ls + a * (lt - ls);\n\tif (abs(lt - ls) <= 0.000000001) {\n\t\tls = lt;\n\t}\n\treturn (ls == lt) ? f : exp(ls);\n}\n\n// JFET drain current, square law: Id = Idss (1 - Vgs/Vp)^2 for Vp < Vgs, else 0.\n// Vgs above +0.4 V is held there (gate-source diode conducts).\n// Source node: Rs in parallel with Cs (Cs = 0 when the bypass cap is out).\n// Backward-Euler step for the source node, solved in closed form:\n//   (Cs/dt + 1/Rs) Vs - (Cs/dt) Vs0 = Id(vg - Vs)\n// Returns (Id, Vs).\nfet_step(vg, vs0, cdt, rs, idss, vp) {\n\ta = cdt + 1 / rs;\n\tb = cdt * vs0;\n\tvgc = min(vg, 0.4 + vs0);\n\t// w = 1 - Vgs/Vp; Vs = Vp w - Vp + vg  ->  idss w^2 - a Vp w + (a Vp - a vg + b) = 0\n\tqa = idss;\n\tqb = -a * vp;\n\tqc = a * vp - a * vgc + b;\n\tdisc = qb * qb - 4 * qa * qc;\n\tidq = 0;\n\tvsq = b / a;                                  // cut-off: no drain current\n\tif (disc >= 0) {\n\t\tw = (-qb + sqrt(disc)) / (2 * qa);\n\t\tif (w > 0) {\n\t\t\tidq = idss * w * w;\n\t\t\tvsq = vp * w - vp + vgc;\n\t\t}\n\t}\n\treturn idq, vsq;\n}\n\n// Passive output mixer (EP-3; values from replica/forum traces [S11][S13]-[S15], APPROX until a\n// clean schematic): drain -0.1uF- A; A -470k- gnd; A -220k- B; B = Echo Volume lug 1;\n// B -100k- OUT. Echo amp -220k- E; E -100k- gnd; E = pot lug 3; E -100k- OUT.\n// The 500k pot's WIPER IS GROUNDED: k = 0 shorts the echo lug, k = 1 shorts the dry lug,\n// so Echo Volume is a blend and the dry level peaks near k = 0.2 (non-monotonic).\n// OUT drives the amp (1M) and the cable capacitance. Returns dry gain, echo gain and the\n// Thevenin resistance at OUT (which, with the cable C, sets the treble roll-off).\nmixer(k) {\n\trp3 = clamp(k, 0, 1) * 500000;\n\trp1 = 500000 - rp3;\n\tra = 22000 * 470000 / 492000;\n\tvbf = (470000 / 492000) * rp1 / (ra + 220000 + rp1);\n\trdb = (ra + 220000) * rp1 / (ra + 220000 + rp1) + 100000;\n\trsh = rp3 * 100000 / (rp3 + 100000);\n\tvef = rsh / (220000 + rsh);\n\treb = 220000 * rsh / (220000 + rsh) + 100000;\n\tgsum = 1 / rdb + 1 / reb + 0.000001;\n\treturn vbf / rdb / gsum, vef / reb / gsum, 1 / gsum;\n}\n\n// ---------- tape ------------------------------------------------------\n// 112.5 s * 48 000 cells/s (+ margin)\nData tape(5400064, 1);\n\n// ---------- parameters ------------------------------------------------\nParam in_gain_db(0, min=-36, max=12);\nParam dry(1, min=0, max=1);                  // Echolivity trim on the dry branch (1 = original)\nParam echo(0.5, min=0, max=1);               // ECHO VOLUME: the 500k blend pot (wiper grounded)\nParam echo_trim_db(0, min=-24, max=12);      // Echolivity trim on the echo branch\nParam out_db(0, min=-36, max=12);\nParam mode(2, min=0, max=2);\nParam bpm(120, min=20, max=999);\nParam sync_div(2, min=0, max=5);\nParam sync_type(0, min=0, max=2);\nParam sync_mult(1, min=1, max=8);\nParam offset_ms(0, min=-100, max=100);\nParam tap(0, min=0, max=1000000);\nParam tap_div(3, min=0, max=5);\nParam tap_type(0, min=0, max=2);\nParam bar_beats(4, min=1, max=16);\n// ECHO DELAY slider: delay is linear in head position at constant tape speed.\n// 60\u2013600 ms default = DAFX/CCRMA measured range [S3]; 80\u2013800 per [S4].\nParam slider_pos(0.5, min=0, max=1);\nParam slider_min_ms(60, min=2, max=2000);\nParam slider_max_ms(600, min=2, max=4000);\nParam glide_ms(40, min=1, max=2000);\nParam transition_ms(250, min=1, max=4000);\nParam head_slew(4, min=0.05, max=12);        // max head speed, in delay-seconds per second (APPROX)\n// EP-3 front panel / internal\nParam sustain(0.4, min=0, max=1);            // ECHO SUSTAIN (500k lin [S12]); >~0.8 runs away\nParam rec_db(0, min=-12, max=12);            // RECORD LEVEL trimmer (internal on the original)\nParam sos(0, min=0, max=1);                  // ECHO / SOUND ON SOUND switch\nParam sos_db(-1, min=-6, max=0);             // SOS loss per pass; manual alignment: \"approximately 1dB\"\nParam echo_on(1, min=0, max=1);              // footswitch: echo on/off\nParam playback(0, min=0, max=1);             // footswitch: playback (record + erase off)\nParam pre_bypass(1, min=0, max=1);           // Q5 source bypass 0.022 uF (manual addendum) in/out\nParam cable_pf(470, min=0, max=2000);        // cable + amp input capacitance; 470 pF fits ClinchFX's descriptions (test E07)\nParam pb_eq(0, min=0, max=1);                // de-emphasis: 0 = 18k/0.003uF (forum), 1 = 18k/0.033uF (manual scan)\nParam bias_khz(100, min=40, max=120);        // \"approximate frequency of 100 KC\" [S1]\nParam bias_leak(0.3, min=0, max=1);          // bias heard on very fast slider moves (APPROX level)\nParam loop_s(112.5, min=1, max=112.5);       // ~75 ft at 8 ips [in2guitar]; shorter = modern option\n// tape character (Echolivity)\nParam sat(0.5, min=0, max=1);\nParam noise_db(-60, min=-120, max=-30);\nParam wow(0.1, min=0, max=1);                // slow drift\nParam flutter(0.25, min=0, max=1);           // 0.5 = 0.3 % (EP-3 spec limit); capstan 26 Hz, pinch 2.5/5 Hz\n// performance (Echolivity)\nParam hold(0, min=0, max=1);\nParam hold_fb(1, min=0.9, max=1.05);\nParam drive(0, min=0, max=1);\nParam drive_db(12, min=0, max=24);\nParam drive_fb(0, min=0, max=1);\nParam tape_stop(0, min=0, max=1);\nParam stop_time(1, min=0.05, max=8);\nParam start_time(0.4, min=0.05, max=8);\nParam fb_hp_hz(10, min=10, max=2000);\nParam fb_lp_hz(20000, min=500, max=20000);\nParam fb_res(0, min=0, max=1);\nParam echo_hp_hz(10, min=10, max=2000);\nParam echo_lp_hz(20000, min=500, max=20000);\nParam protect(1, min=0, max=1);\nParam ceiling_db(-0.3, min=-12, max=0);\n\n// ---------- state -----------------------------------------------------\nHistory p(0);\nHistory d_head(-1);\nHistory Ts1(-1);\nHistory Ts2(-1);\nHistory w_prev(0);\nHistory rec_prev(0);\nHistory first(1);\nHistory s_stop(1);\nHistory hold_s(0);\nHistory drive_s(0);\nHistory sos_s(0);\nHistory echo_on_s(1);\nHistory echo_on_s2(1);\nHistory pb_s(0);\nHistory env(0);\nHistory prev_mode(-1);\nHistory trans_left(0);\nHistory nsamp(0);\nHistory tap_prev(0);\nHistory last_tap(-1);\nHistory t_count(0);\nHistory ti0(0);\nHistory ti1(0);\nHistory ti2(0);\nHistory ti3(0);\nHistory tap_bpm(120);\nHistory ph_cap(0);\nHistory ph_p1(0);\nHistory ph_p2(0);\nHistory drift(0);\nHistory fl_rnd(0);\nHistory last_sr(0);\nHistory vs_state(-1);\nHistory pg_hold(1);\nHistory pg_s(1);\nHistory ph_cnt(0);\nHistory u_out(1);\n// cached coefficients\nHistory ck_sr(-1);\nHistory ck_ps(0);\nHistory ck_a10(0);\nHistory ck_drift(0);\nHistory ck_flr(0);\nHistory ck_nnorm(1);\nHistory ck_up(0);\nHistory ck_dn(0);\nHistory ck_prel(0);\nHistory ck_patt(0);\nHistory ck_tau(-1);\nHistory ck_as(0);\nHistory ck_fkey(-99999);\nHistory ck_idq(0);\nHistory ck_vsq(0);\nHistory ck_dkey(-99999);\nHistory ck_dg(1);\nHistory ck_sat(-99999);\nHistory ck_gt(1);\nHistory ck_ing(-99999);\nHistory ck_ig(1);\nHistory ck_rkey(-99999);\nHistory ck_rg(1);\nHistory ck_skey(-99999);\nHistory ck_sg(0.891);\nHistory ck_nkey(-99999);\nHistory ck_ng(0);\nHistory ck_okey(-99999);\nHistory ck_kkey(-99999);\nHistory ck_gd(0.18);\nHistory ck_ge(0.13);\nHistory ck_rth(83000);\nHistory ck_en(1);\nHistory ck_etkey(-99999);\nHistory ck_et(1);\nHistory ck_og(1);\nHistory ck_ckey(-99999);\nHistory ck_cl(1);\n\nCR = 48000;                                  // tape cells per second at nominal speed\nNB = 5400064;\nVPF = 0.794;                                 // volts per full scale (100 mV = -18 dBFS RMS)\nRD = 22000;                                  // Q5 drain resistor [S1][S8]\nRS = 3300;                                   // Q5 source resistor [S1]\nCS = 0.000000022;                            // Q5 source bypass [S1 addendum]\nIDSS = 0.0034;                               // APPROX: fitted so Vs = 1.8 V at 21.2 V supply\nVP = -3.0;                                   //   (measured 1.72\u20131.88 V / 21.0\u201321.3 V on two units [S8])\nVDD = 21.2;\nFBIAS_MIN_SP = 0.45;                         // spatial Nyquist guard (cycles per tape cell)\n\nsr = samplerate;\nt = nsamp;\nnsamp = nsamp + 1;\nx = 0.5 * (fixnan(in1) + fixnan(in2));      // mono, like the original\n\nif (sr != last_sr) {\n\tif (last_sr > 0) {\n\t\tTs1 = -1;\n\t\tTs2 = -1;\n\t\td_head = -1;\n\t\tlast_tap = -1;\n\t\tt_count = 0;\n\t}\n\tlast_sr = sr;\n}\n\n// ================= TAP TEMPO (sample counter; as the H&H device) =======\nif (tap > tap_prev + 0.5) {\n\tif (last_tap >= 0) {\n\t\tiv = t - last_tap;\n\t\tif (iv < 0.15 * sr) {\n\t\t\tiv = -1;\n\t\t} else if (iv > 2 * sr) {\n\t\t\tt_count = 0;\n\t\t\tlast_tap = t;\n\t\t} else {\n\t\t\tif (t_count > 0) {\n\t\t\t\ttavg0 = (ti0 + ti1 + ti2 + ti3) / min(t_count, 4);\n\t\t\t\tif (abs(iv - tavg0) > 0.4 * tavg0) {\n\t\t\t\t\tt_count = 0;\n\t\t\t\t}\n\t\t\t}\n\t\t\tti3 = ti2;\n\t\t\tti2 = ti1;\n\t\t\tti1 = ti0;\n\t\t\tti0 = iv;\n\t\t\tif (t_count == 0) {\n\t\t\t\tti1 = 0;\n\t\t\t\tti2 = 0;\n\t\t\t\tti3 = 0;\n\t\t\t}\n\t\t\tt_count = min(t_count + 1, 4);\n\t\t\ttavg = (ti0 + ti1 + ti2 + ti3) / t_count;\n\t\t\ttap_bpm = 60 * sr / tavg;\n\t\t\tlast_tap = t;\n\t\t}\n\t} else {\n\t\tlast_tap = t;\n\t}\n}\ntap_prev = tap;\n\n// ================= TARGET DELAY TIME ==================================\ns_lo = min(slider_min_ms, slider_max_ms);\ns_hi = max(slider_min_ms, slider_max_ms);\nT = (s_lo + slider_pos * (s_hi - s_lo)) * 0.001;\nif (mode < 1.5) {\n\tuse_bpm = max(bpm, 20);\n\tdv_idx = floor(sync_div + 0.5);\n\ttyp = floor(sync_type + 0.5);\n\tif (mode >= 0.5) {\n\t\tuse_bpm = tap_bpm;\n\t\tdv_idx = floor(tap_div + 0.5);\n\t\ttyp = floor(tap_type + 0.5);\n\t}\n\tbeats = 0.125;\n\tif (dv_idx == 1) { beats = 0.25; }\n\telse if (dv_idx == 2) { beats = 0.5; }\n\telse if (dv_idx == 3) { beats = 1; }\n\telse if (dv_idx == 4) { beats = 2; }\n\telse if (dv_idx >= 5) { beats = bar_beats; }\n\tif (typ == 1) { beats = beats * 1.5; }\n\telse if (typ == 2) { beats = beats * 2 / 3; }\n\tT = 60 / use_bpm * beats * max(sync_mult, 1) + offset_ms * 0.001;\n}\nT = clamp(T, 0.002, 4);\n\n// sample-rate-dependent constants\nif (sr != ck_sr) {\n\tck_ps = 1 - exp(-1 / (0.010 * sr));\n\tck_a10 = ck_ps;\n\tck_drift = 1 - exp(-twopi * 0.5 / sr);\n\tck_flr = 1 - exp(-twopi * 20 / sr);\n\ta_n0 = 1 - exp(-twopi * min(10000, 0.49 * sr) / sr);\n\tck_nnorm = sqrt((1 / 3) * a_n0 / (2 - a_n0));\n\tck_up = 1 - exp(-1 / (0.001 * sr));\n\tck_dn = 1 - exp(-1 / (0.200 * sr));\n\tck_prel = 1 - exp(-1 / (0.150 * sr));\n\tck_patt = 1 - exp(-1 / (0.0005 * sr));\n\tck_sr = sr;\n\tck_tau = -1;\n\tck_fkey = -99999;\n\tck_nkey = -99999;\n}\n\n// smoothed continuous parameters\nsm_in_gain_db = psmooth(in_gain_db, ck_ps);\nsm_dry = psmooth(dry, ck_ps);\nsm_echo = psmooth(echo, ck_ps);\nsm_echo_trim_db = psmooth(echo_trim_db, ck_ps);\nsm_out_db = psmooth(out_db, ck_ps);\nsm_sustain = psmooth(sustain, ck_ps);\nsm_rec_db = psmooth(rec_db, ck_ps);\nsm_sos_db = psmooth(sos_db, ck_ps);\nsm_bias_leak = psmooth(bias_leak, ck_ps);\nsm_sat = psmooth(sat, ck_ps);\nsm_noise_db = psmooth(noise_db, ck_ps);\nsm_wow = psmooth(wow, ck_ps);\nsm_flutter = psmooth(flutter, ck_ps);\nsm_hold_fb = psmooth(hold_fb, ck_ps);\nsm_drive_db = psmooth(drive_db, ck_ps);\nsm_fb_res = psmooth(fb_res, ck_ps);\nsm_cable_pf = psmooth(cable_pf, ck_ps);\nsm_bias_khz = fsmooth(bias_khz, ck_ps);\nsm_fb_hp_hz = fsmooth(fb_hp_hz, ck_ps);\nsm_fb_lp_hz = fsmooth(fb_lp_hz, ck_ps);\nsm_echo_hp_hz = fsmooth(echo_hp_hz, ck_ps);\nsm_echo_lp_hz = fsmooth(echo_lp_hz, ck_ps);\n// ceiling_db is not smoothed (see H&H test P05)\n\nif (mode != prev_mode) {\n\tif (prev_mode >= 0) {\n\t\ttrans_left = transition_ms * 0.001 * sr * 3;\n\t}\n\tprev_mode = mode;\n}\ntau_ms = glide_ms;\nif (trans_left > 0) {\n\ttau_ms = max(transition_ms, glide_ms);\n\ttrans_left = trans_left - 1;\n}\nif (tau_ms != ck_tau) {\n\tck_as = 1 - exp(-1 / (max(tau_ms, 0.5) * 0.001 * sr));\n\tck_tau = tau_ms;\n}\na_s = ck_as;\nTc = T * CR;                                 // target head distance in tape cells\nif (Ts1 < 0) {\n\tTs1 = Tc;\n\tTs2 = Tc;\n}\nTs1 = Ts1 + a_s * (Tc - Ts1);\nTs2 = Ts2 + a_s * (Ts1 - Ts2);\n\n// ================= TRANSPORT ==========================================\nif (tape_stop > 0.5) {\n\ts_stop = max(0, s_stop - 1 / (max(stop_time, 0.02) * sr));\n} else {\n\ts_stop = min(1, s_stop + 1 / (max(start_time, 0.02) * sr));\n}\nL = floor(clamp(loop_s, 1, 112.5) * CR);\n\n// flutter: capstan 26 Hz, pinch wheel 2.5 / 5.0 Hz (measured on an Echoplex [S5]),\n// plus a little broadband flutter and slow drift. flutter = 0.5 -> ~0.3 % peak.\nph_cap = ph_cap + 26 / sr;\nph_cap = ph_cap - floor(ph_cap);\nph_p1 = ph_p1 + 2.5 / sr;\nph_p1 = ph_p1 - floor(ph_p1);\nph_p2 = ph_p2 + 5.0 / sr;\nph_p2 = ph_p2 - floor(ph_p2);\ndrift = drift + ck_drift * (noise() * 3 - drift);\nfl_rnd = fl_rnd + ck_flr * (noise() * 2 - fl_rnd);\nwf = sm_flutter * 0.006 * (0.45 * sin(twopi * ph_cap) + 0.3 * sin(twopi * ph_p1) + 0.15 * sin(twopi * ph_p2) + 0.1 * fl_rnd)\n   + sm_wow * 0.005 * drift;\n\nv_eff = clamp(s_stop * (1 + wf), 0, 2);\nvc = v_eff * CR / sr;                        // tape cells per sample\n\n// ---- record head position (moving) with a head-speed limit\nif (d_head < 0) {\n\td_head = Ts2;\n}\nhs = max(head_slew, 0.05) * CR / sr;         // cells per sample\nd_head = d_head + clamp(Ts2 - d_head, -hs, hs);\nd = clamp(d_head, 16, L - 64);\n// SOS head: fixed just upstream of the slider's far end (APPROX gap 62.5 ms = 0.5 in at 8 ips)\nd_sos = clamp((s_hi + 62.5) * 0.001 * CR, d + 1, L - 32);\n\np_new = wrap(p + vc, 0, L);\nw_new = p_new + d;                           // write position (unwrapped relative to p_new)\nw_old = w_prev;\nif (first > 0.5) {\n\tw_old = w_new - vc;\n\tfirst = 0;\n}\n// keep w_old in the same unwrapped frame as w_new\nif (w_old - w_new > 0.5 * L) {\n\tw_old = w_old - L;\n} else if (w_new - w_old > 0.5 * L) {\n\tw_old = w_old + L;\n}\nu_cps = w_new - w_old;                       // head speed over tape, cells per sample\nu_out = u_cps / max(CR / sr, 0.000001);      // 1 = normal recording speed\n\n// ================= gates & per-sample coefficients ====================\nhold_s = hold_s + ck_a10 * (hold - hold_s);\ndrive_s = drive_s + ck_a10 * (drive - drive_s);\nsos_s = sos_s + ck_a10 * (sos - sos_s);\necho_on_s = echo_on_s + ck_a10 * (echo_on - echo_on_s);\necho_on_s2 = echo_on_s2 + ck_a10 * (echo_on_s - echo_on_s2);   // 2-stage: no corner at the switch\npb_s = pb_s + ck_a10 * (playback - pb_s);\ndkey = drive_s * sm_drive_db;\nif (dkey != ck_dkey) {\n\tck_dg = pow(10, dkey / 20);\n\tck_dkey = dkey;\n}\ndrive_gain = ck_dg;\nif (sm_sat != ck_sat) {\n\tck_gt = 0.6 * pow(4, 2 * (sm_sat - 0.5));  // 0.5: ~3 % THD at nominal level (calibration test E05)\n\tck_sat = sm_sat;\n}\ng_t = ck_gt;\nif (sm_in_gain_db != ck_ing) {\n\tck_ig = pow(10, sm_in_gain_db / 20);\n\tck_ing = sm_in_gain_db;\n}\nif (sm_rec_db != ck_rkey) {\n\tck_rg = pow(10, sm_rec_db / 20);\n\tck_rkey = sm_rec_db;\n}\nif (sm_sos_db != ck_skey) {\n\tck_sg = pow(10, sm_sos_db / 20);\n\tck_skey = sm_sos_db;\n}\nif (sm_noise_db != ck_nkey) {\n\tck_ng = (sm_noise_db > -119) ? pow(10, sm_noise_db / 20) / ck_nnorm : 0;\n\tck_nkey = sm_noise_db;\n}\nfb_amt = (sm_sustain * 1.25) * (1 - hold_s) + sm_hold_fb * hold_s;\nfb_amt = fb_amt * (1 - sos_s);               // ECHO/SUSTAIN not operative in SOS [S1]\nq_fb = 0.707 + sm_fb_res * 6;\ndfb_g = (drive_fb > 0.5) ? drive_gain : 1;\n\n// ================= Q5 FET INPUT STAGE (always in circuit) =============\nfkey = pre_bypass * 7 + sr;\nif (fkey != ck_fkey) {\n\t// quiescent point (no signal): source cap fully charged, so cdt = 0\n\tqi, qv = fet_step(0, 0, 0, RS, IDSS, VP);\n\tck_idq = qi;\n\tck_vsq = qv;\n\tck_fkey = fkey;\n\tif (vs_state < 0) {\n\t\tvs_state = qv;\n\t}\n}\ncdt = (pre_bypass > 0.5) ? CS * sr : 0;\nvg = lp1(x, 15915) * VPF * ck_ig;            // input RF filter: 100k series, 100 pF to ground [S14]\nid_n, vs_n = fet_step(vg, vs_state, cdt, RS, IDSS, VP);\nvs_state = fixdenorm(vs_n);\n// drain cannot fall below the source (+0.3 V): limits large positive swings\nid_c = min(id_n, (VDD - vs_n - 0.3) / RD);\nvac = (id_c - ck_idq) * RD;                  // drain AC (V); sign flipped so the device is non-inverting\npre = vac / VPF;                             // back to full-scale units (EP-3 gain kept)\n// output mixer coefficients (recomputed only when Echo Volume moves)\nif (sm_echo != ck_kkey) {\n\tgd, ge, rt = mixer(sm_echo);\n\tgd5, ge5, rt5 = mixer(0.5);\n\tck_gd = gd;\n\tck_ge = ge;\n\tck_rth = rt;\n\tck_en = gd5 / ge5;                       // echo source level: first repeat ~ dry level at k = 0.5 (APPROX)\n\tck_kkey = sm_echo;\n}\ndry_br = hp1(pre, 7) * ck_gd * sm_dry;       // 0.1 uF coupling into ~260k: ~7 Hz\n\n// ================= ECHO HEAD READ (fixed) =============================\nri = floor(p_new);\nrf = p_new - ri;\ni0 = wrap(ri, 0, L);\nim1 = wrap(i0 - 1, 0, L);\nip1 = wrap(i0 + 1, 0, L);\nip2 = wrap(i0 + 2, 0, L);\nm0 = peek(tape, im1, 0);\nc0 = peek(tape, i0, 0);\nn0 = peek(tape, ip1, 0);\nq0 = peek(tape, ip2, 0);\ny_echo = hermite(m0, c0, n0, q0, rf);\n// SOS head (monitors the loop before it reaches the record head)\nrs_pos = p_new + d_sos;\nrsi = floor(rs_pos);\nrsf = rs_pos - rsi;\nj0 = wrap(rsi, 0, L);\njm1 = wrap(j0 - 1, 0, L);\njp1 = wrap(j0 + 1, 0, L);\njp2 = wrap(j0 + 2, 0, L);\nsm0 = peek(tape, jm1, 0);\nsc0 = peek(tape, j0, 0);\nsn0 = peek(tape, jp1, 0);\nsq0 = peek(tape, jp2, 0);\ny_sos = hermite(sm0, sc0, sn0, sq0, rsf);\n\n// ================= PLAYBACK CHAIN =====================================\ngp = min(1, v_eff / 0.15);                   // head output falls away as the tape stops\nfc_tape = clamp(5188 * v_eff, 50, 0.45 * sr); // tape HF loss: H&H fit (7782 Hz @ 12 ips) x 8/12  APPROX\nfc_de = (pb_eq > 0.5) ? 268 : 2947;          // 18k with 0.033 uF (manual scan) / 0.003 uF (forum)\nyraw = y_echo * (1 - sos_s) + y_sos * sos_s; // SOS: you hear the SOS head [S1]\ntl, tb_, th = svf(yraw * gp, fc_tape, 0.707);\nypb = lp1(tl, fc_de);\n// de-emphasis gain normalised at 1 kHz so both readings give the same mid level\nypb = ypb * sqrt(1 + (1000 / fc_de) * (1000 / fc_de));\nypb = hp1(ypb, 30);                          // head-amp coupling APPROX\nypb = ypb + lp1(noise(), 10000) * ck_ng;\n// Echo Sustain feedback, with the Echolivity feedback filters\nf1l, f1b, f1h = svf(ypb, sm_fb_hp_hz, q_fb);\nf2l, f2b, f2h = svf(f1h, sm_fb_lp_hz, q_fb);\nguard = (env > 1.5) ? 1.5 / env : 1;\nfbs = f2l * fb_amt * guard * dfb_g;\nenv = fixdenorm(env + ((abs(f2l * fb_amt) > env) ? ck_up : ck_dn) * (abs(f2l * fb_amt) - env));\n\n// ================= RECORD CHAIN =======================================\nu = pre * ck_rg * drive_gain * (1 - hold_s) + fbs;\nu = hp1(u, 20);\nu = tapesat(u * g_t * drive_gain, 0.05) / g_t;\nu = dcblock(u);\n// write anti-alias: the head's speed over the tape sets the tape's sample spacing\n// spatial Nyquist: a frequency f lands at f / (|u_cps| sr) cycles per cell, which must stay < 0.5\n// 4th-order Butterworth at 0.35 sr |u|: everything that plays back below 0.35 sr (16.8 kHz @ 48k)\n// is kept; what would land above Nyquist is >= 40 dB down before the head samples it (test E03)\nfc_w = clamp(0.35 * sr * abs(u_cps), 20, 0.45 * sr);\nrl1, rb1, rh1 = svf(u, fc_w, 0.5412);\nrl, rb, rh = svf(rl1, fc_w, 1.3066);\nrec = fixnan(rl);\n\n// ================= RECORD/ERASE HEAD: fill every cell crossed =========\n// ECHO: erase + record (overwrite). SOS: erase off, new is added to the old\n// layer, which loses sos_db per pass. PLAYBACK: record and erase off.\nwr_gain = 1 - pb_s;\nsp_bias = sm_bias_khz * 1000 / (max(abs(u_cps), 0.000001) * sr);  // bias cycles per tape cell\nbias_amp = 0;\nif (sp_bias < FBIAS_MIN_SP) {\n\tbias_amp = sm_bias_leak * 0.1 * min(1, (FBIAS_MIN_SP - sp_bias) / 0.1);   // level APPROX\n}\nif (wr_gain > 0.0001 && abs(u_cps) > 0.000001) {\n\tklo = (u_cps > 0) ? floor(w_old) + 1 : -floor(-w_new);      // -floor(-x) = ceil(x)\n\tkhi = (u_cps > 0) ? floor(w_new) : -floor(-w_old) - 1;\n\tfor (k = klo; k <= khi; k += 1) {\n\t\tf = (k - w_old) / u_cps;\n\t\tki = wrap(k, 0, L);\n\t\tval = rec_prev + f * (rec - rec_prev);\n\t\tif (bias_amp > 0) {\n\t\t\tval = val + bias_amp * sin(twopi * sm_bias_khz * 1000 * ((t - 1 + f) / sr));\n\t\t}\n\t\told = peek(tape, ki, 0);\n\t\tkeep = sos_s * ck_sg;                            // SOS keeps the old layer\n\t\tnv = old * (1 - wr_gain) + wr_gain * (old * keep + val);\n\t\tpoke(tape, nv, ki, 0);\n\t}\n}\nrec_prev = rec;\nw_prev = w_new;\np = p_new;\n\n// ================= OUTPUT =============================================\ne1l, e1b, e1h = svf(ypb, sm_echo_hp_hz, 0.707);\ne2l, e2b, e2h = svf(e1h, sm_echo_lp_hz, 0.707);\nech = dcblock(e2l) * echo_on_s2;\nif (sm_out_db != ck_okey) {\n\tck_og = pow(10, sm_out_db / 20);\n\tck_okey = sm_out_db;\n}\nif (sm_echo_trim_db != ck_etkey) {\n\tck_et = pow(10, sm_echo_trim_db / 20);\n\tck_etkey = sm_echo_trim_db;\n}\no_mix = dry_br + ech * ck_en * ck_ge * ck_et;\nif (sm_cable_pf > 1) {\n\to_mix = lp1(o_mix, 1 / (twopi * ck_rth * sm_cable_pf * 0.000000000001));\n}\no1 = fixnan(o_mix * ck_og);\no2 = o1;\n\n// ================= OUTPUT PROTECTION (as the H&H device) =================\nif (ceiling_db != ck_ckey) {\n\tck_cl = pow(10, ceiling_db / 20);\n\tck_ckey = ceiling_db;\n}\nc_lin = ck_cl;\nthr = c_lin * 0.944061;\npk = abs(o1);\nover = (pk > thr) ? 1 : 0;\npg = 1;\nif (protect > 0.5) {\n\tgreq = (pk > thr) ? thr / pk : 1;\n\tif (greq < pg_hold) {\n\t\tpg_hold = greq;\n\t\tph_cnt = 0.010 * sr;\n\t} else if (ph_cnt > 0) {\n\t\tph_cnt = ph_cnt - 1;\n\t} else {\n\t\tpg_hold = pg_hold + ck_prel * (1 - pg_hold);\n\t}\n\tif (pg_hold < pg_s) {\n\t\tpg_s = pg_s + ck_patt * (pg_hold - pg_s);\n\t} else {\n\t\tpg_s = pg_hold;\n\t}\n\tpg = pg_s;\n\to1 = softclip(o1 * pg, thr, c_lin);\n\to2 = o1;\n} else {\n\tpg_hold = 1;\n\tpg_s = 1;\n\tph_cnt = 0;\n}\n\nout1 = o1;\nout2 = o2;\nout3 = (d / max(vc, 0.000000001)) / sr * 1000;\nout4 = tap_bpm;\nout5 = u_out;\nout6 = v_eff;\nout7 = pg;\nout8 = over;\n",
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
     "id": "obj-3",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      20,
      500,
      80,
      22
     ],
     "outlettype": [
      "signal",
      "signal"
     ],
     "text": "plugout~ 2"
    }
   },
   {
    "box": {
     "id": "obj-4",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      560,
      40,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      0,
      0,
      1410.0,
      169
     ],
     "bgcolor": [
      0.08627450980392157,
      0.09411764705882353,
      0.10588235294117647,
      1.0
     ],
     "border": 0,
     "rounded": 0,
     "background": 1,
     "varname": "thm_obj_4"
    }
   },
   {
    "box": {
     "id": "obj-5",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      520,
      100,
      18
     ],
     "text": "ECHOLIVITY",
     "presentation": 1,
     "presentation_rect": [
      8,
      -1,
      110,
      16
     ],
     "fontsize": 10.5,
     "fontface": 1,
     "textcolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "background": 1,
     "varname": "thm_obj_5"
    }
   },
   {
    "box": {
     "id": "obj-6",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      540,
      100,
      18
     ],
     "text": "EP-3  TAPE ECHO",
     "presentation": 1,
     "presentation_rect": [
      96,
      -1,
      130,
      16
     ],
     "fontsize": 9.0,
     "fontface": 1,
     "textcolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "background": 1,
     "varname": "thm_obj_6"
    }
   },
   {
    "box": {
     "id": "obj-7",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1420,
      540,
      160,
      18
     ],
     "text": "8 ips \u00b7 moving record head \u00b7 sound-on-sound \u00b7 v0.1.0-dev",
     "presentation": 1,
     "presentation_rect": [
      210,
      0,
      300,
      15
     ],
     "fontsize": 8.0,
     "textcolor": [
      0.5529411764705883,
      0.5294117647058824,
      0.47058823529411764,
      1.0
     ],
     "background": 1,
     "varname": "thm_obj_7"
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      600.4,
      40,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      4,
      16,
      58,
      151
     ],
     "bgcolor": [
      0.1411764705882353,
      0.15294117647058825,
      0.16862745098039217,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "border": 1,
     "rounded": 6,
     "background": 1,
     "varname": "thm_obj_8"
    }
   },
   {
    "box": {
     "id": "obj-9",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      640.4,
      40,
      4
     ],
     "presentation": 1,
     "presentation_rect": [
      10,
      18,
      18,
      2
     ],
     "bgcolor": [
      0.9137254901960784,
      0.8745098039215686,
      0.7764705882352941,
      1.0
     ],
     "border": 0,
     "rounded": 0,
     "background": 1,
     "varname": "thm_obj_9"
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      680.4,
      80,
      16
     ],
     "text": "IN",
     "presentation": 1,
     "presentation_rect": [
      32,
      13,
      28,
      14
     ],
     "fontsize": 8.5,
     "fontface": 1,
     "textcolor": [
      0.803921568627451,
      0.7333333333333333,
      0.5725490196078431,
      1.0
     ],
     "background": 1,
     "varname": "thm_obj_10"
    }
   },
   {
    "box": {
     "id": "obj-11",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      606.6,
      40,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      66,
      16,
      330,
      151
     ],
     "bgcolor": [
      0.1411764705882353,
      0.15294117647058825,
      0.16862745098039217,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "border": 1,
     "rounded": 6,
     "background": 1,
     "varname": "thm_obj_11"
    }
   },
   {
    "box": {
     "id": "obj-12",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      646.6,
      40,
      4
     ],
     "presentation": 1,
     "presentation_rect": [
      72,
      18,
      18,
      2
     ],
     "bgcolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "border": 0,
     "rounded": 0,
     "background": 1,
     "varname": "thm_obj_12"
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      686.6,
      80,
      16
     ],
     "text": "ECHO DELAY",
     "presentation": 1,
     "presentation_rect": [
      94,
      13,
      300,
      14
     ],
     "fontsize": 8.5,
     "fontface": 1,
     "textcolor": [
      0.803921568627451,
      0.7333333333333333,
      0.5725490196078431,
      1.0
     ],
     "background": 1,
     "varname": "thm_obj_13"
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      640.0,
      40,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      400,
      16,
      120,
      151
     ],
     "bgcolor": [
      0.1411764705882353,
      0.15294117647058825,
      0.16862745098039217,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "border": 1,
     "rounded": 6,
     "background": 1,
     "varname": "thm_obj_14"
    }
   },
   {
    "box": {
     "id": "obj-15",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      680.0,
      40,
      4
     ],
     "presentation": 1,
     "presentation_rect": [
      406,
      18,
      18,
      2
     ],
     "bgcolor": [
      0.8784313725490196,
      0.34509803921568627,
      0.23529411764705882,
      1.0
     ],
     "border": 0,
     "rounded": 0,
     "background": 1,
     "varname": "thm_obj_15"
    }
   },
   {
    "box": {
     "id": "obj-16",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      720.0,
      80,
      16
     ],
     "text": "PERFORM",
     "presentation": 1,
     "presentation_rect": [
      428,
      13,
      90,
      14
     ],
     "fontsize": 8.5,
     "fontface": 1,
     "textcolor": [
      0.803921568627451,
      0.7333333333333333,
      0.5725490196078431,
      1.0
     ],
     "background": 1,
     "varname": "thm_obj_16"
    }
   },
   {
    "box": {
     "id": "obj-17",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      652.4,
      40,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      524,
      16,
      200,
      151
     ],
     "bgcolor": [
      0.1411764705882353,
      0.15294117647058825,
      0.16862745098039217,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "border": 1,
     "rounded": 6,
     "background": 1,
     "varname": "thm_obj_17"
    }
   },
   {
    "box": {
     "id": "obj-18",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      692.4,
      40,
      4
     ],
     "presentation": 1,
     "presentation_rect": [
      530,
      18,
      18,
      2
     ],
     "bgcolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "border": 0,
     "rounded": 0,
     "background": 1,
     "varname": "thm_obj_18"
    }
   },
   {
    "box": {
     "id": "obj-19",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      732.4,
      80,
      16
     ],
     "text": "ECHO",
     "presentation": 1,
     "presentation_rect": [
      552,
      13,
      170,
      14
     ],
     "fontsize": 8.5,
     "fontface": 1,
     "textcolor": [
      0.803921568627451,
      0.7333333333333333,
      0.5725490196078431,
      1.0
     ],
     "background": 1,
     "varname": "thm_obj_19"
    }
   },
   {
    "box": {
     "id": "obj-20",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      672.8,
      40,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      728,
      16,
      170,
      151
     ],
     "bgcolor": [
      0.1411764705882353,
      0.15294117647058825,
      0.16862745098039217,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "border": 1,
     "rounded": 6,
     "background": 1,
     "varname": "thm_obj_20"
    }
   },
   {
    "box": {
     "id": "obj-21",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      712.8,
      40,
      4
     ],
     "presentation": 1,
     "presentation_rect": [
      734,
      18,
      18,
      2
     ],
     "bgcolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "border": 0,
     "rounded": 0,
     "background": 1,
     "varname": "thm_obj_21"
    }
   },
   {
    "box": {
     "id": "obj-22",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      752.8,
      80,
      16
     ],
     "text": "TAPE",
     "presentation": 1,
     "presentation_rect": [
      756,
      13,
      140,
      14
     ],
     "fontsize": 8.5,
     "fontface": 1,
     "textcolor": [
      0.803921568627451,
      0.7333333333333333,
      0.5725490196078431,
      1.0
     ],
     "background": 1,
     "varname": "thm_obj_22"
    }
   },
   {
    "box": {
     "id": "obj-23",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      690.2,
      40,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      902,
      16,
      156,
      151
     ],
     "bgcolor": [
      0.1411764705882353,
      0.15294117647058825,
      0.16862745098039217,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "border": 1,
     "rounded": 6,
     "background": 1,
     "varname": "thm_obj_23"
    }
   },
   {
    "box": {
     "id": "obj-24",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      730.2,
      40,
      4
     ],
     "presentation": 1,
     "presentation_rect": [
      908,
      18,
      18,
      2
     ],
     "bgcolor": [
      0.36470588235294116,
      0.7019607843137254,
      0.6470588235294118,
      1.0
     ],
     "border": 0,
     "rounded": 0,
     "background": 1,
     "varname": "thm_obj_24"
    }
   },
   {
    "box": {
     "id": "obj-25",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      770.2,
      80,
      16
     ],
     "text": "FILTERS",
     "presentation": 1,
     "presentation_rect": [
      930,
      13,
      126,
      14
     ],
     "fontsize": 8.5,
     "fontface": 1,
     "textcolor": [
      0.803921568627451,
      0.7333333333333333,
      0.5725490196078431,
      1.0
     ],
     "background": 1,
     "varname": "thm_obj_25"
    }
   },
   {
    "box": {
     "id": "obj-26",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      706.2,
      40,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      1062,
      16,
      150,
      151
     ],
     "bgcolor": [
      0.1411764705882353,
      0.15294117647058825,
      0.16862745098039217,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "border": 1,
     "rounded": 6,
     "background": 1,
     "varname": "thm_obj_26"
    }
   },
   {
    "box": {
     "id": "obj-27",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      746.2,
      40,
      4
     ],
     "presentation": 1,
     "presentation_rect": [
      1068,
      18,
      18,
      2
     ],
     "bgcolor": [
      0.9137254901960784,
      0.8745098039215686,
      0.7764705882352941,
      1.0
     ],
     "border": 0,
     "rounded": 0,
     "background": 1,
     "varname": "thm_obj_27"
    }
   },
   {
    "box": {
     "id": "obj-28",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      786.2,
      80,
      16
     ],
     "text": "OUTPUT",
     "presentation": 1,
     "presentation_rect": [
      1090,
      13,
      120,
      14
     ],
     "fontsize": 8.5,
     "fontface": 1,
     "textcolor": [
      0.803921568627451,
      0.7333333333333333,
      0.5725490196078431,
      1.0
     ],
     "background": 1,
     "varname": "thm_obj_28"
    }
   },
   {
    "box": {
     "id": "obj-29",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      721.6,
      40,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      1216,
      16,
      190,
      151
     ],
     "bgcolor": [
      0.1411764705882353,
      0.15294117647058825,
      0.16862745098039217,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "border": 1,
     "rounded": 6,
     "background": 1,
     "varname": "thm_obj_29"
    }
   },
   {
    "box": {
     "id": "obj-30",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      761.6,
      40,
      4
     ],
     "presentation": 1,
     "presentation_rect": [
      1222,
      18,
      18,
      2
     ],
     "bgcolor": [
      0.5529411764705883,
      0.5294117647058824,
      0.47058823529411764,
      1.0
     ],
     "border": 0,
     "rounded": 0,
     "background": 1,
     "varname": "thm_obj_30"
    }
   },
   {
    "box": {
     "id": "obj-31",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1300,
      801.6,
      80,
      16
     ],
     "text": "PREAMP \u00b7 ENGINE",
     "presentation": 1,
     "presentation_rect": [
      1244,
      13,
      160,
      14
     ],
     "fontsize": 8.5,
     "fontface": 1,
     "textcolor": [
      0.803921568627451,
      0.7333333333333333,
      0.5725490196078431,
      1.0
     ],
     "background": 1,
     "varname": "thm_obj_31"
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      120,
      300,
      44,
      48
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      11,
      28,
      44,
      48
     ],
     "parameter_enable": 1,
     "varname": "in_gain_db",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Input Volume",
       "parameter_shortname": "Input",
       "parameter_type": 0,
       "parameter_mmin": -36,
       "parameter_mmax": 12,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 4,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.9137254901960784,
      0.8745098039215686,
      0.7764705882352941,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-33",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      120,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend in_gain_db"
    }
   },
   {
    "box": {
     "id": "obj-34",
     "maxclass": "live.meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      238,
      520,
      10,
      60
     ],
     "outlettype": [
      "list"
     ],
     "presentation": 1,
     "presentation_rect": [
      25,
      82,
      8,
      78
     ],
     "coldcolor": [
      0.36470588235294116,
      0.7019607843137254,
      0.6470588235294118,
      1.0
     ],
     "warmcolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "hotcolor": [
      0.8784313725490196,
      0.34509803921568627,
      0.23529411764705882,
      1.0
     ],
     "overloadcolor": [
      0.8784313725490196,
      0.34509803921568627,
      0.23529411764705882,
      1.0
     ],
     "bgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "varname": "thm_obj_34"
    }
   },
   {
    "box": {
     "id": "obj-35",
     "maxclass": "live.meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      238,
      520,
      10,
      60
     ],
     "outlettype": [
      "list"
     ],
     "presentation": 1,
     "presentation_rect": [
      35,
      82,
      8,
      78
     ],
     "coldcolor": [
      0.36470588235294116,
      0.7019607843137254,
      0.6470588235294118,
      1.0
     ],
     "warmcolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "hotcolor": [
      0.8784313725490196,
      0.34509803921568627,
      0.23529411764705882,
      1.0
     ],
     "overloadcolor": [
      0.8784313725490196,
      0.34509803921568627,
      0.23529411764705882,
      1.0
     ],
     "bgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "varname": "thm_obj_35"
    }
   },
   {
    "box": {
     "id": "obj-36",
     "maxclass": "live.tab",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      238,
      300,
      214,
      22
     ],
     "outlettype": [
      "",
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      72,
      26,
      214,
      22
     ],
     "parameter_enable": 1,
     "varname": "mode",
     "num_lines_patching": 1,
     "num_lines_presentation": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Delay Mode",
       "parameter_shortname": "Mode",
       "parameter_type": 2,
       "parameter_mmin": 0,
       "parameter_mmax": 2,
       "parameter_initial": [
        2
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 9,
       "parameter_invisible": 0,
       "parameter_enum": [
        "SYNC",
        "TAP",
        "MANUAL"
       ]
      }
     },
     "bgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "bgoncolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "activebgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "activebgoncolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "textoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "fontsize": 10.0,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-37",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      238,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend mode"
    }
   },
   {
    "box": {
     "id": "obj-38",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      356,
      300,
      44,
      20
     ],
     "outlettype": [
      "",
      ""
     ],
     "text": "TAP TEMPO",
     "presentation": 1,
     "presentation_rect": [
      292,
      26,
      98,
      22
     ],
     "parameter_enable": 1,
     "varname": "tap_button",
     "mode": 0,
     "bgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "bgoncolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "activebgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "activebgoncolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "textcolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "bordercolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "fontsize": 10.0,
     "fontface": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Tap",
       "parameter_shortname": "Tap",
       "parameter_type": 2,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 9,
       "parameter_invisible": 0,
       "parameter_enum": [
        "off",
        "on"
       ]
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-39",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      356,
      340,
      30,
      22
     ],
     "outlettype": [
      "bang"
     ],
     "text": "t b"
    }
   },
   {
    "box": {
     "id": "obj-40",
     "maxclass": "newobj",
     "numinlets": 5,
     "numoutlets": 4,
     "patching_rect": [
      356,
      360,
      100,
      22
     ],
     "outlettype": [
      "int",
      "",
      "",
      "int"
     ],
     "text": "counter 1 1000000"
    }
   },
   {
    "box": {
     "id": "obj-41",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      356,
      380,
      80,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend tap"
    }
   },
   {
    "box": {
     "id": "obj-42",
     "maxclass": "live.slider",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      474,
      300,
      300,
      30
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      72,
      54,
      318,
      34
     ],
     "parameter_enable": 1,
     "varname": "slider_pos",
     "orientation": 1,
     "showname": 0,
     "slidercolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeslidercolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "tribordercolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "trioncolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "tricolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "fontsize": 9.0,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Echo Delay",
       "parameter_shortname": "Delay",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 100.0,
       "parameter_initial": [
        50.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 5,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-43",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      474,
      340,
      50,
      22
     ],
     "outlettype": [
      "float"
     ],
     "text": "* 0.01"
    }
   },
   {
    "box": {
     "id": "obj-44",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      474,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend slider_pos"
    }
   },
   {
    "box": {
     "id": "obj-45",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      260,
      460,
      80,
      22
     ],
     "outlettype": [
      "float"
     ],
     "text": "snapshot~ 40"
    }
   },
   {
    "box": {
     "id": "obj-46",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      260,
      490,
      56,
      22
     ],
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      72,
      94,
      76,
      22
     ],
     "format": 6,
     "numdecimalplaces": 1,
     "fontsize": 14.0,
     "fontface": 1,
     "bgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "textcolor": [
      0.9411764705882353,
      0.6509803921568628,
      0.25098039215686274,
      1.0
     ],
     "tricolor": [
      0,
      0,
      0,
      0
     ],
     "htricolor": [
      0,
      0,
      0,
      0
     ],
     "ignoreclick": 1,
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "varname": "thm_obj_46"
    }
   },
   {
    "box": {
     "id": "obj-47",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      727.7,
      80,
      16
     ],
     "text": "ms",
     "presentation": 1,
     "presentation_rect": [
      150,
      101,
      20,
      14
     ],
     "fontsize": 8.0,
     "fontface": 0,
     "textcolor": [
      0.803921568627451,
      0.7333333333333333,
      0.5725490196078431,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_47"
    }
   },
   {
    "box": {
     "id": "obj-48",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      380,
      460,
      80,
      22
     ],
     "outlettype": [
      "float"
     ],
     "text": "snapshot~ 40"
    }
   },
   {
    "box": {
     "id": "obj-49",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      380,
      490,
      56,
      22
     ],
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      170,
      94,
      62,
      22
     ],
     "format": 6,
     "numdecimalplaces": 1,
     "fontsize": 14.0,
     "fontface": 1,
     "bgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "textcolor": [
      0.9411764705882353,
      0.6509803921568628,
      0.25098039215686274,
      1.0
     ],
     "tricolor": [
      0,
      0,
      0,
      0
     ],
     "htricolor": [
      0,
      0,
      0,
      0
     ],
     "ignoreclick": 1,
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "varname": "thm_obj_49"
    }
   },
   {
    "box": {
     "id": "obj-50",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      731.9000000000001,
      80,
      16
     ],
     "text": "BPM",
     "presentation": 1,
     "presentation_rect": [
      234,
      101,
      26,
      14
     ],
     "fontsize": 8.0,
     "fontface": 0,
     "textcolor": [
      0.803921568627451,
      0.7333333333333333,
      0.5725490196078431,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_50"
    }
   },
   {
    "box": {
     "id": "obj-51",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      728.4,
      80,
      16
     ],
     "text": "SYNC",
     "presentation": 1,
     "presentation_rect": [
      72,
      124,
      32,
      14
     ],
     "fontsize": 8.0,
     "fontface": 1,
     "textcolor": [
      0.803921568627451,
      0.7333333333333333,
      0.5725490196078431,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_51"
    }
   },
   {
    "box": {
     "id": "obj-52",
     "maxclass": "live.menu",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      592,
      300,
      60,
      15
     ],
     "outlettype": [
      "",
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      104,
      123,
      50,
      16
     ],
     "parameter_enable": 1,
     "varname": "sync_div",
     "bgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "activebgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "tricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "fontsize": 8.5,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Sync Division",
       "parameter_shortname": "Div",
       "parameter_type": 2,
       "parameter_mmin": 0,
       "parameter_mmax": 5,
       "parameter_initial": [
        2
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 9,
       "parameter_invisible": 0,
       "parameter_enum": [
        "1/32",
        "1/16",
        "1/8",
        "1/4",
        "1/2",
        "1 bar"
       ]
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-53",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      592,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend sync_div"
    }
   },
   {
    "box": {
     "id": "obj-54",
     "maxclass": "live.tab",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      710,
      300,
      84,
      16
     ],
     "outlettype": [
      "",
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      158,
      123,
      84,
      16
     ],
     "parameter_enable": 1,
     "varname": "sync_type",
     "num_lines_patching": 1,
     "num_lines_presentation": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Sync Type",
       "parameter_shortname": "Type",
       "parameter_type": 2,
       "parameter_mmin": 0,
       "parameter_mmax": 2,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 9,
       "parameter_invisible": 0,
       "parameter_enum": [
        "STR",
        "DOT",
        "TRI"
       ]
      }
     },
     "bgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "bgoncolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "activebgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "activebgoncolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "textoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "fontsize": 8.5,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-55",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      710,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend sync_type"
    }
   },
   {
    "box": {
     "id": "obj-56",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      828,
      300,
      28,
      16
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      246,
      123,
      28,
      16
     ],
     "parameter_enable": 1,
     "varname": "sync_mult",
     "activebgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "bgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "textcolor": [
      0.9411764705882353,
      0.6509803921568628,
      0.25098039215686274,
      1.0
     ],
     "tricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "activetricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "fontsize": 9.0,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Sync Multiplier",
       "parameter_shortname": "Mult",
       "parameter_type": 1,
       "parameter_mmin": 1,
       "parameter_mmax": 8,
       "parameter_initial": [
        1
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 0,
       "parameter_invisible": 0
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-57",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      828,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend sync_mult"
    }
   },
   {
    "box": {
     "id": "obj-58",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      732.4,
      80,
      16
     ],
     "text": "TAP",
     "presentation": 1,
     "presentation_rect": [
      72,
      144,
      32,
      14
     ],
     "fontsize": 8.0,
     "fontface": 1,
     "textcolor": [
      0.803921568627451,
      0.7333333333333333,
      0.5725490196078431,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_58"
    }
   },
   {
    "box": {
     "id": "obj-59",
     "maxclass": "live.menu",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      946,
      300,
      60,
      15
     ],
     "outlettype": [
      "",
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      104,
      143,
      50,
      16
     ],
     "parameter_enable": 1,
     "varname": "tap_div",
     "bgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "activebgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "tricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "fontsize": 8.5,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Tap Division",
       "parameter_shortname": "TapDiv",
       "parameter_type": 2,
       "parameter_mmin": 0,
       "parameter_mmax": 5,
       "parameter_initial": [
        3
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 9,
       "parameter_invisible": 0,
       "parameter_enum": [
        "1/32",
        "1/16",
        "1/8",
        "1/4",
        "1/2",
        "1 bar"
       ]
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-60",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      946,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend tap_div"
    }
   },
   {
    "box": {
     "id": "obj-61",
     "maxclass": "live.tab",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      1064,
      300,
      84,
      16
     ],
     "outlettype": [
      "",
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      158,
      143,
      84,
      16
     ],
     "parameter_enable": 1,
     "varname": "tap_type",
     "num_lines_patching": 1,
     "num_lines_presentation": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Tap Type",
       "parameter_shortname": "TapType",
       "parameter_type": 2,
       "parameter_mmin": 0,
       "parameter_mmax": 2,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 9,
       "parameter_invisible": 0,
       "parameter_enum": [
        "STR",
        "DOT",
        "TRI"
       ]
      }
     },
     "bgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "bgoncolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "activebgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "activebgoncolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "textoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "fontsize": 8.5,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-62",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1064,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend tap_type"
    }
   },
   {
    "box": {
     "id": "obj-63",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1182,
      300,
      44,
      50
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      296,
      96,
      44,
      50
     ],
     "parameter_enable": 1,
     "varname": "offset_ms",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Timing Offset",
       "parameter_shortname": "Offset",
       "parameter_type": 0,
       "parameter_mmin": -100,
       "parameter_mmax": 100,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 2,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-64",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1182,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend offset_ms"
    }
   },
   {
    "box": {
     "id": "obj-65",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1300,
      300,
      44,
      50
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      344,
      96,
      44,
      50
     ],
     "parameter_enable": 1,
     "varname": "glide_ms",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Slider Response",
       "parameter_shortname": "Response",
       "parameter_type": 0,
       "parameter_mmin": 1,
       "parameter_mmax": 2000,
       "parameter_initial": [
        40
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 2,
       "parameter_invisible": 0,
       "parameter_exponent": 3.0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-66",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1300,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend glide_ms"
    }
   },
   {
    "box": {
     "id": "obj-67",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      743.7,
      80,
      16
     ],
     "text": "TIMING",
     "presentation": 1,
     "presentation_rect": [
      282,
      148,
      48,
      12
     ],
     "fontsize": 7.0,
     "fontface": 0,
     "textcolor": [
      0.5529411764705883,
      0.5294117647058824,
      0.47058823529411764,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_67"
    }
   },
   {
    "box": {
     "id": "obj-68",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1400,
      20,
      40,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "poll"
    }
   },
   {
    "box": {
     "id": "obj-69",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 5,
     "patching_rect": [
      1400,
      50,
      80,
      22
     ],
     "outlettype": [
      "int",
      "int",
      "int",
      "int",
      "int"
     ],
     "text": "mousestate"
    }
   },
   {
    "box": {
     "id": "obj-70",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 3,
     "patching_rect": [
      1400,
      80,
      50,
      22
     ],
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "text": "change"
    }
   },
   {
    "box": {
     "id": "obj-71",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      1400,
      110,
      40,
      22
     ],
     "outlettype": [
      "bang",
      ""
     ],
     "text": "sel 0"
    }
   },
   {
    "box": {
     "id": "obj-72",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      700,
      20,
      90,
      22
     ],
     "outlettype": [
      "bang",
      "int",
      "int"
     ],
     "text": "live.thisdevice"
    }
   },
   {
    "box": {
     "id": "obj-73",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      700,
      50,
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
     "id": "obj-74",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      700,
      80,
      90,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "path live_set"
    }
   },
   {
    "box": {
     "id": "obj-75",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      700,
      110,
      70,
      22
     ],
     "outlettype": [
      "",
      "",
      ""
     ],
     "text": "live.path"
    }
   },
   {
    "box": {
     "id": "obj-76",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      700,
      140,
      120,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "property tempo"
    }
   },
   {
    "box": {
     "id": "obj-77",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      700,
      170,
      80,
      22
     ],
     "outlettype": [
      "",
      ""
     ],
     "text": "live.observer"
    }
   },
   {
    "box": {
     "id": "obj-78",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      700,
      200,
      80,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend bpm"
    }
   },
   {
    "box": {
     "id": "obj-79",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      830,
      140,
      120,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "property signature_numerator"
    }
   },
   {
    "box": {
     "id": "obj-80",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      830,
      170,
      80,
      22
     ],
     "outlettype": [
      "",
      ""
     ],
     "text": "live.observer"
    }
   },
   {
    "box": {
     "id": "obj-81",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      960,
      140,
      120,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "property signature_denominator"
    }
   },
   {
    "box": {
     "id": "obj-82",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      960,
      170,
      80,
      22
     ],
     "outlettype": [
      "",
      ""
     ],
     "text": "live.observer"
    }
   },
   {
    "box": {
     "id": "obj-83",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      830,
      200,
      60,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "pak 4 4"
    }
   },
   {
    "box": {
     "id": "obj-84",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      830,
      225,
      100,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "expr $f1*4./$f2"
    }
   },
   {
    "box": {
     "id": "obj-85",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      830,
      250,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend bar_beats"
    }
   },
   {
    "box": {
     "id": "obj-86",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1418,
      300,
      74,
      30
     ],
     "outlettype": [
      "",
      ""
     ],
     "text": "HOLD",
     "presentation": 1,
     "presentation_rect": [
      406,
      26,
      74,
      30
     ],
     "parameter_enable": 1,
     "varname": "hold_mom",
     "mode": 1,
     "texton": "HOLD",
     "bgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "bgoncolor": [
      0.8784313725490196,
      0.34509803921568627,
      0.23529411764705882,
      1.0
     ],
     "activebgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "activebgoncolor": [
      0.8784313725490196,
      0.34509803921568627,
      0.23529411764705882,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "textoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "activetextcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "activetextoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "fontsize": 11.0,
     "fontface": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "HOLD Momentary",
       "parameter_shortname": "HOLD",
       "parameter_type": 2,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 9,
       "parameter_invisible": 0,
       "parameter_enum": [
        "off",
        "on"
       ]
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-87",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1418,
      300,
      32,
      30
     ],
     "outlettype": [
      "",
      ""
     ],
     "text": "LATCH",
     "presentation": 1,
     "presentation_rect": [
      482,
      26,
      32,
      30
     ],
     "parameter_enable": 1,
     "varname": "hold_latch",
     "mode": 1,
     "texton": "LATCH",
     "bgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "bgoncolor": [
      0.8784313725490196,
      0.34509803921568627,
      0.23529411764705882,
      1.0
     ],
     "activebgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "activebgoncolor": [
      0.8784313725490196,
      0.34509803921568627,
      0.23529411764705882,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "textoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "activetextcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "activetextoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "fontsize": 7.0,
     "fontface": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "HOLD Latch",
       "parameter_shortname": "HOLDL",
       "parameter_type": 2,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 9,
       "parameter_invisible": 0,
       "parameter_enum": [
        "off",
        "on"
       ]
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-88",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1418,
      330,
      40,
      22
     ],
     "outlettype": [
      "int",
      "int"
     ],
     "text": "t i i"
    }
   },
   {
    "box": {
     "id": "obj-89",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      1418,
      350,
      40,
      22
     ],
     "outlettype": [
      "bang",
      ""
     ],
     "text": "sel 1"
    }
   },
   {
    "box": {
     "id": "obj-90",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1468,
      350,
      30,
      22
     ],
     "outlettype": [
      "int"
     ],
     "text": "i"
    }
   },
   {
    "box": {
     "id": "obj-91",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1418,
      370,
      40,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "gate 1"
    }
   },
   {
    "box": {
     "id": "obj-92",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1468,
      390,
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
     "id": "obj-93",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1508,
      390,
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
     "id": "obj-94",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1418,
      410,
      50,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "pak 0 0"
    }
   },
   {
    "box": {
     "id": "obj-95",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1418,
      430,
      90,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "expr $f1 || $f2"
    }
   },
   {
    "box": {
     "id": "obj-96",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1418,
      450,
      100,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend hold"
    }
   },
   {
    "box": {
     "id": "obj-97",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1548,
      300,
      74,
      30
     ],
     "outlettype": [
      "",
      ""
     ],
     "text": "DRIVE",
     "presentation": 1,
     "presentation_rect": [
      406,
      60,
      74,
      30
     ],
     "parameter_enable": 1,
     "varname": "drive_mom",
     "mode": 1,
     "texton": "DRIVE",
     "bgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "bgoncolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "activebgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "activebgoncolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "textoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "activetextcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "activetextoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "fontsize": 11.0,
     "fontface": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "DRIVE Momentary",
       "parameter_shortname": "DRIVE",
       "parameter_type": 2,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 9,
       "parameter_invisible": 0,
       "parameter_enum": [
        "off",
        "on"
       ]
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-98",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1548,
      300,
      32,
      30
     ],
     "outlettype": [
      "",
      ""
     ],
     "text": "LATCH",
     "presentation": 1,
     "presentation_rect": [
      482,
      60,
      32,
      30
     ],
     "parameter_enable": 1,
     "varname": "drive_latch",
     "mode": 1,
     "texton": "LATCH",
     "bgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "bgoncolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "activebgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "activebgoncolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "textoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "activetextcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "activetextoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "fontsize": 7.0,
     "fontface": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "DRIVE Latch",
       "parameter_shortname": "DRIVEL",
       "parameter_type": 2,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 9,
       "parameter_invisible": 0,
       "parameter_enum": [
        "off",
        "on"
       ]
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-99",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1548,
      330,
      40,
      22
     ],
     "outlettype": [
      "int",
      "int"
     ],
     "text": "t i i"
    }
   },
   {
    "box": {
     "id": "obj-100",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      1548,
      350,
      40,
      22
     ],
     "outlettype": [
      "bang",
      ""
     ],
     "text": "sel 1"
    }
   },
   {
    "box": {
     "id": "obj-101",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1598,
      350,
      30,
      22
     ],
     "outlettype": [
      "int"
     ],
     "text": "i"
    }
   },
   {
    "box": {
     "id": "obj-102",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1548,
      370,
      40,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "gate 1"
    }
   },
   {
    "box": {
     "id": "obj-103",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1598,
      390,
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
     "id": "obj-104",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1638,
      390,
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
     "id": "obj-105",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1548,
      410,
      50,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "pak 0 0"
    }
   },
   {
    "box": {
     "id": "obj-106",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1548,
      430,
      90,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "expr $f1 || $f2"
    }
   },
   {
    "box": {
     "id": "obj-107",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1548,
      450,
      100,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend drive"
    }
   },
   {
    "box": {
     "id": "obj-108",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1678,
      300,
      74,
      30
     ],
     "outlettype": [
      "",
      ""
     ],
     "text": "STOP",
     "presentation": 1,
     "presentation_rect": [
      406,
      94,
      74,
      30
     ],
     "parameter_enable": 1,
     "varname": "tape_stop_mom",
     "mode": 1,
     "texton": "STOP",
     "bgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "bgoncolor": [
      0.36470588235294116,
      0.7019607843137254,
      0.6470588235294118,
      1.0
     ],
     "activebgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "activebgoncolor": [
      0.36470588235294116,
      0.7019607843137254,
      0.6470588235294118,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "textoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "activetextcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "activetextoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "fontsize": 11.0,
     "fontface": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "STOP Momentary",
       "parameter_shortname": "STOP",
       "parameter_type": 2,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 9,
       "parameter_invisible": 0,
       "parameter_enum": [
        "off",
        "on"
       ]
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-109",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1678,
      300,
      32,
      30
     ],
     "outlettype": [
      "",
      ""
     ],
     "text": "LATCH",
     "presentation": 1,
     "presentation_rect": [
      482,
      94,
      32,
      30
     ],
     "parameter_enable": 1,
     "varname": "tape_stop_latch",
     "mode": 1,
     "texton": "LATCH",
     "bgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "bgoncolor": [
      0.36470588235294116,
      0.7019607843137254,
      0.6470588235294118,
      1.0
     ],
     "activebgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "activebgoncolor": [
      0.36470588235294116,
      0.7019607843137254,
      0.6470588235294118,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "textoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "activetextcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "activetextoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "fontsize": 7.0,
     "fontface": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "STOP Latch",
       "parameter_shortname": "STOPL",
       "parameter_type": 2,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 9,
       "parameter_invisible": 0,
       "parameter_enum": [
        "off",
        "on"
       ]
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-110",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1678,
      330,
      40,
      22
     ],
     "outlettype": [
      "int",
      "int"
     ],
     "text": "t i i"
    }
   },
   {
    "box": {
     "id": "obj-111",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      1678,
      350,
      40,
      22
     ],
     "outlettype": [
      "bang",
      ""
     ],
     "text": "sel 1"
    }
   },
   {
    "box": {
     "id": "obj-112",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1728,
      350,
      30,
      22
     ],
     "outlettype": [
      "int"
     ],
     "text": "i"
    }
   },
   {
    "box": {
     "id": "obj-113",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1678,
      370,
      40,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "gate 1"
    }
   },
   {
    "box": {
     "id": "obj-114",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1728,
      390,
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
     "id": "obj-115",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1768,
      390,
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
     "id": "obj-116",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1678,
      410,
      50,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "pak 0 0"
    }
   },
   {
    "box": {
     "id": "obj-117",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1678,
      430,
      90,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "expr $f1 || $f2"
    }
   },
   {
    "box": {
     "id": "obj-118",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1678,
      450,
      100,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend tape_stop"
    }
   },
   {
    "box": {
     "id": "obj-119",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      745.8000000000001,
      80,
      16
     ],
     "text": "DRIVE dB",
     "presentation": 1,
     "presentation_rect": [
      404,
      128,
      40,
      12
     ],
     "fontsize": 7.0,
     "fontface": 0,
     "textcolor": [
      0.5529411764705883,
      0.5294117647058824,
      0.47058823529411764,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_119"
    }
   },
   {
    "box": {
     "id": "obj-120",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      747.8000000000001,
      80,
      16
     ],
     "text": "STOP s",
     "presentation": 1,
     "presentation_rect": [
      444,
      128,
      36,
      12
     ],
     "fontsize": 7.0,
     "fontface": 0,
     "textcolor": [
      0.5529411764705883,
      0.5294117647058824,
      0.47058823529411764,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_120"
    }
   },
   {
    "box": {
     "id": "obj-121",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      749.6,
      80,
      16
     ],
     "text": "START s",
     "presentation": 1,
     "presentation_rect": [
      480,
      128,
      36,
      12
     ],
     "fontsize": 7.0,
     "fontface": 0,
     "textcolor": [
      0.5529411764705883,
      0.5294117647058824,
      0.47058823529411764,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_121"
    }
   },
   {
    "box": {
     "id": "obj-122",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1808,
      300,
      34,
      16
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      406,
      141,
      34,
      16
     ],
     "parameter_enable": 1,
     "varname": "drive_db",
     "activebgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "bgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "textcolor": [
      0.9411764705882353,
      0.6509803921568628,
      0.25098039215686274,
      1.0
     ],
     "tricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "activetricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "fontsize": 9.0,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Drive Amount",
       "parameter_shortname": "DriveAmt",
       "parameter_type": 0,
       "parameter_mmin": 0,
       "parameter_mmax": 24,
       "parameter_initial": [
        12
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 4,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-123",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1808,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend drive_db"
    }
   },
   {
    "box": {
     "id": "obj-124",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1926,
      300,
      34,
      16
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      444,
      141,
      34,
      16
     ],
     "parameter_enable": 1,
     "varname": "stop_time",
     "activebgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "bgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "textcolor": [
      0.9411764705882353,
      0.6509803921568628,
      0.25098039215686274,
      1.0
     ],
     "tricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "activetricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "fontsize": 9.0,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Stop Time",
       "parameter_shortname": "StopT",
       "parameter_type": 0,
       "parameter_mmin": 0.05,
       "parameter_mmax": 8,
       "parameter_initial": [
        1.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1,
       "parameter_invisible": 0,
       "parameter_exponent": 2.0,
       "parameter_units": "s",
       "parameter_modmode": 3
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-125",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1926,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend stop_time"
    }
   },
   {
    "box": {
     "id": "obj-126",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2044,
      300,
      34,
      16
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      482,
      141,
      34,
      16
     ],
     "parameter_enable": 1,
     "varname": "start_time",
     "activebgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "bgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "textcolor": [
      0.9411764705882353,
      0.6509803921568628,
      0.25098039215686274,
      1.0
     ],
     "tricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "activetricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "fontsize": 9.0,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Start Time",
       "parameter_shortname": "StartT",
       "parameter_type": 0,
       "parameter_mmin": 0.05,
       "parameter_mmax": 8,
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1,
       "parameter_invisible": 0,
       "parameter_exponent": 2.0,
       "parameter_units": "s",
       "parameter_modmode": 3
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-127",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2044,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend start_time"
    }
   },
   {
    "box": {
     "id": "obj-128",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2162,
      300,
      64,
      70
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      530,
      26,
      64,
      70
     ],
     "parameter_enable": 1,
     "varname": "sustain",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Echo Sustain",
       "parameter_shortname": "Sustain",
       "parameter_type": 0,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.8784313725490196,
      0.34509803921568627,
      0.23529411764705882,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-129",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2162,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend sustain"
    }
   },
   {
    "box": {
     "id": "obj-130",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2280,
      300,
      44,
      48
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      598,
      26,
      44,
      48
     ],
     "parameter_enable": 1,
     "varname": "echo",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Echo Volume",
       "parameter_shortname": "EchoVol",
       "parameter_type": 0,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-131",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2280,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend echo"
    }
   },
   {
    "box": {
     "id": "obj-132",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2398,
      300,
      44,
      48
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      646,
      26,
      44,
      48
     ],
     "parameter_enable": 1,
     "varname": "rec_db",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Record Level",
       "parameter_shortname": "RecLvl",
       "parameter_type": 0,
       "parameter_mmin": -12,
       "parameter_mmax": 12,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 4,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.9137254901960784,
      0.8745098039215686,
      0.7764705882352941,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-133",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2398,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend rec_db"
    }
   },
   {
    "box": {
     "id": "obj-134",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      745.9,
      80,
      16
     ],
     "text": "Echo Volume = blend",
     "presentation": 1,
     "presentation_rect": [
      598,
      80,
      120,
      12
     ],
     "fontsize": 7.0,
     "fontface": 0,
     "textcolor": [
      0.5529411764705883,
      0.5294117647058824,
      0.47058823529411764,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_134"
    }
   },
   {
    "box": {
     "id": "obj-135",
     "maxclass": "live.tab",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      2516,
      300,
      90,
      20
     ],
     "outlettype": [
      "",
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      530,
      104,
      90,
      20
     ],
     "parameter_enable": 1,
     "varname": "sos",
     "num_lines_patching": 1,
     "num_lines_presentation": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Echo / Sound on Sound",
       "parameter_shortname": "Mode SOS",
       "parameter_type": 2,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 9,
       "parameter_invisible": 0,
       "parameter_enum": [
        "ECHO",
        "S-O-S"
       ]
      }
     },
     "bgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "bgoncolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "activebgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "activebgoncolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "textoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "fontsize": 9.0,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-136",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2516,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend sos"
    }
   },
   {
    "box": {
     "id": "obj-137",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      750.0999999999999,
      80,
      16
     ],
     "text": "FOOTSWITCHES",
     "presentation": 1,
     "presentation_rect": [
      626,
      94,
      90,
      12
     ],
     "fontsize": 7.0,
     "fontface": 0,
     "textcolor": [
      0.803921568627451,
      0.7333333333333333,
      0.5725490196078431,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_137"
    }
   },
   {
    "box": {
     "id": "obj-138",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2634,
      300,
      44,
      18
     ],
     "outlettype": [
      "",
      ""
     ],
     "text": "ECHO",
     "presentation": 1,
     "presentation_rect": [
      626,
      106,
      44,
      18
     ],
     "parameter_enable": 1,
     "varname": "echo_on",
     "mode": 1,
     "texton": "ECHO",
     "bgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "bgoncolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "activebgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "activebgoncolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "textoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "activetextcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "activetextoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "fontsize": 8.0,
     "fontface": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Echo On",
       "parameter_shortname": "EchoOn",
       "parameter_type": 2,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        1
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 9,
       "parameter_invisible": 0,
       "parameter_enum": [
        "off",
        "on"
       ]
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-139",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2634,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend echo_on"
    }
   },
   {
    "box": {
     "id": "obj-140",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2752,
      300,
      44,
      18
     ],
     "outlettype": [
      "",
      ""
     ],
     "text": "PLAYBK",
     "presentation": 1,
     "presentation_rect": [
      674,
      106,
      44,
      18
     ],
     "parameter_enable": 1,
     "varname": "playback",
     "mode": 1,
     "texton": "PLAYBK",
     "bgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "bgoncolor": [
      0.8784313725490196,
      0.34509803921568627,
      0.23529411764705882,
      1.0
     ],
     "activebgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "activebgoncolor": [
      0.8784313725490196,
      0.34509803921568627,
      0.23529411764705882,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "textoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "activetextcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "activetextoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "fontsize": 8.0,
     "fontface": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Playback",
       "parameter_shortname": "Playback",
       "parameter_type": 2,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 9,
       "parameter_invisible": 0,
       "parameter_enum": [
        "off",
        "on"
       ]
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-141",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2752,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend playback"
    }
   },
   {
    "box": {
     "id": "obj-142",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      753.3,
      80,
      16
     ],
     "text": "S-O-S loss",
     "presentation": 1,
     "presentation_rect": [
      530,
      134,
      46,
      12
     ],
     "fontsize": 7.0,
     "fontface": 0,
     "textcolor": [
      0.5529411764705883,
      0.5294117647058824,
      0.47058823529411764,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_142"
    }
   },
   {
    "box": {
     "id": "obj-143",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2870,
      300,
      40,
      15
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      578,
      132,
      40,
      15
     ],
     "parameter_enable": 1,
     "varname": "sos_db",
     "activebgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "bgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "textcolor": [
      0.9411764705882353,
      0.6509803921568628,
      0.25098039215686274,
      1.0
     ],
     "tricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "activetricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "fontsize": 9.0,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "SOS Loss",
       "parameter_shortname": "SOSLoss",
       "parameter_type": 0,
       "parameter_mmin": -6,
       "parameter_mmax": 0,
       "parameter_initial": [
        -1
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 4,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-144",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2870,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend sos_db"
    }
   },
   {
    "box": {
     "id": "obj-145",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      758.0999999999999,
      80,
      16
     ],
     "text": "loop s",
     "presentation": 1,
     "presentation_rect": [
      626,
      134,
      30,
      12
     ],
     "fontsize": 7.0,
     "fontface": 0,
     "textcolor": [
      0.5529411764705883,
      0.5294117647058824,
      0.47058823529411764,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_145"
    }
   },
   {
    "box": {
     "id": "obj-146",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2988,
      300,
      60,
      15
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      658,
      132,
      60,
      15
     ],
     "parameter_enable": 1,
     "varname": "loop_s",
     "activebgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "bgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "textcolor": [
      0.9411764705882353,
      0.6509803921568628,
      0.25098039215686274,
      1.0
     ],
     "tricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "activetricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "fontsize": 9.0,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Loop Length",
       "parameter_shortname": "Loop",
       "parameter_type": 0,
       "parameter_mmin": 1,
       "parameter_mmax": 112.5,
       "parameter_initial": [
        112.5
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1,
       "parameter_invisible": 0,
       "parameter_exponent": 2.0,
       "parameter_units": "s",
       "parameter_modmode": 3
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-147",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2988,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend loop_s"
    }
   },
   {
    "box": {
     "id": "obj-148",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3106,
      300,
      40,
      48
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      732,
      26,
      40,
      48
     ],
     "parameter_enable": 1,
     "varname": "sat",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Tape Saturation",
       "parameter_shortname": "Sat",
       "parameter_type": 0,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-149",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3106,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend sat"
    }
   },
   {
    "box": {
     "id": "obj-150",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3224,
      300,
      40,
      48
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      773,
      26,
      40,
      48
     ],
     "parameter_enable": 1,
     "varname": "wow",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Drift",
       "parameter_shortname": "Drift",
       "parameter_type": 0,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        0.1
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-151",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3224,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend wow"
    }
   },
   {
    "box": {
     "id": "obj-152",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3342,
      300,
      40,
      48
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      814,
      26,
      40,
      48
     ],
     "parameter_enable": 1,
     "varname": "flutter",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Flutter",
       "parameter_shortname": "Flutter",
       "parameter_type": 0,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        0.25
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-153",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3342,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend flutter"
    }
   },
   {
    "box": {
     "id": "obj-154",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3460,
      300,
      40,
      48
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      855,
      26,
      40,
      48
     ],
     "parameter_enable": 1,
     "varname": "noise_db",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Tape Noise",
       "parameter_shortname": "Noise",
       "parameter_type": 0,
       "parameter_mmin": -120,
       "parameter_mmax": -30,
       "parameter_initial": [
        -60
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 4,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-155",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3460,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend noise_db"
    }
   },
   {
    "box": {
     "id": "obj-156",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3578,
      300,
      40,
      48
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      732,
      92,
      40,
      48
     ],
     "parameter_enable": 1,
     "varname": "bias_leak",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Bias Leak",
       "parameter_shortname": "BiasLeak",
       "parameter_type": 0,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-157",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3578,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend bias_leak"
    }
   },
   {
    "box": {
     "id": "obj-158",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      759.0,
      80,
      16
     ],
     "text": "BIAS kHz",
     "presentation": 1,
     "presentation_rect": [
      780,
      100,
      46,
      12
     ],
     "fontsize": 7.0,
     "fontface": 0,
     "textcolor": [
      0.5529411764705883,
      0.5294117647058824,
      0.47058823529411764,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_158"
    }
   },
   {
    "box": {
     "id": "obj-159",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3696,
      300,
      40,
      15
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      780,
      113,
      40,
      15
     ],
     "parameter_enable": 1,
     "varname": "bias_khz",
     "activebgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "bgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "textcolor": [
      0.9411764705882353,
      0.6509803921568628,
      0.25098039215686274,
      1.0
     ],
     "tricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "activetricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "fontsize": 9.0,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Bias Frequency",
       "parameter_shortname": "BiasKHz",
       "parameter_type": 0,
       "parameter_mmin": 40,
       "parameter_mmax": 120,
       "parameter_initial": [
        100
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-160",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3696,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend bias_khz"
    }
   },
   {
    "box": {
     "id": "obj-161",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      767.0,
      80,
      16
     ],
     "text": "flutter 0.5 = 0.3 %",
     "presentation": 1,
     "presentation_rect": [
      780,
      140,
      110,
      12
     ],
     "fontsize": 7.0,
     "fontface": 0,
     "textcolor": [
      0.5529411764705883,
      0.5294117647058824,
      0.47058823529411764,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_161"
    }
   },
   {
    "box": {
     "id": "obj-162",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      750.6,
      80,
      16
     ],
     "text": "REPEAT",
     "presentation": 1,
     "presentation_rect": [
      908,
      26,
      60,
      12
     ],
     "fontsize": 7.0,
     "fontface": 1,
     "textcolor": [
      0.36470588235294116,
      0.7019607843137254,
      0.6470588235294118,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_162"
    }
   },
   {
    "box": {
     "id": "obj-163",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3814,
      300,
      44,
      48
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      906,
      38,
      44,
      48
     ],
     "parameter_enable": 1,
     "varname": "fb_hp_hz",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Repeat HP",
       "parameter_shortname": "Rep HP",
       "parameter_type": 0,
       "parameter_mmin": 10,
       "parameter_mmax": 2000,
       "parameter_initial": [
        10
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 3,
       "parameter_invisible": 0,
       "parameter_exponent": 3.0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.36470588235294116,
      0.7019607843137254,
      0.6470588235294118,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-164",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3814,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend fb_hp_hz"
    }
   },
   {
    "box": {
     "id": "obj-165",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3932,
      300,
      44,
      48
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      958,
      38,
      44,
      48
     ],
     "parameter_enable": 1,
     "varname": "fb_lp_hz",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Repeat LP",
       "parameter_shortname": "Rep LP",
       "parameter_type": 0,
       "parameter_mmin": 500,
       "parameter_mmax": 20000,
       "parameter_initial": [
        20000
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 3,
       "parameter_invisible": 0,
       "parameter_exponent": 3.0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.36470588235294116,
      0.7019607843137254,
      0.6470588235294118,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-166",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3932,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend fb_lp_hz"
    }
   },
   {
    "box": {
     "id": "obj-167",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4050,
      300,
      44,
      48
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1010,
      38,
      44,
      48
     ],
     "parameter_enable": 1,
     "varname": "fb_res",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Repeat Resonance",
       "parameter_shortname": "Res",
       "parameter_type": 0,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.36470588235294116,
      0.7019607843137254,
      0.6470588235294118,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-168",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4050,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend fb_res"
    }
   },
   {
    "box": {
     "id": "obj-169",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      763.8,
      80,
      16
     ],
     "text": "ECHO",
     "presentation": 1,
     "presentation_rect": [
      908,
      92,
      70,
      12
     ],
     "fontsize": 7.0,
     "fontface": 1,
     "textcolor": [
      0.36470588235294116,
      0.7019607843137254,
      0.6470588235294118,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_169"
    }
   },
   {
    "box": {
     "id": "obj-170",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4168,
      300,
      44,
      48
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      906,
      104,
      44,
      48
     ],
     "parameter_enable": 1,
     "varname": "echo_hp_hz",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Echo HP",
       "parameter_shortname": "Echo HP",
       "parameter_type": 0,
       "parameter_mmin": 10,
       "parameter_mmax": 2000,
       "parameter_initial": [
        10
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 3,
       "parameter_invisible": 0,
       "parameter_exponent": 3.0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.36470588235294116,
      0.7019607843137254,
      0.6470588235294118,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-171",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4168,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend echo_hp_hz"
    }
   },
   {
    "box": {
     "id": "obj-172",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4286,
      300,
      44,
      48
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      958,
      104,
      44,
      48
     ],
     "parameter_enable": 1,
     "varname": "echo_lp_hz",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Echo LP",
       "parameter_shortname": "Echo LP",
       "parameter_type": 0,
       "parameter_mmin": 500,
       "parameter_mmax": 20000,
       "parameter_initial": [
        20000
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 3,
       "parameter_invisible": 0,
       "parameter_exponent": 3.0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.36470588235294116,
      0.7019607843137254,
      0.6470588235294118,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-173",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4286,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend echo_lp_hz"
    }
   },
   {
    "box": {
     "id": "obj-174",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4404,
      300,
      44,
      48
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1066,
      26,
      44,
      48
     ],
     "parameter_enable": 1,
     "varname": "dry",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Dry Trim",
       "parameter_shortname": "DryTrim",
       "parameter_type": 0,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        1
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.9137254901960784,
      0.8745098039215686,
      0.7764705882352941,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-175",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4404,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend dry"
    }
   },
   {
    "box": {
     "id": "obj-176",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4522,
      300,
      44,
      48
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1066,
      80,
      44,
      48
     ],
     "parameter_enable": 1,
     "varname": "echo_trim_db",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Echo Trim",
       "parameter_shortname": "EchoTrim",
       "parameter_type": 0,
       "parameter_mmin": -24,
       "parameter_mmax": 12,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 4,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-177",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4522,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend echo_trim_db"
    }
   },
   {
    "box": {
     "id": "obj-178",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4640,
      300,
      44,
      48
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1112,
      26,
      44,
      48
     ],
     "parameter_enable": 1,
     "varname": "out_db",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Output Level",
       "parameter_shortname": "Output",
       "parameter_type": 0,
       "parameter_mmin": -36,
       "parameter_mmax": 12,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 4,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.9137254901960784,
      0.8745098039215686,
      0.7764705882352941,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-179",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4640,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend out_db"
    }
   },
   {
    "box": {
     "id": "obj-180",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4758,
      300,
      44,
      48
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1112,
      80,
      44,
      48
     ],
     "parameter_enable": 1,
     "varname": "ceiling_db",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Output Ceiling",
       "parameter_shortname": "Ceiling",
       "parameter_type": 0,
       "parameter_mmin": -12,
       "parameter_mmax": 0,
       "parameter_initial": [
        -0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 4,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.9137254901960784,
      0.8745098039215686,
      0.7764705882352941,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-181",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4758,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend ceiling_db"
    }
   },
   {
    "box": {
     "id": "obj-182",
     "maxclass": "live.meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4876,
      520,
      10,
      60
     ],
     "outlettype": [
      "list"
     ],
     "presentation": 1,
     "presentation_rect": [
      1170,
      28,
      8,
      108
     ],
     "coldcolor": [
      0.36470588235294116,
      0.7019607843137254,
      0.6470588235294118,
      1.0
     ],
     "warmcolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "hotcolor": [
      0.8784313725490196,
      0.34509803921568627,
      0.23529411764705882,
      1.0
     ],
     "overloadcolor": [
      0.8784313725490196,
      0.34509803921568627,
      0.23529411764705882,
      1.0
     ],
     "bgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "varname": "thm_obj_182"
    }
   },
   {
    "box": {
     "id": "obj-183",
     "maxclass": "live.meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4876,
      520,
      10,
      60
     ],
     "outlettype": [
      "list"
     ],
     "presentation": 1,
     "presentation_rect": [
      1180,
      28,
      8,
      108
     ],
     "coldcolor": [
      0.36470588235294116,
      0.7019607843137254,
      0.6470588235294118,
      1.0
     ],
     "warmcolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "hotcolor": [
      0.8784313725490196,
      0.34509803921568627,
      0.23529411764705882,
      1.0
     ],
     "overloadcolor": [
      0.8784313725490196,
      0.34509803921568627,
      0.23529411764705882,
      1.0
     ],
     "bgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "varname": "thm_obj_183"
    }
   },
   {
    "box": {
     "id": "obj-184",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      785.5,
      80,
      16
     ],
     "text": "mono",
     "presentation": 1,
     "presentation_rect": [
      1166,
      136,
      34,
      12
     ],
     "fontsize": 7.0,
     "fontface": 0,
     "textcolor": [
      0.5529411764705883,
      0.5294117647058824,
      0.47058823529411764,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_184"
    }
   },
   {
    "box": {
     "id": "obj-185",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4876,
      300,
      52,
      15
     ],
     "outlettype": [
      "",
      ""
     ],
     "text": "PROTECT",
     "presentation": 1,
     "presentation_rect": [
      1066,
      146,
      52,
      15
     ],
     "parameter_enable": 1,
     "varname": "protect",
     "mode": 1,
     "texton": "PROTECT",
     "bgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "bgoncolor": [
      0.9137254901960784,
      0.8745098039215686,
      0.7764705882352941,
      1.0
     ],
     "activebgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "activebgoncolor": [
      0.9137254901960784,
      0.8745098039215686,
      0.7764705882352941,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "textoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "activetextcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "activetextoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "fontsize": 7.5,
     "fontface": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Output Protection",
       "parameter_shortname": "Protect",
       "parameter_type": 2,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        1
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 9,
       "parameter_invisible": 0,
       "parameter_enum": [
        "off",
        "on"
       ]
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-186",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4876,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend protect"
    }
   },
   {
    "box": {
     "id": "obj-187",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      900,
      460,
      80,
      22
     ],
     "outlettype": [
      "float"
     ],
     "text": "snapshot~ 40"
    }
   },
   {
    "box": {
     "id": "obj-188",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      900,
      485,
      50,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "atodb"
    }
   },
   {
    "box": {
     "id": "obj-189",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      900,
      505,
      40,
      22
     ],
     "outlettype": [
      "float"
     ],
     "text": "* -1."
    }
   },
   {
    "box": {
     "id": "obj-190",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      900,
      530,
      50,
      22
     ],
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      1122,
      146,
      30,
      15
     ],
     "format": 6,
     "numdecimalplaces": 1,
     "fontsize": 8.5,
     "bgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "textcolor": [
      0.9411764705882353,
      0.6509803921568628,
      0.25098039215686274,
      1.0
     ],
     "ignoreclick": 1,
     "tricolor": [
      0,
      0,
      0,
      0
     ],
     "htricolor": [
      0,
      0,
      0,
      0
     ],
     "varname": "thm_obj_190"
    }
   },
   {
    "box": {
     "id": "obj-191",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      787.0,
      80,
      16
     ],
     "text": "GR",
     "presentation": 1,
     "presentation_rect": [
      1152,
      147,
      16,
      12
     ],
     "fontsize": 7.0,
     "fontface": 0,
     "textcolor": [
      0.5529411764705883,
      0.5294117647058824,
      0.47058823529411764,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_191"
    }
   },
   {
    "box": {
     "id": "obj-192",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1000,
      460,
      80,
      22
     ],
     "outlettype": [
      "float"
     ],
     "text": "peakamp~ 150"
    }
   },
   {
    "box": {
     "id": "obj-193",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1000,
      485,
      40,
      22
     ],
     "outlettype": [
      "int"
     ],
     "text": "> 0.5"
    }
   },
   {
    "box": {
     "id": "obj-194",
     "maxclass": "led",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1000,
      510,
      18,
      18
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      1172,
      148,
      11,
      11
     ],
     "oncolor": [
      0.8784313725490196,
      0.34509803921568627,
      0.23529411764705882,
      1.0
     ],
     "offcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "ignoreclick": 1,
     "varname": "thm_obj_194"
    }
   },
   {
    "box": {
     "id": "obj-195",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      788.6,
      80,
      16
     ],
     "text": "OVER",
     "presentation": 1,
     "presentation_rect": [
      1184,
      147,
      26,
      12
     ],
     "fontsize": 7.0,
     "fontface": 0,
     "textcolor": [
      0.5529411764705883,
      0.5294117647058824,
      0.47058823529411764,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_195"
    }
   },
   {
    "box": {
     "id": "obj-196",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      767.1,
      80,
      16
     ],
     "text": "SOURCE CAP",
     "presentation": 1,
     "presentation_rect": [
      1222,
      30,
      54,
      12
     ],
     "fontsize": 7.0,
     "fontface": 0,
     "textcolor": [
      0.803921568627451,
      0.7333333333333333,
      0.5725490196078431,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_196"
    }
   },
   {
    "box": {
     "id": "obj-197",
     "maxclass": "live.tab",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      4994,
      300,
      70,
      16
     ],
     "outlettype": [
      "",
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1278,
      28,
      70,
      16
     ],
     "parameter_enable": 1,
     "varname": "pre_bypass",
     "num_lines_patching": 1,
     "num_lines_presentation": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Pre-emphasis Cap",
       "parameter_shortname": "PreCap",
       "parameter_type": 2,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        1
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 9,
       "parameter_invisible": 0,
       "parameter_enum": [
        "OUT",
        "22nF"
       ]
      }
     },
     "bgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "bgoncolor": [
      0.9137254901960784,
      0.8745098039215686,
      0.7764705882352941,
      1.0
     ],
     "activebgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "activebgoncolor": [
      0.9137254901960784,
      0.8745098039215686,
      0.7764705882352941,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "textoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "fontsize": 7.5,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-198",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4994,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend pre_bypass"
    }
   },
   {
    "box": {
     "id": "obj-199",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      5112,
      300,
      46,
      16
     ],
     "outlettype": [
      "",
      ""
     ],
     "text": "DRV FB",
     "presentation": 1,
     "presentation_rect": [
      1354,
      28,
      46,
      16
     ],
     "parameter_enable": 1,
     "varname": "drive_fb",
     "mode": 1,
     "texton": "DRV FB",
     "bgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "bgoncolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "activebgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "activebgoncolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "textoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "activetextcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "activetextoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "fontsize": 7.5,
     "fontface": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Drive Feedback Path",
       "parameter_shortname": "DriveFB",
       "parameter_type": 2,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 9,
       "parameter_invisible": 0,
       "parameter_enum": [
        "off",
        "on"
       ]
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-200",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5112,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend drive_fb"
    }
   },
   {
    "box": {
     "id": "obj-201",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      771.1,
      80,
      16
     ],
     "text": "DE-EMPH",
     "presentation": 1,
     "presentation_rect": [
      1222,
      50,
      54,
      12
     ],
     "fontsize": 7.0,
     "fontface": 0,
     "textcolor": [
      0.803921568627451,
      0.7333333333333333,
      0.5725490196078431,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_201"
    }
   },
   {
    "box": {
     "id": "obj-202",
     "maxclass": "live.tab",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      5230,
      300,
      70,
      16
     ],
     "outlettype": [
      "",
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1278,
      48,
      70,
      16
     ],
     "parameter_enable": 1,
     "varname": "pb_eq",
     "num_lines_patching": 1,
     "num_lines_presentation": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Playback De-emphasis",
       "parameter_shortname": "PB EQ",
       "parameter_type": 2,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 9,
       "parameter_invisible": 0,
       "parameter_enum": [
        "3nF",
        "33nF"
       ]
      }
     },
     "bgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "bgoncolor": [
      0.9137254901960784,
      0.8745098039215686,
      0.7764705882352941,
      1.0
     ],
     "activebgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "activebgoncolor": [
      0.9137254901960784,
      0.8745098039215686,
      0.7764705882352941,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "textoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "fontsize": 7.5,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-203",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5230,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend pb_eq"
    }
   },
   {
    "box": {
     "id": "obj-204",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      775.1,
      80,
      16
     ],
     "text": "CABLE pF",
     "presentation": 1,
     "presentation_rect": [
      1222,
      70,
      54,
      12
     ],
     "fontsize": 7.0,
     "fontface": 0,
     "textcolor": [
      0.803921568627451,
      0.7333333333333333,
      0.5725490196078431,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_204"
    }
   },
   {
    "box": {
     "id": "obj-205",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      5348,
      300,
      70,
      15
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1278,
      68,
      70,
      15
     ],
     "parameter_enable": 1,
     "varname": "cable_pf",
     "activebgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "bgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "textcolor": [
      0.9411764705882353,
      0.6509803921568628,
      0.25098039215686274,
      1.0
     ],
     "tricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "activetricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "fontsize": 9.0,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Cable Load",
       "parameter_shortname": "Cable",
       "parameter_type": 0,
       "parameter_mmin": 0,
       "parameter_mmax": 2000,
       "parameter_initial": [
        470
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 0,
       "parameter_invisible": 0,
       "parameter_units": "pF",
       "parameter_modmode": 3
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-206",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5348,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend cable_pf"
    }
   },
   {
    "box": {
     "id": "obj-207",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      5466,
      300,
      36,
      44
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1218,
      90,
      36,
      44
     ],
     "parameter_enable": 1,
     "varname": "head_slew",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Head Speed Limit",
       "parameter_shortname": "HeadSpd",
       "parameter_type": 0,
       "parameter_mmin": 0.05,
       "parameter_mmax": 12,
       "parameter_initial": [
        4
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.5529411764705883,
      0.5294117647058824,
      0.47058823529411764,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-208",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5466,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend head_slew"
    }
   },
   {
    "box": {
     "id": "obj-209",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      5584,
      300,
      36,
      44
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1256,
      90,
      36,
      44
     ],
     "parameter_enable": 1,
     "varname": "transition_ms",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Mode Transition",
       "parameter_shortname": "Trans",
       "parameter_type": 0,
       "parameter_mmin": 1,
       "parameter_mmax": 4000,
       "parameter_initial": [
        250
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 2,
       "parameter_invisible": 0,
       "parameter_exponent": 3.0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.5529411764705883,
      0.5294117647058824,
      0.47058823529411764,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-210",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5584,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend transition_ms"
    }
   },
   {
    "box": {
     "id": "obj-211",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      5702,
      300,
      36,
      44
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1294,
      90,
      36,
      44
     ],
     "parameter_enable": 1,
     "varname": "hold_fb",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Hold Feedback",
       "parameter_shortname": "HoldFB",
       "parameter_type": 0,
       "parameter_mmin": 0.9,
       "parameter_mmax": 1.05,
       "parameter_initial": [
        1.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     },
     "activedialcolor": [
      0.5529411764705883,
      0.5294117647058824,
      0.47058823529411764,
      1.0
     ],
     "dialcolor": [
      0.23137254901960785,
      0.25098039215686274,
      0.27450980392156865,
      1.0
     ],
     "activeneedlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "needlecolor": [
      0.9372549019607843,
      0.9019607843137255,
      0.8235294117647058,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "panelcolor": [
      0,
      0,
      0,
      0
     ],
     "fontsize": 8.5
    }
   },
   {
    "box": {
     "id": "obj-212",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5702,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend hold_fb"
    }
   },
   {
    "box": {
     "id": "obj-213",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      790.8,
      80,
      16
     ],
     "text": "SLIDER ms",
     "presentation": 1,
     "presentation_rect": [
      1220,
      149,
      46,
      12
     ],
     "fontsize": 7.0,
     "fontface": 0,
     "textcolor": [
      0.803921568627451,
      0.7333333333333333,
      0.5725490196078431,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_213"
    }
   },
   {
    "box": {
     "id": "obj-214",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      5820,
      300,
      60,
      15
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1266,
      147,
      60,
      15
     ],
     "parameter_enable": 1,
     "varname": "slider_min_ms",
     "activebgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "bgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "textcolor": [
      0.9411764705882353,
      0.6509803921568628,
      0.25098039215686274,
      1.0
     ],
     "tricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "activetricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "fontsize": 9.0,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Slider Min",
       "parameter_shortname": "SlideMin",
       "parameter_type": 0,
       "parameter_mmin": 2,
       "parameter_mmax": 2000,
       "parameter_initial": [
        60
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 2,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-215",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5820,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend slider_min_ms"
    }
   },
   {
    "box": {
     "id": "obj-216",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      5938,
      300,
      70,
      15
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1330,
      147,
      70,
      15
     ],
     "parameter_enable": 1,
     "varname": "slider_max_ms",
     "activebgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "bgcolor": [
      0.043137254901960784,
      0.047058823529411764,
      0.054901960784313725,
      1.0
     ],
     "textcolor": [
      0.9411764705882353,
      0.6509803921568628,
      0.25098039215686274,
      1.0
     ],
     "tricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "activetricolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "fontsize": 9.0,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Slider Max",
       "parameter_shortname": "SlideMax",
       "parameter_type": 0,
       "parameter_mmin": 2,
       "parameter_mmax": 4000,
       "parameter_initial": [
        600
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 2,
       "parameter_invisible": 0,
       "parameter_modmode": 3
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-217",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5938,
      380,
      110,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend slider_max_ms"
    }
   },
   {
    "box": {
     "id": "obj-218",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1400,
      764.1,
      80,
      16
     ],
     "text": "THEME",
     "presentation": 1,
     "presentation_rect": [
      1278.0,
      1,
      30,
      12
     ],
     "fontsize": 7.0,
     "fontface": 0,
     "textcolor": [
      0.5529411764705883,
      0.5294117647058824,
      0.47058823529411764,
      1.0
     ],
     "textjustification": 0,
     "background": 1,
     "varname": "thm_obj_218"
    }
   },
   {
    "box": {
     "id": "obj-219",
     "maxclass": "live.tab",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      6056,
      300,
      96,
      13
     ],
     "outlettype": [
      "",
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1308.0,
      0,
      96,
      13
     ],
     "parameter_enable": 1,
     "varname": "ui_theme",
     "num_lines_patching": 1,
     "num_lines_presentation": 1,
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "UI Theme",
       "parameter_shortname": "Theme",
       "parameter_type": 2,
       "parameter_mmin": 0,
       "parameter_mmax": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 9,
       "parameter_invisible": 1,
       "parameter_enum": [
        "EMBER",
        "EL"
       ]
      }
     },
     "bgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "bgoncolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "activebgcolor": [
      0.18823529411764706,
      0.20392156862745098,
      0.22745098039215686,
      1.0
     ],
     "activebgoncolor": [
      0.8901960784313725,
      0.6078431372549019,
      0.23529411764705882,
      1.0
     ],
     "textcolor": [
      0.8117647058823529,
      0.7843137254901961,
      0.7215686274509804,
      1.0
     ],
     "textoncolor": [
      0.07058823529411765,
      0.07450980392156863,
      0.08235294117647059,
      1.0
     ],
     "bordercolor": [
      0.22745098039215686,
      0.24313725490196078,
      0.26666666666666666,
      1.0
     ],
     "fontsize": 7.0,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-220",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 3,
     "patching_rect": [
      1620,
      300,
      60,
      22
     ],
     "outlettype": [
      "bang",
      "bang",
      ""
     ],
     "text": "sel 0 1"
    }
   },
   {
    "box": {
     "id": "obj-221",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1620,
      420,
      80,
      22
     ],
     "outlettype": [
      "",
      ""
     ],
     "text": "thispatcher"
    }
   },
   {
    "box": {
     "id": "obj-222",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      1620,
      240,
      90,
      22
     ],
     "outlettype": [
      "bang",
      "int",
      "int"
     ],
     "text": "live.thisdevice"
    }
   },
   {
    "box": {
     "id": "obj-223",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1620,
      340,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox thm_obj_4 bgcolor 0.08627 0.09412 0.1059 1, script sendbox thm_obj_5 textcolor 0.9373 0.902 0.8235 1, script sendbox thm_obj_6 textcolor 0.8902 0.6078 0.2353 1, script sendbox thm_obj_7 textcolor 0.5529 0.5294 0.4706 1, script sendbox thm_obj_8 bgcolor 0.1412 0.1529 0.1686 1, script sendbox thm_obj_8 bordercolor 0.2275 0.2431 0.2667 1, script sendbox thm_obj_9 bgcolor 0.9137 0.8745 0.7765 1, script sendbox thm_obj_10 textcolor 0.8039 0.7333 0.5725 1, script sendbox thm_obj_11 bgcolor 0.1412 0.1529 0.1686 1, script sendbox thm_obj_11 bordercolor 0.2275 0.2431 0.2667 1, script sendbox thm_obj_12 bgcolor 0.8902 0.6078 0.2353 1, script sendbox thm_obj_13 textcolor 0.8039 0.7333 0.5725 1, script sendbox thm_obj_14 bgcolor 0.1412 0.1529 0.1686 1, script sendbox thm_obj_14 bordercolor 0.2275 0.2431 0.2667 1, script sendbox thm_obj_15 bgcolor 0.8784 0.3451 0.2353 1, script sendbox thm_obj_16 textcolor 0.8039 0.7333 0.5725 1, script sendbox thm_obj_17 bgcolor 0.1412 0.1529 0.1686 1, script sendbox thm_obj_17 bordercolor 0.2275 0.2431 0.2667 1, script sendbox thm_obj_18 bgcolor 0.8902 0.6078 0.2353 1, script sendbox thm_obj_19 textcolor 0.8039 0.7333 0.5725 1, script sendbox thm_obj_20 bgcolor 0.1412 0.1529 0.1686 1, script sendbox thm_obj_20 bordercolor 0.2275 0.2431 0.2667 1, script sendbox thm_obj_21 bgcolor 0.8902 0.6078 0.2353 1, script sendbox thm_obj_22 textcolor 0.8039 0.7333 0.5725 1, script sendbox thm_obj_23 bgcolor 0.1412 0.1529 0.1686 1, script sendbox thm_obj_23 bordercolor 0.2275 0.2431 0.2667 1, script sendbox thm_obj_24 bgcolor 0.3647 0.702 0.6471 1, script sendbox thm_obj_25 textcolor 0.8039 0.7333 0.5725 1, script sendbox thm_obj_26 bgcolor 0.1412 0.1529 0.1686 1, script sendbox thm_obj_26 bordercolor 0.2275 0.2431 0.2667 1, script sendbox thm_obj_27 bgcolor 0.9137 0.8745 0.7765 1, script sendbox thm_obj_28 textcolor 0.8039 0.7333 0.5725 1, script sendbox thm_obj_29 bgcolor 0.1412 0.1529 0.1686 1, script sendbox thm_obj_29 bordercolor 0.2275 0.2431 0.2667 1, script sendbox thm_obj_30 bgcolor 0.5529 0.5294 0.4706 1, script sendbox thm_obj_31 textcolor 0.8039 0.7333 0.5725 1, script sendbox in_gain_db activedialcolor 0.9137 0.8745 0.7765 1, script sendbox in_gain_db dialcolor 0.2314 0.251 0.2745 1, script sendbox in_gain_db activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox in_gain_db needlecolor 0.9373 0.902 0.8235 1"
    }
   },
   {
    "box": {
     "id": "obj-224",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1620,
      420,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox in_gain_db textcolor 0.8118 0.7843 0.7216 1, script sendbox thm_obj_34 coldcolor 0.3647 0.702 0.6471 1, script sendbox thm_obj_34 warmcolor 0.8902 0.6078 0.2353 1, script sendbox thm_obj_34 hotcolor 0.8784 0.3451 0.2353 1, script sendbox thm_obj_34 overloadcolor 0.8784 0.3451 0.2353 1, script sendbox thm_obj_34 bgcolor 0.04314 0.04706 0.0549 1, script sendbox thm_obj_35 coldcolor 0.3647 0.702 0.6471 1, script sendbox thm_obj_35 warmcolor 0.8902 0.6078 0.2353 1, script sendbox thm_obj_35 hotcolor 0.8784 0.3451 0.2353 1, script sendbox thm_obj_35 overloadcolor 0.8784 0.3451 0.2353 1, script sendbox thm_obj_35 bgcolor 0.04314 0.04706 0.0549 1, script sendbox mode bgcolor 0.1882 0.2039 0.2275 1, script sendbox mode bgoncolor 0.8902 0.6078 0.2353 1, script sendbox mode activebgcolor 0.1882 0.2039 0.2275 1, script sendbox mode activebgoncolor 0.8902 0.6078 0.2353 1, script sendbox mode textcolor 0.8118 0.7843 0.7216 1, script sendbox mode textoncolor 0.07059 0.07451 0.08235 1, script sendbox mode bordercolor 0.2275 0.2431 0.2667 1, script sendbox tap_button bgcolor 0.1882 0.2039 0.2275 1, script sendbox tap_button bgoncolor 0.8902 0.6078 0.2353 1, script sendbox tap_button activebgcolor 0.1882 0.2039 0.2275 1, script sendbox tap_button activebgoncolor 0.8902 0.6078 0.2353 1, script sendbox tap_button textcolor 0.9373 0.902 0.8235 1, script sendbox tap_button textoncolor 0.07059 0.07451 0.08235 1, script sendbox tap_button bordercolor 0.8902 0.6078 0.2353 1, script sendbox slider_pos slidercolor 0.2314 0.251 0.2745 1, script sendbox slider_pos activeslidercolor 0.8902 0.6078 0.2353 1, script sendbox slider_pos tribordercolor 0.9373 0.902 0.8235 1, script sendbox slider_pos trioncolor 0.9373 0.902 0.8235 1, script sendbox slider_pos tricolor 0.9373 0.902 0.8235 1, script sendbox slider_pos textcolor 0.8118 0.7843 0.7216 1, script sendbox thm_obj_46 bgcolor 0.04314 0.04706 0.0549 1, script sendbox thm_obj_46 textcolor 0.9412 0.651 0.251 1, script sendbox thm_obj_46 bordercolor 0.2275 0.2431 0.2667 1, script sendbox thm_obj_47 textcolor 0.8039 0.7333 0.5725 1, script sendbox thm_obj_49 bgcolor 0.04314 0.04706 0.0549 1, script sendbox thm_obj_49 textcolor 0.9412 0.651 0.251 1, script sendbox thm_obj_49 bordercolor 0.2275 0.2431 0.2667 1, script sendbox thm_obj_50 textcolor 0.8039 0.7333 0.5725 1, script sendbox thm_obj_51 textcolor 0.8039 0.7333 0.5725 1"
    }
   },
   {
    "box": {
     "id": "obj-225",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1620,
      500,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox sync_div bgcolor 0.1882 0.2039 0.2275 1, script sendbox sync_div textcolor 0.8118 0.7843 0.7216 1, script sendbox sync_div activebgcolor 0.1882 0.2039 0.2275 1, script sendbox sync_div tricolor 0.8902 0.6078 0.2353 1, script sendbox sync_type bgcolor 0.1882 0.2039 0.2275 1, script sendbox sync_type bgoncolor 0.8902 0.6078 0.2353 1, script sendbox sync_type activebgcolor 0.1882 0.2039 0.2275 1, script sendbox sync_type activebgoncolor 0.8902 0.6078 0.2353 1, script sendbox sync_type textcolor 0.8118 0.7843 0.7216 1, script sendbox sync_type textoncolor 0.07059 0.07451 0.08235 1, script sendbox sync_type bordercolor 0.2275 0.2431 0.2667 1, script sendbox sync_mult activebgcolor 0.04314 0.04706 0.0549 1, script sendbox sync_mult bgcolor 0.04314 0.04706 0.0549 1, script sendbox sync_mult textcolor 0.9412 0.651 0.251 1, script sendbox sync_mult tricolor 0.8902 0.6078 0.2353 1, script sendbox sync_mult activetricolor 0.8902 0.6078 0.2353 1, script sendbox thm_obj_58 textcolor 0.8039 0.7333 0.5725 1, script sendbox tap_div bgcolor 0.1882 0.2039 0.2275 1, script sendbox tap_div textcolor 0.8118 0.7843 0.7216 1, script sendbox tap_div activebgcolor 0.1882 0.2039 0.2275 1, script sendbox tap_div tricolor 0.8902 0.6078 0.2353 1, script sendbox tap_type bgcolor 0.1882 0.2039 0.2275 1, script sendbox tap_type bgoncolor 0.8902 0.6078 0.2353 1, script sendbox tap_type activebgcolor 0.1882 0.2039 0.2275 1, script sendbox tap_type activebgoncolor 0.8902 0.6078 0.2353 1, script sendbox tap_type textcolor 0.8118 0.7843 0.7216 1, script sendbox tap_type textoncolor 0.07059 0.07451 0.08235 1, script sendbox tap_type bordercolor 0.2275 0.2431 0.2667 1, script sendbox offset_ms activedialcolor 0.8902 0.6078 0.2353 1, script sendbox offset_ms dialcolor 0.2314 0.251 0.2745 1, script sendbox offset_ms activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox offset_ms needlecolor 0.9373 0.902 0.8235 1, script sendbox offset_ms textcolor 0.8118 0.7843 0.7216 1, script sendbox glide_ms activedialcolor 0.8902 0.6078 0.2353 1, script sendbox glide_ms dialcolor 0.2314 0.251 0.2745 1, script sendbox glide_ms activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox glide_ms needlecolor 0.9373 0.902 0.8235 1, script sendbox glide_ms textcolor 0.8118 0.7843 0.7216 1, script sendbox thm_obj_67 textcolor 0.5529 0.5294 0.4706 1, script sendbox hold_mom bgcolor 0.1882 0.2039 0.2275 1"
    }
   },
   {
    "box": {
     "id": "obj-226",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1620,
      580,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox hold_mom bgoncolor 0.8784 0.3451 0.2353 1, script sendbox hold_mom activebgcolor 0.1882 0.2039 0.2275 1, script sendbox hold_mom activebgoncolor 0.8784 0.3451 0.2353 1, script sendbox hold_mom textcolor 0.8118 0.7843 0.7216 1, script sendbox hold_mom textoncolor 0.07059 0.07451 0.08235 1, script sendbox hold_mom activetextcolor 0.8118 0.7843 0.7216 1, script sendbox hold_mom activetextoncolor 0.07059 0.07451 0.08235 1, script sendbox hold_mom bordercolor 0.2275 0.2431 0.2667 1, script sendbox hold_latch bgcolor 0.1882 0.2039 0.2275 1, script sendbox hold_latch bgoncolor 0.8784 0.3451 0.2353 1, script sendbox hold_latch activebgcolor 0.1882 0.2039 0.2275 1, script sendbox hold_latch activebgoncolor 0.8784 0.3451 0.2353 1, script sendbox hold_latch textcolor 0.8118 0.7843 0.7216 1, script sendbox hold_latch textoncolor 0.07059 0.07451 0.08235 1, script sendbox hold_latch activetextcolor 0.8118 0.7843 0.7216 1, script sendbox hold_latch activetextoncolor 0.07059 0.07451 0.08235 1, script sendbox hold_latch bordercolor 0.2275 0.2431 0.2667 1, script sendbox drive_mom bgcolor 0.1882 0.2039 0.2275 1, script sendbox drive_mom bgoncolor 0.8902 0.6078 0.2353 1, script sendbox drive_mom activebgcolor 0.1882 0.2039 0.2275 1, script sendbox drive_mom activebgoncolor 0.8902 0.6078 0.2353 1, script sendbox drive_mom textcolor 0.8118 0.7843 0.7216 1, script sendbox drive_mom textoncolor 0.07059 0.07451 0.08235 1, script sendbox drive_mom activetextcolor 0.8118 0.7843 0.7216 1, script sendbox drive_mom activetextoncolor 0.07059 0.07451 0.08235 1, script sendbox drive_mom bordercolor 0.2275 0.2431 0.2667 1, script sendbox drive_latch bgcolor 0.1882 0.2039 0.2275 1, script sendbox drive_latch bgoncolor 0.8902 0.6078 0.2353 1, script sendbox drive_latch activebgcolor 0.1882 0.2039 0.2275 1, script sendbox drive_latch activebgoncolor 0.8902 0.6078 0.2353 1, script sendbox drive_latch textcolor 0.8118 0.7843 0.7216 1, script sendbox drive_latch textoncolor 0.07059 0.07451 0.08235 1, script sendbox drive_latch activetextcolor 0.8118 0.7843 0.7216 1, script sendbox drive_latch activetextoncolor 0.07059 0.07451 0.08235 1, script sendbox drive_latch bordercolor 0.2275 0.2431 0.2667 1, script sendbox tape_stop_mom bgcolor 0.1882 0.2039 0.2275 1, script sendbox tape_stop_mom bgoncolor 0.3647 0.702 0.6471 1, script sendbox tape_stop_mom activebgcolor 0.1882 0.2039 0.2275 1, script sendbox tape_stop_mom activebgoncolor 0.3647 0.702 0.6471 1, script sendbox tape_stop_mom textcolor 0.8118 0.7843 0.7216 1"
    }
   },
   {
    "box": {
     "id": "obj-227",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1620,
      660,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox tape_stop_mom textoncolor 0.07059 0.07451 0.08235 1, script sendbox tape_stop_mom activetextcolor 0.8118 0.7843 0.7216 1, script sendbox tape_stop_mom activetextoncolor 0.07059 0.07451 0.08235 1, script sendbox tape_stop_mom bordercolor 0.2275 0.2431 0.2667 1, script sendbox tape_stop_latch bgcolor 0.1882 0.2039 0.2275 1, script sendbox tape_stop_latch bgoncolor 0.3647 0.702 0.6471 1, script sendbox tape_stop_latch activebgcolor 0.1882 0.2039 0.2275 1, script sendbox tape_stop_latch activebgoncolor 0.3647 0.702 0.6471 1, script sendbox tape_stop_latch textcolor 0.8118 0.7843 0.7216 1, script sendbox tape_stop_latch textoncolor 0.07059 0.07451 0.08235 1, script sendbox tape_stop_latch activetextcolor 0.8118 0.7843 0.7216 1, script sendbox tape_stop_latch activetextoncolor 0.07059 0.07451 0.08235 1, script sendbox tape_stop_latch bordercolor 0.2275 0.2431 0.2667 1, script sendbox thm_obj_119 textcolor 0.5529 0.5294 0.4706 1, script sendbox thm_obj_120 textcolor 0.5529 0.5294 0.4706 1, script sendbox thm_obj_121 textcolor 0.5529 0.5294 0.4706 1, script sendbox drive_db activebgcolor 0.04314 0.04706 0.0549 1, script sendbox drive_db bgcolor 0.04314 0.04706 0.0549 1, script sendbox drive_db textcolor 0.9412 0.651 0.251 1, script sendbox drive_db tricolor 0.8902 0.6078 0.2353 1, script sendbox drive_db activetricolor 0.8902 0.6078 0.2353 1, script sendbox stop_time activebgcolor 0.04314 0.04706 0.0549 1, script sendbox stop_time bgcolor 0.04314 0.04706 0.0549 1, script sendbox stop_time textcolor 0.9412 0.651 0.251 1, script sendbox stop_time tricolor 0.8902 0.6078 0.2353 1, script sendbox stop_time activetricolor 0.8902 0.6078 0.2353 1, script sendbox start_time activebgcolor 0.04314 0.04706 0.0549 1, script sendbox start_time bgcolor 0.04314 0.04706 0.0549 1, script sendbox start_time textcolor 0.9412 0.651 0.251 1, script sendbox start_time tricolor 0.8902 0.6078 0.2353 1, script sendbox start_time activetricolor 0.8902 0.6078 0.2353 1, script sendbox sustain activedialcolor 0.8784 0.3451 0.2353 1, script sendbox sustain dialcolor 0.2314 0.251 0.2745 1, script sendbox sustain activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox sustain needlecolor 0.9373 0.902 0.8235 1, script sendbox sustain textcolor 0.8118 0.7843 0.7216 1, script sendbox echo activedialcolor 0.8902 0.6078 0.2353 1, script sendbox echo dialcolor 0.2314 0.251 0.2745 1, script sendbox echo activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox echo needlecolor 0.9373 0.902 0.8235 1"
    }
   },
   {
    "box": {
     "id": "obj-228",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1620,
      740,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox echo textcolor 0.8118 0.7843 0.7216 1, script sendbox rec_db activedialcolor 0.9137 0.8745 0.7765 1, script sendbox rec_db dialcolor 0.2314 0.251 0.2745 1, script sendbox rec_db activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox rec_db needlecolor 0.9373 0.902 0.8235 1, script sendbox rec_db textcolor 0.8118 0.7843 0.7216 1, script sendbox thm_obj_134 textcolor 0.5529 0.5294 0.4706 1, script sendbox sos bgcolor 0.1882 0.2039 0.2275 1, script sendbox sos bgoncolor 0.8902 0.6078 0.2353 1, script sendbox sos activebgcolor 0.1882 0.2039 0.2275 1, script sendbox sos activebgoncolor 0.8902 0.6078 0.2353 1, script sendbox sos textcolor 0.8118 0.7843 0.7216 1, script sendbox sos textoncolor 0.07059 0.07451 0.08235 1, script sendbox sos bordercolor 0.2275 0.2431 0.2667 1, script sendbox thm_obj_137 textcolor 0.8039 0.7333 0.5725 1, script sendbox echo_on bgcolor 0.1882 0.2039 0.2275 1, script sendbox echo_on bgoncolor 0.8902 0.6078 0.2353 1, script sendbox echo_on activebgcolor 0.1882 0.2039 0.2275 1, script sendbox echo_on activebgoncolor 0.8902 0.6078 0.2353 1, script sendbox echo_on textcolor 0.8118 0.7843 0.7216 1, script sendbox echo_on textoncolor 0.07059 0.07451 0.08235 1, script sendbox echo_on activetextcolor 0.8118 0.7843 0.7216 1, script sendbox echo_on activetextoncolor 0.07059 0.07451 0.08235 1, script sendbox echo_on bordercolor 0.2275 0.2431 0.2667 1, script sendbox playback bgcolor 0.1882 0.2039 0.2275 1, script sendbox playback bgoncolor 0.8784 0.3451 0.2353 1, script sendbox playback activebgcolor 0.1882 0.2039 0.2275 1, script sendbox playback activebgoncolor 0.8784 0.3451 0.2353 1, script sendbox playback textcolor 0.8118 0.7843 0.7216 1, script sendbox playback textoncolor 0.07059 0.07451 0.08235 1, script sendbox playback activetextcolor 0.8118 0.7843 0.7216 1, script sendbox playback activetextoncolor 0.07059 0.07451 0.08235 1, script sendbox playback bordercolor 0.2275 0.2431 0.2667 1, script sendbox thm_obj_142 textcolor 0.5529 0.5294 0.4706 1, script sendbox sos_db activebgcolor 0.04314 0.04706 0.0549 1, script sendbox sos_db bgcolor 0.04314 0.04706 0.0549 1, script sendbox sos_db textcolor 0.9412 0.651 0.251 1, script sendbox sos_db tricolor 0.8902 0.6078 0.2353 1, script sendbox sos_db activetricolor 0.8902 0.6078 0.2353 1, script sendbox thm_obj_145 textcolor 0.5529 0.5294 0.4706 1"
    }
   },
   {
    "box": {
     "id": "obj-229",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1620,
      820,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox loop_s activebgcolor 0.04314 0.04706 0.0549 1, script sendbox loop_s bgcolor 0.04314 0.04706 0.0549 1, script sendbox loop_s textcolor 0.9412 0.651 0.251 1, script sendbox loop_s tricolor 0.8902 0.6078 0.2353 1, script sendbox loop_s activetricolor 0.8902 0.6078 0.2353 1, script sendbox sat activedialcolor 0.8902 0.6078 0.2353 1, script sendbox sat dialcolor 0.2314 0.251 0.2745 1, script sendbox sat activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox sat needlecolor 0.9373 0.902 0.8235 1, script sendbox sat textcolor 0.8118 0.7843 0.7216 1, script sendbox wow activedialcolor 0.8902 0.6078 0.2353 1, script sendbox wow dialcolor 0.2314 0.251 0.2745 1, script sendbox wow activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox wow needlecolor 0.9373 0.902 0.8235 1, script sendbox wow textcolor 0.8118 0.7843 0.7216 1, script sendbox flutter activedialcolor 0.8902 0.6078 0.2353 1, script sendbox flutter dialcolor 0.2314 0.251 0.2745 1, script sendbox flutter activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox flutter needlecolor 0.9373 0.902 0.8235 1, script sendbox flutter textcolor 0.8118 0.7843 0.7216 1, script sendbox noise_db activedialcolor 0.8902 0.6078 0.2353 1, script sendbox noise_db dialcolor 0.2314 0.251 0.2745 1, script sendbox noise_db activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox noise_db needlecolor 0.9373 0.902 0.8235 1, script sendbox noise_db textcolor 0.8118 0.7843 0.7216 1, script sendbox bias_leak activedialcolor 0.8902 0.6078 0.2353 1, script sendbox bias_leak dialcolor 0.2314 0.251 0.2745 1, script sendbox bias_leak activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox bias_leak needlecolor 0.9373 0.902 0.8235 1, script sendbox bias_leak textcolor 0.8118 0.7843 0.7216 1, script sendbox thm_obj_158 textcolor 0.5529 0.5294 0.4706 1, script sendbox bias_khz activebgcolor 0.04314 0.04706 0.0549 1, script sendbox bias_khz bgcolor 0.04314 0.04706 0.0549 1, script sendbox bias_khz textcolor 0.9412 0.651 0.251 1, script sendbox bias_khz tricolor 0.8902 0.6078 0.2353 1, script sendbox bias_khz activetricolor 0.8902 0.6078 0.2353 1, script sendbox thm_obj_161 textcolor 0.5529 0.5294 0.4706 1, script sendbox thm_obj_162 textcolor 0.3647 0.702 0.6471 1, script sendbox fb_hp_hz activedialcolor 0.3647 0.702 0.6471 1, script sendbox fb_hp_hz dialcolor 0.2314 0.251 0.2745 1"
    }
   },
   {
    "box": {
     "id": "obj-230",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1620,
      900,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox fb_hp_hz activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox fb_hp_hz needlecolor 0.9373 0.902 0.8235 1, script sendbox fb_hp_hz textcolor 0.8118 0.7843 0.7216 1, script sendbox fb_lp_hz activedialcolor 0.3647 0.702 0.6471 1, script sendbox fb_lp_hz dialcolor 0.2314 0.251 0.2745 1, script sendbox fb_lp_hz activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox fb_lp_hz needlecolor 0.9373 0.902 0.8235 1, script sendbox fb_lp_hz textcolor 0.8118 0.7843 0.7216 1, script sendbox fb_res activedialcolor 0.3647 0.702 0.6471 1, script sendbox fb_res dialcolor 0.2314 0.251 0.2745 1, script sendbox fb_res activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox fb_res needlecolor 0.9373 0.902 0.8235 1, script sendbox fb_res textcolor 0.8118 0.7843 0.7216 1, script sendbox thm_obj_169 textcolor 0.3647 0.702 0.6471 1, script sendbox echo_hp_hz activedialcolor 0.3647 0.702 0.6471 1, script sendbox echo_hp_hz dialcolor 0.2314 0.251 0.2745 1, script sendbox echo_hp_hz activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox echo_hp_hz needlecolor 0.9373 0.902 0.8235 1, script sendbox echo_hp_hz textcolor 0.8118 0.7843 0.7216 1, script sendbox echo_lp_hz activedialcolor 0.3647 0.702 0.6471 1, script sendbox echo_lp_hz dialcolor 0.2314 0.251 0.2745 1, script sendbox echo_lp_hz activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox echo_lp_hz needlecolor 0.9373 0.902 0.8235 1, script sendbox echo_lp_hz textcolor 0.8118 0.7843 0.7216 1, script sendbox dry activedialcolor 0.9137 0.8745 0.7765 1, script sendbox dry dialcolor 0.2314 0.251 0.2745 1, script sendbox dry activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox dry needlecolor 0.9373 0.902 0.8235 1, script sendbox dry textcolor 0.8118 0.7843 0.7216 1, script sendbox echo_trim_db activedialcolor 0.8902 0.6078 0.2353 1, script sendbox echo_trim_db dialcolor 0.2314 0.251 0.2745 1, script sendbox echo_trim_db activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox echo_trim_db needlecolor 0.9373 0.902 0.8235 1, script sendbox echo_trim_db textcolor 0.8118 0.7843 0.7216 1, script sendbox out_db activedialcolor 0.9137 0.8745 0.7765 1, script sendbox out_db dialcolor 0.2314 0.251 0.2745 1, script sendbox out_db activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox out_db needlecolor 0.9373 0.902 0.8235 1, script sendbox out_db textcolor 0.8118 0.7843 0.7216 1, script sendbox ceiling_db activedialcolor 0.9137 0.8745 0.7765 1"
    }
   },
   {
    "box": {
     "id": "obj-231",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1620,
      980,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox ceiling_db dialcolor 0.2314 0.251 0.2745 1, script sendbox ceiling_db activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox ceiling_db needlecolor 0.9373 0.902 0.8235 1, script sendbox ceiling_db textcolor 0.8118 0.7843 0.7216 1, script sendbox thm_obj_182 coldcolor 0.3647 0.702 0.6471 1, script sendbox thm_obj_182 warmcolor 0.8902 0.6078 0.2353 1, script sendbox thm_obj_182 hotcolor 0.8784 0.3451 0.2353 1, script sendbox thm_obj_182 overloadcolor 0.8784 0.3451 0.2353 1, script sendbox thm_obj_182 bgcolor 0.04314 0.04706 0.0549 1, script sendbox thm_obj_183 coldcolor 0.3647 0.702 0.6471 1, script sendbox thm_obj_183 warmcolor 0.8902 0.6078 0.2353 1, script sendbox thm_obj_183 hotcolor 0.8784 0.3451 0.2353 1, script sendbox thm_obj_183 overloadcolor 0.8784 0.3451 0.2353 1, script sendbox thm_obj_183 bgcolor 0.04314 0.04706 0.0549 1, script sendbox thm_obj_184 textcolor 0.5529 0.5294 0.4706 1, script sendbox protect bgcolor 0.1882 0.2039 0.2275 1, script sendbox protect bgoncolor 0.9137 0.8745 0.7765 1, script sendbox protect activebgcolor 0.1882 0.2039 0.2275 1, script sendbox protect activebgoncolor 0.9137 0.8745 0.7765 1, script sendbox protect textcolor 0.8118 0.7843 0.7216 1, script sendbox protect textoncolor 0.07059 0.07451 0.08235 1, script sendbox protect activetextcolor 0.8118 0.7843 0.7216 1, script sendbox protect activetextoncolor 0.07059 0.07451 0.08235 1, script sendbox protect bordercolor 0.2275 0.2431 0.2667 1, script sendbox thm_obj_190 bgcolor 0.04314 0.04706 0.0549 1, script sendbox thm_obj_190 textcolor 0.9412 0.651 0.251 1, script sendbox thm_obj_191 textcolor 0.5529 0.5294 0.4706 1, script sendbox thm_obj_194 oncolor 0.8784 0.3451 0.2353 1, script sendbox thm_obj_194 offcolor 0.2314 0.251 0.2745 1, script sendbox thm_obj_195 textcolor 0.5529 0.5294 0.4706 1, script sendbox thm_obj_196 textcolor 0.8039 0.7333 0.5725 1, script sendbox pre_bypass bgcolor 0.1882 0.2039 0.2275 1, script sendbox pre_bypass bgoncolor 0.9137 0.8745 0.7765 1, script sendbox pre_bypass activebgcolor 0.1882 0.2039 0.2275 1, script sendbox pre_bypass activebgoncolor 0.9137 0.8745 0.7765 1, script sendbox pre_bypass textcolor 0.8118 0.7843 0.7216 1, script sendbox pre_bypass textoncolor 0.07059 0.07451 0.08235 1, script sendbox pre_bypass bordercolor 0.2275 0.2431 0.2667 1, script sendbox drive_fb bgcolor 0.1882 0.2039 0.2275 1, script sendbox drive_fb bgoncolor 0.8902 0.6078 0.2353 1"
    }
   },
   {
    "box": {
     "id": "obj-232",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1620,
      1060,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox drive_fb activebgcolor 0.1882 0.2039 0.2275 1, script sendbox drive_fb activebgoncolor 0.8902 0.6078 0.2353 1, script sendbox drive_fb textcolor 0.8118 0.7843 0.7216 1, script sendbox drive_fb textoncolor 0.07059 0.07451 0.08235 1, script sendbox drive_fb activetextcolor 0.8118 0.7843 0.7216 1, script sendbox drive_fb activetextoncolor 0.07059 0.07451 0.08235 1, script sendbox drive_fb bordercolor 0.2275 0.2431 0.2667 1, script sendbox thm_obj_201 textcolor 0.8039 0.7333 0.5725 1, script sendbox pb_eq bgcolor 0.1882 0.2039 0.2275 1, script sendbox pb_eq bgoncolor 0.9137 0.8745 0.7765 1, script sendbox pb_eq activebgcolor 0.1882 0.2039 0.2275 1, script sendbox pb_eq activebgoncolor 0.9137 0.8745 0.7765 1, script sendbox pb_eq textcolor 0.8118 0.7843 0.7216 1, script sendbox pb_eq textoncolor 0.07059 0.07451 0.08235 1, script sendbox pb_eq bordercolor 0.2275 0.2431 0.2667 1, script sendbox thm_obj_204 textcolor 0.8039 0.7333 0.5725 1, script sendbox cable_pf activebgcolor 0.04314 0.04706 0.0549 1, script sendbox cable_pf bgcolor 0.04314 0.04706 0.0549 1, script sendbox cable_pf textcolor 0.9412 0.651 0.251 1, script sendbox cable_pf tricolor 0.8902 0.6078 0.2353 1, script sendbox cable_pf activetricolor 0.8902 0.6078 0.2353 1, script sendbox head_slew activedialcolor 0.5529 0.5294 0.4706 1, script sendbox head_slew dialcolor 0.2314 0.251 0.2745 1, script sendbox head_slew activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox head_slew needlecolor 0.9373 0.902 0.8235 1, script sendbox head_slew textcolor 0.8118 0.7843 0.7216 1, script sendbox transition_ms activedialcolor 0.5529 0.5294 0.4706 1, script sendbox transition_ms dialcolor 0.2314 0.251 0.2745 1, script sendbox transition_ms activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox transition_ms needlecolor 0.9373 0.902 0.8235 1, script sendbox transition_ms textcolor 0.8118 0.7843 0.7216 1, script sendbox hold_fb activedialcolor 0.5529 0.5294 0.4706 1, script sendbox hold_fb dialcolor 0.2314 0.251 0.2745 1, script sendbox hold_fb activeneedlecolor 0.9373 0.902 0.8235 1, script sendbox hold_fb needlecolor 0.9373 0.902 0.8235 1, script sendbox hold_fb textcolor 0.8118 0.7843 0.7216 1, script sendbox thm_obj_213 textcolor 0.8039 0.7333 0.5725 1, script sendbox slider_min_ms activebgcolor 0.04314 0.04706 0.0549 1, script sendbox slider_min_ms bgcolor 0.04314 0.04706 0.0549 1, script sendbox slider_min_ms textcolor 0.9412 0.651 0.251 1"
    }
   },
   {
    "box": {
     "id": "obj-233",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1620,
      1140,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox slider_min_ms tricolor 0.8902 0.6078 0.2353 1, script sendbox slider_min_ms activetricolor 0.8902 0.6078 0.2353 1, script sendbox slider_max_ms activebgcolor 0.04314 0.04706 0.0549 1, script sendbox slider_max_ms bgcolor 0.04314 0.04706 0.0549 1, script sendbox slider_max_ms textcolor 0.9412 0.651 0.251 1, script sendbox slider_max_ms tricolor 0.8902 0.6078 0.2353 1, script sendbox slider_max_ms activetricolor 0.8902 0.6078 0.2353 1, script sendbox thm_obj_218 textcolor 0.5529 0.5294 0.4706 1, script sendbox ui_theme bgcolor 0.1882 0.2039 0.2275 1, script sendbox ui_theme bgoncolor 0.8902 0.6078 0.2353 1, script sendbox ui_theme activebgcolor 0.1882 0.2039 0.2275 1, script sendbox ui_theme activebgoncolor 0.8902 0.6078 0.2353 1, script sendbox ui_theme textcolor 0.8118 0.7843 0.7216 1, script sendbox ui_theme textoncolor 0.07059 0.07451 0.08235 1, script sendbox ui_theme bordercolor 0.2275 0.2431 0.2667 1"
    }
   },
   {
    "box": {
     "id": "obj-234",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1780,
      340,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox thm_obj_4 bgcolor 0.04706 0.06275 0.05882 1, script sendbox thm_obj_5 textcolor 0.8745 0.898 0.9059 1, script sendbox thm_obj_6 textcolor 0.4353 0.9412 0.7059 1, script sendbox thm_obj_7 textcolor 0.4235 0.4784 0.4627 1, script sendbox thm_obj_8 bgcolor 0.08627 0.1137 0.1098 1, script sendbox thm_obj_8 bordercolor 0.2745 0.3137 0.3098 1, script sendbox thm_obj_9 bgcolor 0.7647 0.7961 0.8157 1, script sendbox thm_obj_10 textcolor 0.4745 0.9098 0.7412 1, script sendbox thm_obj_11 bgcolor 0.08627 0.1137 0.1098 1, script sendbox thm_obj_11 bordercolor 0.2745 0.3137 0.3098 1, script sendbox thm_obj_12 bgcolor 0.4353 0.9412 0.7059 1, script sendbox thm_obj_13 textcolor 0.4745 0.9098 0.7412 1, script sendbox thm_obj_14 bgcolor 0.08627 0.1137 0.1098 1, script sendbox thm_obj_14 bordercolor 0.2745 0.3137 0.3098 1, script sendbox thm_obj_15 bgcolor 0.7059 1 0.8784 1, script sendbox thm_obj_16 textcolor 0.4745 0.9098 0.7412 1, script sendbox thm_obj_17 bgcolor 0.08627 0.1137 0.1098 1, script sendbox thm_obj_17 bordercolor 0.2745 0.3137 0.3098 1, script sendbox thm_obj_18 bgcolor 0.4353 0.9412 0.7059 1, script sendbox thm_obj_19 textcolor 0.4745 0.9098 0.7412 1, script sendbox thm_obj_20 bgcolor 0.08627 0.1137 0.1098 1, script sendbox thm_obj_20 bordercolor 0.2745 0.3137 0.3098 1, script sendbox thm_obj_21 bgcolor 0.4353 0.9412 0.7059 1, script sendbox thm_obj_22 textcolor 0.4745 0.9098 0.7412 1, script sendbox thm_obj_23 bgcolor 0.08627 0.1137 0.1098 1, script sendbox thm_obj_23 bordercolor 0.2745 0.3137 0.3098 1, script sendbox thm_obj_24 bgcolor 0.3373 0.8275 0.7765 1, script sendbox thm_obj_25 textcolor 0.4745 0.9098 0.7412 1, script sendbox thm_obj_26 bgcolor 0.08627 0.1137 0.1098 1, script sendbox thm_obj_26 bordercolor 0.2745 0.3137 0.3098 1, script sendbox thm_obj_27 bgcolor 0.7647 0.7961 0.8157 1, script sendbox thm_obj_28 textcolor 0.4745 0.9098 0.7412 1, script sendbox thm_obj_29 bgcolor 0.08627 0.1137 0.1098 1, script sendbox thm_obj_29 bordercolor 0.2745 0.3137 0.3098 1, script sendbox thm_obj_30 bgcolor 0.4235 0.4784 0.4627 1, script sendbox thm_obj_31 textcolor 0.4745 0.9098 0.7412 1, script sendbox in_gain_db activedialcolor 0.7647 0.7961 0.8157 1, script sendbox in_gain_db dialcolor 0.1451 0.1882 0.1765 1, script sendbox in_gain_db activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox in_gain_db needlecolor 0.8745 0.898 0.9059 1"
    }
   },
   {
    "box": {
     "id": "obj-235",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1780,
      420,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox in_gain_db textcolor 0.7176 0.7765 0.7569 1, script sendbox thm_obj_34 coldcolor 0.3098 0.8784 0.6275 1, script sendbox thm_obj_34 warmcolor 0.9098 0.7216 0.2902 1, script sendbox thm_obj_34 hotcolor 1 0.302 0.2275 1, script sendbox thm_obj_34 overloadcolor 1 0.302 0.2275 1, script sendbox thm_obj_34 bgcolor 0.01569 0.02745 0.02353 1, script sendbox thm_obj_35 coldcolor 0.3098 0.8784 0.6275 1, script sendbox thm_obj_35 warmcolor 0.9098 0.7216 0.2902 1, script sendbox thm_obj_35 hotcolor 1 0.302 0.2275 1, script sendbox thm_obj_35 overloadcolor 1 0.302 0.2275 1, script sendbox thm_obj_35 bgcolor 0.01569 0.02745 0.02353 1, script sendbox mode bgcolor 0.1137 0.1451 0.1412 1, script sendbox mode bgoncolor 0.4353 0.9412 0.7059 1, script sendbox mode activebgcolor 0.1137 0.1451 0.1412 1, script sendbox mode activebgoncolor 0.4353 0.9412 0.7059 1, script sendbox mode textcolor 0.7176 0.7765 0.7569 1, script sendbox mode textoncolor 0.02353 0.06275 0.04706 1, script sendbox mode bordercolor 0.2745 0.3137 0.3098 1, script sendbox tap_button bgcolor 0.1137 0.1451 0.1412 1, script sendbox tap_button bgoncolor 0.4353 0.9412 0.7059 1, script sendbox tap_button activebgcolor 0.1137 0.1451 0.1412 1, script sendbox tap_button activebgoncolor 0.4353 0.9412 0.7059 1, script sendbox tap_button textcolor 0.8745 0.898 0.9059 1, script sendbox tap_button textoncolor 0.02353 0.06275 0.04706 1, script sendbox tap_button bordercolor 0.4353 0.9412 0.7059 1, script sendbox slider_pos slidercolor 0.1451 0.1882 0.1765 1, script sendbox slider_pos activeslidercolor 0.4353 0.9412 0.7059 1, script sendbox slider_pos tribordercolor 0.8745 0.898 0.9059 1, script sendbox slider_pos trioncolor 0.8745 0.898 0.9059 1, script sendbox slider_pos tricolor 0.8745 0.898 0.9059 1, script sendbox slider_pos textcolor 0.7176 0.7765 0.7569 1, script sendbox thm_obj_46 bgcolor 0.01569 0.02745 0.02353 1, script sendbox thm_obj_46 textcolor 0.5529 1 0.7922 1, script sendbox thm_obj_46 bordercolor 0.2745 0.3137 0.3098 1, script sendbox thm_obj_47 textcolor 0.4745 0.9098 0.7412 1, script sendbox thm_obj_49 bgcolor 0.01569 0.02745 0.02353 1, script sendbox thm_obj_49 textcolor 0.5529 1 0.7922 1, script sendbox thm_obj_49 bordercolor 0.2745 0.3137 0.3098 1, script sendbox thm_obj_50 textcolor 0.4745 0.9098 0.7412 1, script sendbox thm_obj_51 textcolor 0.4745 0.9098 0.7412 1"
    }
   },
   {
    "box": {
     "id": "obj-236",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1780,
      500,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox sync_div bgcolor 0.1137 0.1451 0.1412 1, script sendbox sync_div textcolor 0.7176 0.7765 0.7569 1, script sendbox sync_div activebgcolor 0.1137 0.1451 0.1412 1, script sendbox sync_div tricolor 0.4353 0.9412 0.7059 1, script sendbox sync_type bgcolor 0.1137 0.1451 0.1412 1, script sendbox sync_type bgoncolor 0.4353 0.9412 0.7059 1, script sendbox sync_type activebgcolor 0.1137 0.1451 0.1412 1, script sendbox sync_type activebgoncolor 0.4353 0.9412 0.7059 1, script sendbox sync_type textcolor 0.7176 0.7765 0.7569 1, script sendbox sync_type textoncolor 0.02353 0.06275 0.04706 1, script sendbox sync_type bordercolor 0.2745 0.3137 0.3098 1, script sendbox sync_mult activebgcolor 0.01569 0.02745 0.02353 1, script sendbox sync_mult bgcolor 0.01569 0.02745 0.02353 1, script sendbox sync_mult textcolor 0.5529 1 0.7922 1, script sendbox sync_mult tricolor 0.4353 0.9412 0.7059 1, script sendbox sync_mult activetricolor 0.4353 0.9412 0.7059 1, script sendbox thm_obj_58 textcolor 0.4745 0.9098 0.7412 1, script sendbox tap_div bgcolor 0.1137 0.1451 0.1412 1, script sendbox tap_div textcolor 0.7176 0.7765 0.7569 1, script sendbox tap_div activebgcolor 0.1137 0.1451 0.1412 1, script sendbox tap_div tricolor 0.4353 0.9412 0.7059 1, script sendbox tap_type bgcolor 0.1137 0.1451 0.1412 1, script sendbox tap_type bgoncolor 0.4353 0.9412 0.7059 1, script sendbox tap_type activebgcolor 0.1137 0.1451 0.1412 1, script sendbox tap_type activebgoncolor 0.4353 0.9412 0.7059 1, script sendbox tap_type textcolor 0.7176 0.7765 0.7569 1, script sendbox tap_type textoncolor 0.02353 0.06275 0.04706 1, script sendbox tap_type bordercolor 0.2745 0.3137 0.3098 1, script sendbox offset_ms activedialcolor 0.4353 0.9412 0.7059 1, script sendbox offset_ms dialcolor 0.1451 0.1882 0.1765 1, script sendbox offset_ms activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox offset_ms needlecolor 0.8745 0.898 0.9059 1, script sendbox offset_ms textcolor 0.7176 0.7765 0.7569 1, script sendbox glide_ms activedialcolor 0.4353 0.9412 0.7059 1, script sendbox glide_ms dialcolor 0.1451 0.1882 0.1765 1, script sendbox glide_ms activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox glide_ms needlecolor 0.8745 0.898 0.9059 1, script sendbox glide_ms textcolor 0.7176 0.7765 0.7569 1, script sendbox thm_obj_67 textcolor 0.4235 0.4784 0.4627 1, script sendbox hold_mom bgcolor 0.1137 0.1451 0.1412 1"
    }
   },
   {
    "box": {
     "id": "obj-237",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1780,
      580,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox hold_mom bgoncolor 0.7059 1 0.8784 1, script sendbox hold_mom activebgcolor 0.1137 0.1451 0.1412 1, script sendbox hold_mom activebgoncolor 0.7059 1 0.8784 1, script sendbox hold_mom textcolor 0.7176 0.7765 0.7569 1, script sendbox hold_mom textoncolor 0.02353 0.06275 0.04706 1, script sendbox hold_mom activetextcolor 0.7176 0.7765 0.7569 1, script sendbox hold_mom activetextoncolor 0.02353 0.06275 0.04706 1, script sendbox hold_mom bordercolor 0.2745 0.3137 0.3098 1, script sendbox hold_latch bgcolor 0.1137 0.1451 0.1412 1, script sendbox hold_latch bgoncolor 0.7059 1 0.8784 1, script sendbox hold_latch activebgcolor 0.1137 0.1451 0.1412 1, script sendbox hold_latch activebgoncolor 0.7059 1 0.8784 1, script sendbox hold_latch textcolor 0.7176 0.7765 0.7569 1, script sendbox hold_latch textoncolor 0.02353 0.06275 0.04706 1, script sendbox hold_latch activetextcolor 0.7176 0.7765 0.7569 1, script sendbox hold_latch activetextoncolor 0.02353 0.06275 0.04706 1, script sendbox hold_latch bordercolor 0.2745 0.3137 0.3098 1, script sendbox drive_mom bgcolor 0.1137 0.1451 0.1412 1, script sendbox drive_mom bgoncolor 0.4353 0.9412 0.7059 1, script sendbox drive_mom activebgcolor 0.1137 0.1451 0.1412 1, script sendbox drive_mom activebgoncolor 0.4353 0.9412 0.7059 1, script sendbox drive_mom textcolor 0.7176 0.7765 0.7569 1, script sendbox drive_mom textoncolor 0.02353 0.06275 0.04706 1, script sendbox drive_mom activetextcolor 0.7176 0.7765 0.7569 1, script sendbox drive_mom activetextoncolor 0.02353 0.06275 0.04706 1, script sendbox drive_mom bordercolor 0.2745 0.3137 0.3098 1, script sendbox drive_latch bgcolor 0.1137 0.1451 0.1412 1, script sendbox drive_latch bgoncolor 0.4353 0.9412 0.7059 1, script sendbox drive_latch activebgcolor 0.1137 0.1451 0.1412 1, script sendbox drive_latch activebgoncolor 0.4353 0.9412 0.7059 1, script sendbox drive_latch textcolor 0.7176 0.7765 0.7569 1, script sendbox drive_latch textoncolor 0.02353 0.06275 0.04706 1, script sendbox drive_latch activetextcolor 0.7176 0.7765 0.7569 1, script sendbox drive_latch activetextoncolor 0.02353 0.06275 0.04706 1, script sendbox drive_latch bordercolor 0.2745 0.3137 0.3098 1, script sendbox tape_stop_mom bgcolor 0.1137 0.1451 0.1412 1, script sendbox tape_stop_mom bgoncolor 0.3373 0.8275 0.7765 1, script sendbox tape_stop_mom activebgcolor 0.1137 0.1451 0.1412 1, script sendbox tape_stop_mom activebgoncolor 0.3373 0.8275 0.7765 1, script sendbox tape_stop_mom textcolor 0.7176 0.7765 0.7569 1"
    }
   },
   {
    "box": {
     "id": "obj-238",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1780,
      660,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox tape_stop_mom textoncolor 0.02353 0.06275 0.04706 1, script sendbox tape_stop_mom activetextcolor 0.7176 0.7765 0.7569 1, script sendbox tape_stop_mom activetextoncolor 0.02353 0.06275 0.04706 1, script sendbox tape_stop_mom bordercolor 0.2745 0.3137 0.3098 1, script sendbox tape_stop_latch bgcolor 0.1137 0.1451 0.1412 1, script sendbox tape_stop_latch bgoncolor 0.3373 0.8275 0.7765 1, script sendbox tape_stop_latch activebgcolor 0.1137 0.1451 0.1412 1, script sendbox tape_stop_latch activebgoncolor 0.3373 0.8275 0.7765 1, script sendbox tape_stop_latch textcolor 0.7176 0.7765 0.7569 1, script sendbox tape_stop_latch textoncolor 0.02353 0.06275 0.04706 1, script sendbox tape_stop_latch activetextcolor 0.7176 0.7765 0.7569 1, script sendbox tape_stop_latch activetextoncolor 0.02353 0.06275 0.04706 1, script sendbox tape_stop_latch bordercolor 0.2745 0.3137 0.3098 1, script sendbox thm_obj_119 textcolor 0.4235 0.4784 0.4627 1, script sendbox thm_obj_120 textcolor 0.4235 0.4784 0.4627 1, script sendbox thm_obj_121 textcolor 0.4235 0.4784 0.4627 1, script sendbox drive_db activebgcolor 0.01569 0.02745 0.02353 1, script sendbox drive_db bgcolor 0.01569 0.02745 0.02353 1, script sendbox drive_db textcolor 0.5529 1 0.7922 1, script sendbox drive_db tricolor 0.4353 0.9412 0.7059 1, script sendbox drive_db activetricolor 0.4353 0.9412 0.7059 1, script sendbox stop_time activebgcolor 0.01569 0.02745 0.02353 1, script sendbox stop_time bgcolor 0.01569 0.02745 0.02353 1, script sendbox stop_time textcolor 0.5529 1 0.7922 1, script sendbox stop_time tricolor 0.4353 0.9412 0.7059 1, script sendbox stop_time activetricolor 0.4353 0.9412 0.7059 1, script sendbox start_time activebgcolor 0.01569 0.02745 0.02353 1, script sendbox start_time bgcolor 0.01569 0.02745 0.02353 1, script sendbox start_time textcolor 0.5529 1 0.7922 1, script sendbox start_time tricolor 0.4353 0.9412 0.7059 1, script sendbox start_time activetricolor 0.4353 0.9412 0.7059 1, script sendbox sustain activedialcolor 0.7059 1 0.8784 1, script sendbox sustain dialcolor 0.1451 0.1882 0.1765 1, script sendbox sustain activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox sustain needlecolor 0.8745 0.898 0.9059 1, script sendbox sustain textcolor 0.7176 0.7765 0.7569 1, script sendbox echo activedialcolor 0.4353 0.9412 0.7059 1, script sendbox echo dialcolor 0.1451 0.1882 0.1765 1, script sendbox echo activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox echo needlecolor 0.8745 0.898 0.9059 1"
    }
   },
   {
    "box": {
     "id": "obj-239",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1780,
      740,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox echo textcolor 0.7176 0.7765 0.7569 1, script sendbox rec_db activedialcolor 0.7647 0.7961 0.8157 1, script sendbox rec_db dialcolor 0.1451 0.1882 0.1765 1, script sendbox rec_db activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox rec_db needlecolor 0.8745 0.898 0.9059 1, script sendbox rec_db textcolor 0.7176 0.7765 0.7569 1, script sendbox thm_obj_134 textcolor 0.4235 0.4784 0.4627 1, script sendbox sos bgcolor 0.1137 0.1451 0.1412 1, script sendbox sos bgoncolor 0.4353 0.9412 0.7059 1, script sendbox sos activebgcolor 0.1137 0.1451 0.1412 1, script sendbox sos activebgoncolor 0.4353 0.9412 0.7059 1, script sendbox sos textcolor 0.7176 0.7765 0.7569 1, script sendbox sos textoncolor 0.02353 0.06275 0.04706 1, script sendbox sos bordercolor 0.2745 0.3137 0.3098 1, script sendbox thm_obj_137 textcolor 0.4745 0.9098 0.7412 1, script sendbox echo_on bgcolor 0.1137 0.1451 0.1412 1, script sendbox echo_on bgoncolor 0.4353 0.9412 0.7059 1, script sendbox echo_on activebgcolor 0.1137 0.1451 0.1412 1, script sendbox echo_on activebgoncolor 0.4353 0.9412 0.7059 1, script sendbox echo_on textcolor 0.7176 0.7765 0.7569 1, script sendbox echo_on textoncolor 0.02353 0.06275 0.04706 1, script sendbox echo_on activetextcolor 0.7176 0.7765 0.7569 1, script sendbox echo_on activetextoncolor 0.02353 0.06275 0.04706 1, script sendbox echo_on bordercolor 0.2745 0.3137 0.3098 1, script sendbox playback bgcolor 0.1137 0.1451 0.1412 1, script sendbox playback bgoncolor 0.7059 1 0.8784 1, script sendbox playback activebgcolor 0.1137 0.1451 0.1412 1, script sendbox playback activebgoncolor 0.7059 1 0.8784 1, script sendbox playback textcolor 0.7176 0.7765 0.7569 1, script sendbox playback textoncolor 0.02353 0.06275 0.04706 1, script sendbox playback activetextcolor 0.7176 0.7765 0.7569 1, script sendbox playback activetextoncolor 0.02353 0.06275 0.04706 1, script sendbox playback bordercolor 0.2745 0.3137 0.3098 1, script sendbox thm_obj_142 textcolor 0.4235 0.4784 0.4627 1, script sendbox sos_db activebgcolor 0.01569 0.02745 0.02353 1, script sendbox sos_db bgcolor 0.01569 0.02745 0.02353 1, script sendbox sos_db textcolor 0.5529 1 0.7922 1, script sendbox sos_db tricolor 0.4353 0.9412 0.7059 1, script sendbox sos_db activetricolor 0.4353 0.9412 0.7059 1, script sendbox thm_obj_145 textcolor 0.4235 0.4784 0.4627 1"
    }
   },
   {
    "box": {
     "id": "obj-240",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1780,
      820,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox loop_s activebgcolor 0.01569 0.02745 0.02353 1, script sendbox loop_s bgcolor 0.01569 0.02745 0.02353 1, script sendbox loop_s textcolor 0.5529 1 0.7922 1, script sendbox loop_s tricolor 0.4353 0.9412 0.7059 1, script sendbox loop_s activetricolor 0.4353 0.9412 0.7059 1, script sendbox sat activedialcolor 0.4353 0.9412 0.7059 1, script sendbox sat dialcolor 0.1451 0.1882 0.1765 1, script sendbox sat activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox sat needlecolor 0.8745 0.898 0.9059 1, script sendbox sat textcolor 0.7176 0.7765 0.7569 1, script sendbox wow activedialcolor 0.4353 0.9412 0.7059 1, script sendbox wow dialcolor 0.1451 0.1882 0.1765 1, script sendbox wow activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox wow needlecolor 0.8745 0.898 0.9059 1, script sendbox wow textcolor 0.7176 0.7765 0.7569 1, script sendbox flutter activedialcolor 0.4353 0.9412 0.7059 1, script sendbox flutter dialcolor 0.1451 0.1882 0.1765 1, script sendbox flutter activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox flutter needlecolor 0.8745 0.898 0.9059 1, script sendbox flutter textcolor 0.7176 0.7765 0.7569 1, script sendbox noise_db activedialcolor 0.4353 0.9412 0.7059 1, script sendbox noise_db dialcolor 0.1451 0.1882 0.1765 1, script sendbox noise_db activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox noise_db needlecolor 0.8745 0.898 0.9059 1, script sendbox noise_db textcolor 0.7176 0.7765 0.7569 1, script sendbox bias_leak activedialcolor 0.4353 0.9412 0.7059 1, script sendbox bias_leak dialcolor 0.1451 0.1882 0.1765 1, script sendbox bias_leak activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox bias_leak needlecolor 0.8745 0.898 0.9059 1, script sendbox bias_leak textcolor 0.7176 0.7765 0.7569 1, script sendbox thm_obj_158 textcolor 0.4235 0.4784 0.4627 1, script sendbox bias_khz activebgcolor 0.01569 0.02745 0.02353 1, script sendbox bias_khz bgcolor 0.01569 0.02745 0.02353 1, script sendbox bias_khz textcolor 0.5529 1 0.7922 1, script sendbox bias_khz tricolor 0.4353 0.9412 0.7059 1, script sendbox bias_khz activetricolor 0.4353 0.9412 0.7059 1, script sendbox thm_obj_161 textcolor 0.4235 0.4784 0.4627 1, script sendbox thm_obj_162 textcolor 0.3373 0.8275 0.7765 1, script sendbox fb_hp_hz activedialcolor 0.3373 0.8275 0.7765 1, script sendbox fb_hp_hz dialcolor 0.1451 0.1882 0.1765 1"
    }
   },
   {
    "box": {
     "id": "obj-241",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1780,
      900,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox fb_hp_hz activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox fb_hp_hz needlecolor 0.8745 0.898 0.9059 1, script sendbox fb_hp_hz textcolor 0.7176 0.7765 0.7569 1, script sendbox fb_lp_hz activedialcolor 0.3373 0.8275 0.7765 1, script sendbox fb_lp_hz dialcolor 0.1451 0.1882 0.1765 1, script sendbox fb_lp_hz activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox fb_lp_hz needlecolor 0.8745 0.898 0.9059 1, script sendbox fb_lp_hz textcolor 0.7176 0.7765 0.7569 1, script sendbox fb_res activedialcolor 0.3373 0.8275 0.7765 1, script sendbox fb_res dialcolor 0.1451 0.1882 0.1765 1, script sendbox fb_res activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox fb_res needlecolor 0.8745 0.898 0.9059 1, script sendbox fb_res textcolor 0.7176 0.7765 0.7569 1, script sendbox thm_obj_169 textcolor 0.3373 0.8275 0.7765 1, script sendbox echo_hp_hz activedialcolor 0.3373 0.8275 0.7765 1, script sendbox echo_hp_hz dialcolor 0.1451 0.1882 0.1765 1, script sendbox echo_hp_hz activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox echo_hp_hz needlecolor 0.8745 0.898 0.9059 1, script sendbox echo_hp_hz textcolor 0.7176 0.7765 0.7569 1, script sendbox echo_lp_hz activedialcolor 0.3373 0.8275 0.7765 1, script sendbox echo_lp_hz dialcolor 0.1451 0.1882 0.1765 1, script sendbox echo_lp_hz activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox echo_lp_hz needlecolor 0.8745 0.898 0.9059 1, script sendbox echo_lp_hz textcolor 0.7176 0.7765 0.7569 1, script sendbox dry activedialcolor 0.7647 0.7961 0.8157 1, script sendbox dry dialcolor 0.1451 0.1882 0.1765 1, script sendbox dry activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox dry needlecolor 0.8745 0.898 0.9059 1, script sendbox dry textcolor 0.7176 0.7765 0.7569 1, script sendbox echo_trim_db activedialcolor 0.4353 0.9412 0.7059 1, script sendbox echo_trim_db dialcolor 0.1451 0.1882 0.1765 1, script sendbox echo_trim_db activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox echo_trim_db needlecolor 0.8745 0.898 0.9059 1, script sendbox echo_trim_db textcolor 0.7176 0.7765 0.7569 1, script sendbox out_db activedialcolor 0.7647 0.7961 0.8157 1, script sendbox out_db dialcolor 0.1451 0.1882 0.1765 1, script sendbox out_db activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox out_db needlecolor 0.8745 0.898 0.9059 1, script sendbox out_db textcolor 0.7176 0.7765 0.7569 1, script sendbox ceiling_db activedialcolor 0.7647 0.7961 0.8157 1"
    }
   },
   {
    "box": {
     "id": "obj-242",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1780,
      980,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox ceiling_db dialcolor 0.1451 0.1882 0.1765 1, script sendbox ceiling_db activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox ceiling_db needlecolor 0.8745 0.898 0.9059 1, script sendbox ceiling_db textcolor 0.7176 0.7765 0.7569 1, script sendbox thm_obj_182 coldcolor 0.3098 0.8784 0.6275 1, script sendbox thm_obj_182 warmcolor 0.9098 0.7216 0.2902 1, script sendbox thm_obj_182 hotcolor 1 0.302 0.2275 1, script sendbox thm_obj_182 overloadcolor 1 0.302 0.2275 1, script sendbox thm_obj_182 bgcolor 0.01569 0.02745 0.02353 1, script sendbox thm_obj_183 coldcolor 0.3098 0.8784 0.6275 1, script sendbox thm_obj_183 warmcolor 0.9098 0.7216 0.2902 1, script sendbox thm_obj_183 hotcolor 1 0.302 0.2275 1, script sendbox thm_obj_183 overloadcolor 1 0.302 0.2275 1, script sendbox thm_obj_183 bgcolor 0.01569 0.02745 0.02353 1, script sendbox thm_obj_184 textcolor 0.4235 0.4784 0.4627 1, script sendbox protect bgcolor 0.1137 0.1451 0.1412 1, script sendbox protect bgoncolor 0.7647 0.7961 0.8157 1, script sendbox protect activebgcolor 0.1137 0.1451 0.1412 1, script sendbox protect activebgoncolor 0.7647 0.7961 0.8157 1, script sendbox protect textcolor 0.7176 0.7765 0.7569 1, script sendbox protect textoncolor 0.02353 0.06275 0.04706 1, script sendbox protect activetextcolor 0.7176 0.7765 0.7569 1, script sendbox protect activetextoncolor 0.02353 0.06275 0.04706 1, script sendbox protect bordercolor 0.2745 0.3137 0.3098 1, script sendbox thm_obj_190 bgcolor 0.01569 0.02745 0.02353 1, script sendbox thm_obj_190 textcolor 0.5529 1 0.7922 1, script sendbox thm_obj_191 textcolor 0.4235 0.4784 0.4627 1, script sendbox thm_obj_194 oncolor 1 0.302 0.2275 1, script sendbox thm_obj_194 offcolor 0.1451 0.1882 0.1765 1, script sendbox thm_obj_195 textcolor 0.4235 0.4784 0.4627 1, script sendbox thm_obj_196 textcolor 0.4745 0.9098 0.7412 1, script sendbox pre_bypass bgcolor 0.1137 0.1451 0.1412 1, script sendbox pre_bypass bgoncolor 0.7647 0.7961 0.8157 1, script sendbox pre_bypass activebgcolor 0.1137 0.1451 0.1412 1, script sendbox pre_bypass activebgoncolor 0.7647 0.7961 0.8157 1, script sendbox pre_bypass textcolor 0.7176 0.7765 0.7569 1, script sendbox pre_bypass textoncolor 0.02353 0.06275 0.04706 1, script sendbox pre_bypass bordercolor 0.2745 0.3137 0.3098 1, script sendbox drive_fb bgcolor 0.1137 0.1451 0.1412 1, script sendbox drive_fb bgoncolor 0.4353 0.9412 0.7059 1"
    }
   },
   {
    "box": {
     "id": "obj-243",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1780,
      1060,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox drive_fb activebgcolor 0.1137 0.1451 0.1412 1, script sendbox drive_fb activebgoncolor 0.4353 0.9412 0.7059 1, script sendbox drive_fb textcolor 0.7176 0.7765 0.7569 1, script sendbox drive_fb textoncolor 0.02353 0.06275 0.04706 1, script sendbox drive_fb activetextcolor 0.7176 0.7765 0.7569 1, script sendbox drive_fb activetextoncolor 0.02353 0.06275 0.04706 1, script sendbox drive_fb bordercolor 0.2745 0.3137 0.3098 1, script sendbox thm_obj_201 textcolor 0.4745 0.9098 0.7412 1, script sendbox pb_eq bgcolor 0.1137 0.1451 0.1412 1, script sendbox pb_eq bgoncolor 0.7647 0.7961 0.8157 1, script sendbox pb_eq activebgcolor 0.1137 0.1451 0.1412 1, script sendbox pb_eq activebgoncolor 0.7647 0.7961 0.8157 1, script sendbox pb_eq textcolor 0.7176 0.7765 0.7569 1, script sendbox pb_eq textoncolor 0.02353 0.06275 0.04706 1, script sendbox pb_eq bordercolor 0.2745 0.3137 0.3098 1, script sendbox thm_obj_204 textcolor 0.4745 0.9098 0.7412 1, script sendbox cable_pf activebgcolor 0.01569 0.02745 0.02353 1, script sendbox cable_pf bgcolor 0.01569 0.02745 0.02353 1, script sendbox cable_pf textcolor 0.5529 1 0.7922 1, script sendbox cable_pf tricolor 0.4353 0.9412 0.7059 1, script sendbox cable_pf activetricolor 0.4353 0.9412 0.7059 1, script sendbox head_slew activedialcolor 0.4235 0.4784 0.4627 1, script sendbox head_slew dialcolor 0.1451 0.1882 0.1765 1, script sendbox head_slew activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox head_slew needlecolor 0.8745 0.898 0.9059 1, script sendbox head_slew textcolor 0.7176 0.7765 0.7569 1, script sendbox transition_ms activedialcolor 0.4235 0.4784 0.4627 1, script sendbox transition_ms dialcolor 0.1451 0.1882 0.1765 1, script sendbox transition_ms activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox transition_ms needlecolor 0.8745 0.898 0.9059 1, script sendbox transition_ms textcolor 0.7176 0.7765 0.7569 1, script sendbox hold_fb activedialcolor 0.4235 0.4784 0.4627 1, script sendbox hold_fb dialcolor 0.1451 0.1882 0.1765 1, script sendbox hold_fb activeneedlecolor 0.8745 0.898 0.9059 1, script sendbox hold_fb needlecolor 0.8745 0.898 0.9059 1, script sendbox hold_fb textcolor 0.7176 0.7765 0.7569 1, script sendbox thm_obj_213 textcolor 0.4745 0.9098 0.7412 1, script sendbox slider_min_ms activebgcolor 0.01569 0.02745 0.02353 1, script sendbox slider_min_ms bgcolor 0.01569 0.02745 0.02353 1, script sendbox slider_min_ms textcolor 0.5529 1 0.7922 1"
    }
   },
   {
    "box": {
     "id": "obj-244",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1780,
      1140,
      150,
      22
     ],
     "outlettype": [
      ""
     ],
     "text": "script sendbox slider_min_ms tricolor 0.4353 0.9412 0.7059 1, script sendbox slider_min_ms activetricolor 0.4353 0.9412 0.7059 1, script sendbox slider_max_ms activebgcolor 0.01569 0.02745 0.02353 1, script sendbox slider_max_ms bgcolor 0.01569 0.02745 0.02353 1, script sendbox slider_max_ms textcolor 0.5529 1 0.7922 1, script sendbox slider_max_ms tricolor 0.4353 0.9412 0.7059 1, script sendbox slider_max_ms activetricolor 0.4353 0.9412 0.7059 1, script sendbox thm_obj_218 textcolor 0.4235 0.4784 0.4627 1, script sendbox ui_theme bgcolor 0.1137 0.1451 0.1412 1, script sendbox ui_theme bgoncolor 0.4353 0.9412 0.7059 1, script sendbox ui_theme activebgcolor 0.1137 0.1451 0.1412 1, script sendbox ui_theme activebgoncolor 0.4353 0.9412 0.7059 1, script sendbox ui_theme textcolor 0.7176 0.7765 0.7569 1, script sendbox ui_theme textoncolor 0.02353 0.06275 0.04706 1, script sendbox ui_theme bordercolor 0.2745 0.3137 0.3098 1"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-1",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-1",
      1
     ],
     "destination": [
      "obj-2",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      0
     ],
     "destination": [
      "obj-3",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      1
     ],
     "destination": [
      "obj-3",
      1
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
      "obj-33",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-1",
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
      "obj-1",
      1
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
      "obj-36",
      0
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
      "obj-37",
      0
     ],
     "destination": [
      "obj-2",
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
      "obj-39",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-39",
      0
     ],
     "destination": [
      "obj-40",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-40",
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
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-42",
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
      "obj-43",
      0
     ],
     "destination": [
      "obj-44",
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
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      2
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
      0
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
      "obj-2",
      3
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
      "obj-52",
      0
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
      "obj-53",
      0
     ],
     "destination": [
      "obj-2",
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
      "obj-55",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-55",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-56",
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
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-59",
      0
     ],
     "destination": [
      "obj-60",
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
      "obj-2",
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
      "obj-62",
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
      "obj-2",
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
      "obj-2",
      0
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
      "obj-66",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-72",
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
      "obj-72",
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
      0
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
      "obj-69",
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
      "obj-70",
      0
     ],
     "destination": [
      "obj-71",
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
      "obj-74",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-74",
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
      "obj-73",
      1
     ],
     "destination": [
      "obj-76",
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
      "obj-75",
      0
     ],
     "destination": [
      "obj-77",
      1
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
      "obj-78",
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
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-73",
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
      "obj-75",
      0
     ],
     "destination": [
      "obj-80",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-73",
      1
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
      "obj-75",
      0
     ],
     "destination": [
      "obj-82",
      1
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
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-82",
      0
     ],
     "destination": [
      "obj-83",
      1
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
      0
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
      "obj-85",
      0
     ],
     "destination": [
      "obj-2",
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
      "obj-88",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-88",
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
      "obj-90",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-90",
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
      "obj-70",
      0
     ],
     "destination": [
      "obj-90",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-71",
      0
     ],
     "destination": [
      "obj-91",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-91",
      0
     ],
     "destination": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-91",
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
      "obj-92",
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
      "obj-93",
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
      "obj-88",
      1
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
      "obj-87",
      0
     ],
     "destination": [
      "obj-94",
      1
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
      "obj-95",
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
      "obj-2",
      0
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
      "obj-99",
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
      0
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
      "obj-101",
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
      "obj-70",
      0
     ],
     "destination": [
      "obj-101",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-71",
      0
     ],
     "destination": [
      "obj-102",
      1
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
      "obj-103",
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
      "obj-104",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-103",
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
      "obj-104",
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
      "obj-99",
      1
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
      "obj-98",
      0
     ],
     "destination": [
      "obj-105",
      1
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
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-106",
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
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-108",
      0
     ],
     "destination": [
      "obj-110",
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
      0
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
      "obj-112",
      0
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
      "obj-70",
      0
     ],
     "destination": [
      "obj-112",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-71",
      0
     ],
     "destination": [
      "obj-113",
      1
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
      "obj-113",
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
      "obj-108",
      0
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
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-110",
      1
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
      "obj-109",
      0
     ],
     "destination": [
      "obj-116",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-116",
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
      0
     ],
     "destination": [
      "obj-2",
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
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-124",
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
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-126",
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
      "obj-127",
      0
     ],
     "destination": [
      "obj-2",
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
      0
     ],
     "destination": [
      "obj-2",
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
      "obj-131",
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
      "obj-2",
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
      "obj-133",
      0
     ],
     "destination": [
      "obj-2",
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
      0
     ],
     "destination": [
      "obj-2",
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
      "obj-139",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-139",
      0
     ],
     "destination": [
      "obj-2",
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
      "obj-2",
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
      "obj-144",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-144",
      0
     ],
     "destination": [
      "obj-2",
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
      0
     ],
     "destination": [
      "obj-2",
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
      "obj-149",
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
      "obj-2",
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
      "obj-151",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-152",
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
      "obj-153",
      0
     ],
     "destination": [
      "obj-2",
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
      "obj-155",
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
      "obj-2",
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
      "obj-157",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-157",
      0
     ],
     "destination": [
      "obj-2",
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
      "obj-160",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-160",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-163",
      0
     ],
     "destination": [
      "obj-164",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-164",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-165",
      0
     ],
     "destination": [
      "obj-166",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-166",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-167",
      0
     ],
     "destination": [
      "obj-168",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-168",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-170",
      0
     ],
     "destination": [
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-171",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-172",
      0
     ],
     "destination": [
      "obj-173",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-173",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-174",
      0
     ],
     "destination": [
      "obj-175",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-175",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-176",
      0
     ],
     "destination": [
      "obj-177",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-177",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-178",
      0
     ],
     "destination": [
      "obj-179",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-179",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-180",
      0
     ],
     "destination": [
      "obj-181",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-181",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      0
     ],
     "destination": [
      "obj-182",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      1
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-185",
      0
     ],
     "destination": [
      "obj-186",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-186",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      6
     ],
     "destination": [
      "obj-187",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-187",
      0
     ],
     "destination": [
      "obj-188",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-188",
      0
     ],
     "destination": [
      "obj-189",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-189",
      0
     ],
     "destination": [
      "obj-190",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      7
     ],
     "destination": [
      "obj-192",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-192",
      0
     ],
     "destination": [
      "obj-193",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-193",
      0
     ],
     "destination": [
      "obj-194",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-197",
      0
     ],
     "destination": [
      "obj-198",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-198",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-199",
      0
     ],
     "destination": [
      "obj-200",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-200",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-202",
      0
     ],
     "destination": [
      "obj-203",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-203",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-205",
      0
     ],
     "destination": [
      "obj-206",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-206",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-207",
      0
     ],
     "destination": [
      "obj-208",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-208",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-209",
      0
     ],
     "destination": [
      "obj-210",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-210",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-211",
      0
     ],
     "destination": [
      "obj-212",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-212",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-214",
      0
     ],
     "destination": [
      "obj-215",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-215",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-216",
      0
     ],
     "destination": [
      "obj-217",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-217",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-222",
      0
     ],
     "destination": [
      "obj-219",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-219",
      0
     ],
     "destination": [
      "obj-220",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      0
     ],
     "destination": [
      "obj-223",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-223",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      0
     ],
     "destination": [
      "obj-224",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-224",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      0
     ],
     "destination": [
      "obj-225",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-225",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      0
     ],
     "destination": [
      "obj-226",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-226",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      0
     ],
     "destination": [
      "obj-227",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-227",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      0
     ],
     "destination": [
      "obj-228",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-228",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      0
     ],
     "destination": [
      "obj-229",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-229",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      0
     ],
     "destination": [
      "obj-230",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-230",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      0
     ],
     "destination": [
      "obj-231",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-231",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      0
     ],
     "destination": [
      "obj-232",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-232",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      0
     ],
     "destination": [
      "obj-233",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-233",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      1
     ],
     "destination": [
      "obj-234",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-234",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      1
     ],
     "destination": [
      "obj-235",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-235",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      1
     ],
     "destination": [
      "obj-236",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-236",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      1
     ],
     "destination": [
      "obj-237",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-237",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      1
     ],
     "destination": [
      "obj-238",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-238",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      1
     ],
     "destination": [
      "obj-239",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-239",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      1
     ],
     "destination": [
      "obj-240",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-240",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      1
     ],
     "destination": [
      "obj-241",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-241",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      1
     ],
     "destination": [
      "obj-242",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-242",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      1
     ],
     "destination": [
      "obj-243",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-243",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      1
     ],
     "destination": [
      "obj-244",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-244",
      0
     ],
     "destination": [
      "obj-221",
      0
     ]
    }
   }
  ],
  "dependency_cache": [],
  "latency": 0,
  "is_mpe": 0,
  "minimum_live_version": "",
  "minimum_max_version": "",
  "platform_compatibility": 0,
  "project": {
   "version": 1,
   "creationdate": 3590052493,
   "modificationdate": 3590052493,
   "viewrect": [
    0.0,
    0.0,
    300.0,
    500.0
   ],
   "autoorganize": 1,
   "hideprojectwindow": 1,
   "showdependencies": 1,
   "autolocalize": 0,
   "contents": {
    "patchers": {}
   },
   "layout": {},
   "searchpath": {},
   "detailsvisible": 0,
   "amxdtype": 1633771873,
   "readonly": 0,
   "devpathtype": 0,
   "devpath": ".",
   "sortmode": 0,
   "viewmode": 0,
   "includepackages": 0
  },
  "autosave": 0
 }
}