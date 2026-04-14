import Foundation

enum HexStringTools {
  static func isLowercaseHex(_ value: String) -> Bool {
    !value.isEmpty && value.range(of: "^[0-9a-f]+$", options: .regularExpression) != nil
  }

  static func paddedLowerHex(_ value: UInt64, width: Int) -> String {
    String(format: "%0*llx", max(1, width), value)
  }
}
