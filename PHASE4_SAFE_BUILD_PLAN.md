# Phase 4 Safe Build Plan (Post-Wave844)

Updated: 2026-04-14
Baseline tag: phase3-complete-2026-04-14

## Goal
Move from extraction-only coverage to runtime integration with minimal blast radius and strict rollback safety.

## Risk-Ordered Execution

1. Preference/runtime adapters (Low)
- Integrate extracted preference constants/enums into one live runtime path.
- Add contract tests for fallback/default/invalid-input behavior.
- No UI/windowing rewrite in this slice.

2. Playback lifecycle bridge hardening (Low-Medium)
- Expand adapter-based state transitions and event telemetry coverage.
- Keep platform APIs isolated behind adapters.

3. Plugin preference + message bridge convergence (Medium)
- Unify plugin preference resolution behavior with runtime preference bridge.
- Validate compatibility of key/value handling and default precedence.

4. PlayerCore policy extraction + adapter seams (Medium-High)
- Extract decision logic from AppKit-coupled paths into pure core policies.
- Add tests before replacing call sites.

5. Windowing/scene migration (High)
- Replace AppKit window lifecycle with visionOS scene model.
- Gate with feature flags and staged rollout.

6. Plugin UI/window surfaces (High)
- Rebuild plugin overlay/sidebar/window host APIs for visionOS constraints.

7. Rendering-path decision closure (Very High)
- Finalize mpv output bridge strategy and production constraints.

## Safety Gates For Every Slice
- Keep each slice to one primary runtime path.
- Add/expand behavior tests before integration changes.
- Keep full-suite validation green after each slice.
- Commit in small, reversible units.
- If a slice fails validation, revert to baseline tag and retry with narrower scope.

## Slice 1 Definition
- Implement a preference runtime bridge that resolves:
  - screenshot format
  - OSC position
  - OSD enabled
  - subtitle override level
- Contract behavior:
  - persisted value wins
  - default fallback used when missing
  - invalid persisted value falls back safely
