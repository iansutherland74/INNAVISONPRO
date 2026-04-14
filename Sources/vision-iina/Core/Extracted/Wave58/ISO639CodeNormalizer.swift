import Foundation

enum ISO639CodeNormalizer {
  static func normalize(_ code: String?) -> String? {
    guard let code else { return nil }
    let normalized = code.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
    return normalized.isEmpty ? nil : normalized
  }
}
