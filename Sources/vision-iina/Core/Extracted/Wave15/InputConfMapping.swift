import Foundation

private let iinaPrefix = "@iina"
private let iinaPrefixInFile = "#" + iinaPrefix

struct InputConfMapping: Equatable, Sendable {
  let rawKey: String
  let rawAction: String
  let isIINACommand: Bool
  let comment: String?

  init(rawKey: String, rawAction: String, isIINACommand: Bool = false, comment: String? = nil) {
    self.rawKey = rawKey
    self.rawAction = rawAction
    self.isIINACommand = isIINACommand
    self.comment = comment
  }

  var action: [String] {
    InputConfActionTokens.tokenize(rawAction)
  }

  var section: String? {
    InputConfSectionParser.section(fromActionTokens: action)
  }

  var confFileFormat: String {
    InputConfFormatting.formatLine(
      rawKey: rawKey,
      actionTokens: action,
      isIINACommand: isIINACommand,
      comment: comment
    )
  }

  static func parseInputConf(at path: String) -> [InputConfMapping]? {
    guard let reader = StreamReader(path: path) else {
      return nil
    }

    var mappings: [InputConfMapping] = []
    while let line: String = reader.nextLine() {
      guard let parsed = InputConfLineParser.parse(line) else { continue }
      mappings.append(
        InputConfMapping(
          rawKey: parsed.rawKey,
          rawAction: parsed.rawAction,
          isIINACommand: parsed.isIINACommand,
          comment: parsed.comment
        )
      )
    }

    return mappings
  }

  static func generateInputConf(from mappings: [InputConfMapping]) -> String {
    mappings.reduce(InputConfFormatting.generatedHeader) { prev, item in
      prev + "\(item.confFileFormat)\n"
    }
  }
}
