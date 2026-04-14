import Foundation

enum KeyCodeMpvNormalizer {
  static func normalize(_ raw: String) -> String {
    raw.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
  }
}
