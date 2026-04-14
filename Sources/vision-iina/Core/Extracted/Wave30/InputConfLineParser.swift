import Foundation

struct InputConfLineParseResult: Equatable, Sendable {
  let rawKey: String
  let rawAction: String
  let isIINACommand: Bool
  let comment: String?
}

enum InputConfLineParser {
  private static let iinaPrefixInFile = "#@iina"

  /// Parses one input.conf line. Returns nil for comments/blank/invalid lines.
  static func parse(_ line: String) -> InputConfLineParseResult? {
    var line = line
    var isIINACommand = false

    if line.trimmingCharacters(in: .whitespaces).isEmpty {
      return nil
    } else if line.hasPrefix("#") {
      if line.hasPrefix(iinaPrefixInFile) {
        isIINACommand = true
        line = String(line[line.index(line.startIndex, offsetBy: iinaPrefixInFile.count)...])
      } else {
        return nil
      }
    }

    var comment: String?
    if let sharpIndex = line.firstIndex(of: "#") {
      comment = String(line[line.index(after: sharpIndex)...])
      line = String(line[...line.index(before: sharpIndex)])
    }

    let split = line.split(maxSplits: 1, whereSeparator: { $0 == " " || $0 == "\t" })
    guard split.count >= 2 else { return nil }

    let key = String(split[0]).trimmingCharacters(in: .whitespaces)
    let action = String(split[1]).trimmingCharacters(in: .whitespaces)

    return InputConfLineParseResult(rawKey: key, rawAction: action, isIINACommand: isIINACommand, comment: comment)
  }
}
