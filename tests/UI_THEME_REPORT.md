# UI theme switch and ADVANCED view — structural tests (EP-3 v0.1.0-dev)

Run on the built .maxpat in Python. Not a Max/Live rendering test (see L25, BLOCKED: no Max/Live here).

| ID | Test | Result | Detail |
|---|---|---|---|
| TH01 | EL message turns the EMBER patch into the EL palette; EMBER message restores it | PASS | 312 colour changes; worst error vs EL build 4.9e-05, vs original after switching back 4.9e-05 (over 457 colour attributes, %.4g rounding) |
| TH02 | Every target exists, scripting names unique, only r g b a colour values sent | PASS | missing targets 0, malformed 0, 107 scripting names, duplicates 0 |
| TH03 | Theme selector stored with the set, not automatable; wired to thispatcher and re-sent on load | PASS | invisible=1 (Stored Only), enum ['EMBER', 'EL'], default EMBER; tab→sel True, sel→all 16 message boxes True, →thispatcher True, live.thisdevice→tab True |
| TH04 | Nothing but colours differs between themes (boxes, parameters, cords, sound path) | PASS | non-colour differences 0, cords identical True, 55 Live parameters (53 automatable; Stored Only: Advanced View, UI Theme) |
| TH05 | ADVANCED view: Stored Only toggle, sel -> hide/show lists -> thispatcher, every name exists, ADVANCED controls hidden by default, re-applied on load | PASS | 16 items hidden when off (drive_fb, head_slew, transition_ms, hold_fb, bias_leak, bias_khz, sos_db, slider_min_ms, slider_max_ms, head_slew_img, transition_ms_img, hold_fb_img, bias_leak_img); names resolve True; hidden by default True; to thispatcher True; live.thisdevice to toggle True |
