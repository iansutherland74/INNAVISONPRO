import Foundation

enum LanguageListPresentation {
  static func normalizedCSV(_ languages: [String]) -> String {
    languages
      .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
      .filter { !$0.isEmpty }
      .sorted()
      .joined(separator: ",")
  }
}
