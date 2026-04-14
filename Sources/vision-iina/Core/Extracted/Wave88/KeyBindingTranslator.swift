import Foundation

enum KeyBindingTranslatorCore {
  static func normalizeKeyPath(_ path: [String]) -> [String] {
    let key = path.first
    let name = path.dropFirst().joined(separator: ".")
    return [KeyBindingTranslatorKeyPath.make(l10nKey: key, name: name)]
  }
}
