import Foundation

enum InputConfLineKind: Equatable, Sendable {
  case empty
  case comment
  case iinaExtended(String)
  case regular(String)
}

enum InputConfLineClassifier {
  private static let iinaPrefixInFile = "#@iina"

  /// Classifies input.conf lines using KeyMapping parse rules.
  static func classify(_ line: String) -> InputConfLineKind {
    if line.trimmingCharacters(in: .whitespaces).isEmpty {
      return .empty
    }
    if line.hasPrefix("#") {
      if line.hasPrefix(iinaPrefixInFile) {
        let trimmed = String(line[line.index(line.startIndex, offsetBy: iinaPrefixInFile.count)...])
        return .iinaExtended(trimmed)
      }
      return .comment
    }
    return .regular(line)
  }
}
