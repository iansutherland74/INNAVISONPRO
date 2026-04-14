import Foundation

enum InputConfSectionParser {
  static func section(fromActionTokens tokens: [String]) -> String? {
    guard tokens.count > 1, let first = tokens.first, !first.isEmpty, first[first.startIndex] == "{" else {
      return nil
    }
    guard let endIndex = first.firstIndex(of: "}") else {
      return nil
    }
    let inner = first[first.index(after: first.startIndex)..<endIndex]
    return inner.trimmingCharacters(in: .whitespaces)
  }

  static func section(fromRawAction rawAction: String) -> String? {
    let tokens = rawAction.components(separatedBy: .whitespaces).filter { !$0.isEmpty }
    return section(fromActionTokens: tokens)
  }
}
