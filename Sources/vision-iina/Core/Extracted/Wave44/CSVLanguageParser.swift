import Foundation

enum CSVLanguageParser {
  static func parse(_ raw: String) -> [String] {
    raw.components(separatedBy: ",")
      .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
      .filter { !$0.isEmpty }
  }
}
