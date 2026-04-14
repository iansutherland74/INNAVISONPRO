import Foundation

enum OSDProgressMath {
  /// Mirrors upstream OSD percent normalization: ((value + bound) clamped to 0...2*bound) / (2*bound).
  static func toPercent(_ value: Double, _ bound: Double) -> Double {
    guard bound > 0 else { return 0 }
    let upper = bound * 2
    let shifted = value + bound
    let clamped = NumericMath.clamp(shifted, min: 0, max: upper)
    return clamped / upper
  }
}
