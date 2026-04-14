import Foundation

enum KeyBindingTranslatorKeyPath {
  static func make(l10nKey: String?, name: String) -> String {
    guard let l10nKey else { return name }
    return "\(l10nKey).\(name)"
  }
}
