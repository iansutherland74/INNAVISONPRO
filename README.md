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
- Extraction coverage is complete through Wave830.
- Inventory is updated in `PHASE1_SEED_EXTRACTION.md`.
- Exact remaining-wave check: `MISSING_COUNT=0`.
- Latest full-suite validation on visionOS simulator is green (`TEST SUCCEEDED`, 1077 tests, 0 failures).

## Phase 3 Real Extractions (Wave801+)
- Wave801: `AppDataCoreConstants` — playback timing, speed, aspect, seek, volume maps
- Wave802: `IINANotificationNames` + `IINAError` — all IINA Notification.Name constants
- Wave803: `IINAPluginPathPrefix` — plugin magic path prefix detection (@tmp, @data, @video…)
- Wave804: `IINAPluginLogLevel` — console method → log level mapping
- Wave805: `IINAEventNamespace` + `IINAParsedEvent` — mpv/iina event name parser
- Wave806: `IINAFilterName` — mpv filter identifier constants (crop, flip, mirror…)
- Wave807: `IINAPluginInputEvent` + `IINAPluginInputPriority` — input event classification
- Wave808: `IINAPluginMenuOptionKey` — plugin menu option dictionary key parser
- Wave809: `IINAStringConstants` — display string constants (placeholder, font, symbols)
- Wave810: `AppDataFolderConstants` — app support directory and cache folder names
- Wave811: `IINAPlayerInstanceOptionKey` — player instance creation option dict keys
- Wave812: `IINAHTTPMethodName` + `IINAHTTPResponseKey` + `IINAHTTPRequestOptionKey` — HTTP API constants
- Wave813: `IINAMpvValueType` — mpv property value type enum + unsupported-set message
- Wave814: `IINAOverlayMode` + `IINAOverlaySimpleMode` — overlay mode classification + HTML constants
- Wave815: `IINAPlaylistItemKey` — playlist item metadata dict keys + factory helper
- Wave816: `IINAPluginPreferenceResolution` — pref key resolution (found / defaultFallback / undefined)
- Wave817: `IINASidebarWindowEvent` + `IINASidebarAPIError` — sidebar window lifecycle constants
- Wave818: `IINAWindowPropertyKey` — standalone window setProperty() dict keys with styleMask classification
- Wave819: `IINASubtitleProviderMethod` + `IINASubtitleConstants` — subtitle provider protocol constants
- Wave820: `IINAExecResultKey` + `IINAUtilsErrorCode` + `IINAChooseFileOptionKey` — utils exec/chooser constants
- Wave821: `IINAWebSocketListenerState` + `IINAWebSocketSendResult` + `IINAWebSocketErrorKey` — WebSocket state tokens
- Wave822: `IINADevToolMenuItemTag` — dev-tool NSMenuItem tag constants
- Wave823: `IINAMessageBridgeKey` — JS bridge window.iina property names + envelope indices
- Wave824: `IINAPluginPermission` + `IINAPluginInfoKey` — plugin permission enum + Info.json manifest keys
- Wave825: `IINAPluginAPINamespace` — plugin API namespace registry keys
- Wave826: `IINAMenuItemDefaults` + `IINAMenuItemActionResult` — menu item default state
- Wave827: `IINASubtitleDescriptionKey` — subtitle item description dict keys
- Wave828: `IINASubtitleItemJSProperty` — subtitle item JS-exported property names
- Wave829: `IINAPolyfillFunctionName` — JS polyfill global function names (setInterval, require…)
- Wave830: `IINAMenuTrackTag` + `IINAMenuStepTag` + `IINAMenuSpeedTag` — main menu NSMenuItem tags

## Phase 2 First Narrow Slice
- Selected high-risk Phase 2 target from `PORTING_MATRIX.md`: `iina/Utility.swift`.
- Initial scope: continue extracting UI-independent utility logic behind pure core helpers (Wave501+), with one integration path per wave and full-suite validation after each batch.
