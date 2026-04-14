import Foundation

enum EventNameNormalizer {
  static func normalize(_ value: String) -> String {
    value.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
  }
}
