import Foundation

enum NumericMath {
  static func clamp(_ value: Double, min lower: Double, max upper: Double) -> Double {
    Swift.min(Swift.max(value, lower), upper)
  }
}
