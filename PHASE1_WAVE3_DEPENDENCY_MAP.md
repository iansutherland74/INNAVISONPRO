# Phase 1 Wave 3 Dependency Map

Imported on: 2026-04-13
Source: /Users/sutherland/vision ui/iina/iina
Target: /Users/sutherland/vision ui/vision-iina/Sources/vision-iina/Core

## Files Included

| File | Type | Reason |
|---|---|---|
| Core/Extracted/Wave3/FileGroup.swift | Extracted domain logic | Unlock subtitle/media grouping logic in core layer. |
| Core/Support/PortLogger.swift | Compatibility shim | Provides minimal logging API surface needed by extracted file(s). |

## Compatibility Edits Applied
- Replaced `Logger` calls in `FileGroup.swift` with `PortLogger`.
- Kept algorithm logic unchanged.

## Deferred Work
- Evaluate replacing `PortLogger` with a shared structured logging facade used by all extracted files.
- Import `Logger`-dependent files only after defining final logging contract for core module.

## Validation Checklist
- [x] FileGroup compiles against shim logging interface.
- [x] Build passes in visionOS target.
