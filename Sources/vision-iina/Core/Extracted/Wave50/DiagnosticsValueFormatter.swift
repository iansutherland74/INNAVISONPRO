import Foundation

enum DiagnosticsValueFormatter {
  static func boolString(_ value: Bool) -> String {
    value ? "true" : "false"
  }

  static func optionalString<T>(_ value: T?) -> String {
    value.map { String(describing: $0) } ?? "nil"
  }
}
