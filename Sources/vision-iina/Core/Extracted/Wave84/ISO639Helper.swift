import Foundation

enum ISO639HelperCore {
  static let table: [String: String] = ["en": "English", "ja": "Japanese", "fr": "French"]

  static func languageName(for code: String?) -> String? {
    guard let normalized = ISO639CodeNormalizer.normalize(code) else { return nil }
    return table[normalized]
  }
}
