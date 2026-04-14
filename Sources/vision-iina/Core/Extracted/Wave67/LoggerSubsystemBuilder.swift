import Foundation

enum LoggerSubsystemBuilder {
  static func make(_ value: String) -> String {
    value.trimmingCharacters(in: .whitespacesAndNewlines)
  }
}
