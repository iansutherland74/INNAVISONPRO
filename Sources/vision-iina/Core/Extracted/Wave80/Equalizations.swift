import Foundation

enum EqualizationsCore {
  static func clamp(_ value: Double) -> Double {
    Swift.min(Swift.max(value, -20), 20)
  }
}
