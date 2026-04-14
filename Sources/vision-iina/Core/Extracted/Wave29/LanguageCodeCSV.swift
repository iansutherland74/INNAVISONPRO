import Foundation

enum LanguageCodeCSV {
  static func parsePreferred(_ raw: String?, fallback: [String] = ["en"]) -> [String] {
    let defaultFallback = fallback.isEmpty ? SubtitleLanguageDefaults.fallback : fallback
    guard let raw else { return defaultFallback }
    let parsed = OrderedUnique.strings(CSVLanguageParser.parse(raw))
    return parsed.isEmpty ? defaultFallback : parsed
  }
}
