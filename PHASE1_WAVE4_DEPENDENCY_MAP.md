# Phase 1 Wave 4 Dependency Map

Imported on: 2026-04-13
Source: /Users/sutherland/vision ui/iina/iina
Target: /Users/sutherland/vision ui/vision-iina/Sources/vision-iina/Core

## Files Included

| File | Type | Reason |
|---|---|---|
| Core/Extracted/Wave4/InfoDictionary.swift | Extracted utility | Build metadata abstraction for app/runtime diagnostics. |
| Core/Extracted/Wave4/VideoTime.swift | Extracted domain model | Fundamental media time representation and formatting behavior. |
| Core/Support/PortConstants.swift | Compatibility shim | Supplies minimal Constants.Time.infinite contract used by VideoTime. |
| Core/Support/PortDoubleRounding.swift | Compatibility shim | Supplies roundedHalfDown behavior used by VideoTime formatting. |

## Compatibility Edits Applied
- None in extracted files for this wave.
- Added focused support shims instead of importing full upstream files.

## Validation Checklist
- [x] Support shims satisfy VideoTime references.
- [x] Build passes in visionOS target.
