import Foundation

enum FirstRunKeySanitizer {
  static func isValid(_ key: String) -> Bool {
    !key.isEmpty && !key.contains("/") && !key.contains("\0")
  }

  static func sanitized(_ key: String) -> String {
    let trimmed = key.trimmingCharacters(in: .whitespacesAndNewlines)
    let replaced = trimmed.replacingOccurrences(of: "/", with: "_")
    return replaced.isEmpty ? "marker" : replaced
  }
}
