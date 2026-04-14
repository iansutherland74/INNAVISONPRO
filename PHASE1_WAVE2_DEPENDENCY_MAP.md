# Phase 1 Wave 2 Dependency Map

Imported on: 2026-04-13
Source: /Users/sutherland/vision ui/iina/iina
Target: /Users/sutherland/vision ui/vision-iina/Sources/vision-iina/Core/Extracted/Wave2

## Files and Dependency Surface

| File | Internal Dependencies | External Frameworks | Notes |
|---|---|---|---|
| IINACommand.swift | None | Foundation | Enum of command identifiers; safe domain constant layer. |
| FloatingPointByteCountFormatter.swift | None | Foundation | Formatting utility with NumberFormatter only. |
| StringEncodingName.swift | None | Foundation/CoreFoundation | Encoding lookup helper using CFString conversion APIs. |
| CharEncoding.swift | None | Foundation | Static subtitle-encoding list with localization keys. |

## Deferred Candidates

| File | Deferred Reason |
|---|---|
| FileGroup.swift | Depends on Logger and grouping behavior that should be pulled with logging strategy, not in wave 2. |
| InfoDictionary.swift | Reads Bundle.main metadata and may require app-level key contract decisions before import. |
| VideoTime.swift | Depends on Constants/rounding extensions not yet extracted. |

## Validation Checklist
- [x] No imported file references AppKit/Cocoa symbols.
- [x] No imported file references NSWindow/NSView/NSTouchBar.
- [x] Build passes in visionOS target.
