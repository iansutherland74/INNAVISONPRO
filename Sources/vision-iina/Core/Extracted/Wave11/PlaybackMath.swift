import Foundation

enum PlaybackMath {
  /// Converts an offset in [-bound, +bound] into normalized [0, 1] progress.
  /// Mirrors upstream OSD mapping logic while remaining framework-agnostic.
  static func normalizedOffset(_ value: Double, bound: Double) -> Double {
    guard bound > 0 else { return 0.5 }
    let minValue = 0.0
    let maxValue = bound * 2
    let shifted = value + bound
    let clamped = min(max(shifted, minValue), maxValue)
    return clamped / maxValue
  }

  /// Constrains playback position into [0, duration], matching PlaybackInfo behavior.
  static func constrainedPosition(_ position: Double, duration: Double) -> Double {
    guard duration >= 0 else { return 0 }
    return min(max(position, 0), duration)
  }

  /// Parses dimensions from GeometryDef-style string tokens.
  /// Accepts plain numbers (e.g. "640") and percentages (e.g. "50%") when base is provided.
  static func resolvedDimension(_ token: String?, base: Double?) -> Double? {
    guard let token, !token.isEmpty else { return nil }
    if token.hasSuffix("%") {
      guard let base else { return nil }
      let raw = String(token.dropLast())
      guard let percent = Double(raw) else { return nil }
      return base * percent / 100.0
    }
    return Double(token)
  }
}
