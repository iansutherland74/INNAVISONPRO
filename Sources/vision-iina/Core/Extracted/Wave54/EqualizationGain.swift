import Foundation

enum EqualizationGain {
  static func clamped(_ value: Double, min: Double = -20, max: Double = 20) -> Double {
    Swift.min(Swift.max(value, min), max)
  }
}
