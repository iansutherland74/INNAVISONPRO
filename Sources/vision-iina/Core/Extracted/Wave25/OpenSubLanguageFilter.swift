import Foundation

enum OpenSubLanguageFilter {
  struct Result: Equatable, Sendable {
    let accepted: [String]
    let ignored: [String]
  }

  /// Filters preferred language codes by supported language codes.
  /// Falls back to ["en"] when no preferred language is supported.
  static func filter(preferred: [String], supported: [String]) -> Result {
    var ignored: [String] = []
    var accepted: [String] = []

    for language in preferred {
      if supported.contains(language) {
        accepted.append(language)
      } else {
        ignored.append(language)
      }
    }

    accepted = OrderedUnique.strings(accepted)

    if accepted.isEmpty {
      accepted = SubtitleLanguageDefaults.fallback
    }

    return Result(accepted: accepted, ignored: ignored)
  }
}
