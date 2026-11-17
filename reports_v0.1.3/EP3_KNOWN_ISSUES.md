# EP-3 v0.1.3-dev — Known issues and limitations register

Severity:
- **P1:** blocks release.
- **P2:** affects real dub work; fix or decide soon.
- **P3:** character or documentation.

| ID | Sev | Issue | Real-world impact | Workaround / plan | Evidence |
|---|---|---|---|---|---|
| K-01 | P1 | **Host validation not executed.** Max 9 and Live 12 aren't available here; G01–G05 and L01–L24 are BLOCKED | Nothing is proven to load, compile or sound right in Live. A gen~ compile error would stop everything | Owner runs the Max harness (~20 min), then Live (`EP3_OWNER_TESTING_GUIDE.md`) | `EP3_HOST_VALIDATION_REPORT.md` |
| K-02 | P1 | **Controller bank and Return variant unverified in Live.** The `parameterbanks` format and its use by Push/controllers are unconfirmed | Push may show a different first bank (it would fall back to registry order, which is also the dub order) | L18–L21 | `EP3_DUB_WORKFLOW_REPORT.md` |
| K-03 | P2 | **HOLD in DARK loses everything above the bass.** A melodica phrase drops 24 dB in 2 bars, leaving only hiss | Freezing a melodic or vocal line in DARK fails | Switch ECHO TONE to BRIGHT before HOLD (click-free). Candidate fix built and measured (not shipped): `experimental/hold_dark_loop/`, A/B audio for your decision | `EP3_HOLD_MUSICAL_ASSESSMENT.md` H3 |
| K-04 | P3 | HOLD with high Repeat Resonance rises ~7 dB, then stays steady (bounded) | A singing, louder freeze | Accepted as character | D5b |
| K-05 | P2 | HOLD BRIGHT on a full mix settles ~6 dB below the first held bar over 2 bars, then holds | The freeze is quieter than expected | Ride Echo Volume; listening decides (H1) | H1 |
| K-06 | P3 | Mono engine (L+R summed, dual-mono out). On a stereo insert the dry also becomes mono | Stereo width lost on inserts | Use the Return variant: the dry track stays stereo | Code line 387 |
| K-07 | P3 | DARK's first repeat is ~5 dB louder on bass-heavy material, and its tail dies faster at the same Sustain | Level jump when switching voicing live | Correct Sustain after switching | D9 |
| K-08 | P3 | Feedback raised after the repeats have died builds slowly from hiss at long delays | A "dead" ride | Ride Sustain while repeats still sound (D2) | Evidence reconciliation |
| K-09 | P3 | Restart chirp after STOP (F7) and overdrive aliasing (F8) | Character, by design | Documented since v0.1.1 | `remediation/EP3_REMEDIATION_REPORT.md` |
| K-10 | P3 | In dense automation, DRIVE / ECHO TONE / VOICE / HOLD changes produce HF changes up to −40 dB re programme | Probably masked; not proven inaudible | Listening during L22 / M-series | `EP3_CPU_RUNTIME_STABILITY.md` |
| K-11 | P3 | The 112.5 s tape is allocated at any loop length (~22–43 MB per instance) | Memory with many instances | Measure in G02 / L24 | Engine code |
| K-12 | P1 (part of K-01) | The .amxd container header is reproduced from public descriptions | Live may refuse the .amxd | Fallback: paste the .maxpat into an empty Max Audio Effect | `build/build_device.py` |
| K-13 | P3 | Test material is synthetic (no recordings available here) | Measurements may not reflect real mixes | Owner session with real material | `tests/hold_study.py` |
| K-14 | — (other project) | The H&H engine uses the same gen~ reserved names (`dcblock`, `lt`) fixed in EP-3 v0.1.2 | H&H may fail to compile | Apply the same rename in the H&H project | Team review T8 |

## Pre-flight findings (2026-11-18, against Ableton's maxdevtools and checklist; details in `EP3_PREFLIGHT_CHECKS.md`)

| ID | Sev | Finding | Plan |
|---|---|---|---|
| B-1 | P2 | Push bank has no `buttons` list (Max 9.1 writes one) | Check on Push (L18); add if needed, with HOLD / DRIVE / STOP on buttons |
| B-2 | P3 | 22 switch/menu parameters have no clip-modulation mode | Set to Absolute in a later build |
| B-3 | P3 | No info text (hover help) | Add after host validation |
| B-4 | P2 | Device is 1 410 px wide (H&H 1 216 px); large in Live's device view | Judge in Live (L15); consider folding ADVANCED to reduce width |
| B-5 | P3 | Arial instead of Live's font; own colour themes | By design; cosmetic |
| B-6 | P3 | Momentary pads and TAP create undo steps when pressed | Check Live's Edit menu in L22 |
| B-7 | P3 | Engine variables `s`, `f`, `i`, `gtp` share Gen operator names (docs suggest this is allowed) | Fallback test patch ready; rename only if G01 shows an error |

## Resolved in this milestone

- **Missing frozen baseline:** now shipped in `baseline/v0.1.0-dev/` with a hash check; the suite is reproducible from the archive.
- **Obsolete D2 evidence:** reconciled.
- **No Return configuration:** the Return variant was added.
- **No controller bank:** the "Dub" bank was added.
