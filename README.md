# VisionIINA

visionOS bootstrap workspace for porting IINA to Apple Vision Pro.

## Requirements
- Xcode 16+
- xcodegen (`brew install xcodegen`)

## Generate Project
```bash
cd "/Users/sutherland/vision ui/vision-iina"
xcodegen generate
```

## Build (visionOS)
```bash
xcodebuild -project VisionIINA.xcodeproj \
  -scheme VisionIINA \
  -configuration Debug \
  -destination "generic/platform=visionOS" \
  build
```

## Run Unit Tests (visionOS Simulator)
```bash
xcodebuild -project VisionIINA.xcodeproj \
  -scheme VisionIINA \
  -configuration Debug \
  -destination "platform=visionOS Simulator,name=Apple Vision Pro" \
  test
```

## Current Status
- Phase 0 shell is in place.
- Player integration is intentionally stubbed in `PlaybackCoreBridge.swift`.
- Migration planning is documented in `PORTING_MATRIX.md`.

## Phase 1 Completion (Frozen Milestone)
- Extraction coverage is complete through Wave700.
- Inventory is updated in `PHASE1_SEED_EXTRACTION.md`.
- Exact remaining-wave check: `MISSING_COUNT=0`.
- Latest full-suite validation on visionOS simulator is green (`TEST SUCCEEDED`, 885 tests, 0 failures).

## Phase 2 First Narrow Slice
- Selected high-risk Phase 2 target from `PORTING_MATRIX.md`: `iina/Utility.swift`.
- Initial scope: continue extracting UI-independent utility logic behind pure core helpers (Wave501+), with one integration path per wave and full-suite validation after each batch.
