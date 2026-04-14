import Foundation

enum FixedDecimalString {
  static func format(_ value: Double, digits: Int) -> String {
    String(format: "%.*f", max(0, digits), value)
  }
}
