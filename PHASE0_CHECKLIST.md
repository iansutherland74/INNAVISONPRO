# VisionIINA Phase 0 Checklist

## Objectives
- Create a clean visionOS app shell.
- Keep IINA source untouched while establishing a migration destination.
- Define seams between portable core logic and macOS-specific UI.

## Completed
- [x] Created `vision-iina` workspace folder.
- [x] Added XcodeGen project definition for visionOS app target.
- [x] Added minimal SwiftUI app shell and placeholder playback bridge.
- [x] Generated initial porting matrix.
- [x] Imported first safe Phase 1 core seed files (Foundation-only utilities).

## Next Actions (Phase 0)
- [x] Generate and open `VisionIINA.xcodeproj`.
- [x] Verify local build for `generic/platform=visionOS`.
- [x] Add `Core` folder for first extracted non-UI files.
- [x] Define `PortCompatibility.swift` with feature flags for unavailable macOS behavior.
- [x] Add adapter protocols for playback lifecycle and input events.

## Architecture Decisions Required
- [ ] Scene model: single `WindowGroup` first, immersive scene later.
- [ ] Rendering: mpv texture bridge into Metal-backed surface.
- [ ] Plugin policy: disable UI plugins initially, keep core scripting hooks behind feature flags.
- [ ] Update distribution path: remove Sparkle assumptions.

## Exit Criteria for Phase 0
- [x] visionOS app launches to a stable shell UI.
- [x] Build is repeatable from command line.
- [x] Stubbed core bridge compiles with no AppKit imports.
- [ ] Team has signed off on rendering and plugin strategy for Phase 1.
