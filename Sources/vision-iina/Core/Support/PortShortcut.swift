import Foundation

struct PortModifierFlags: OptionSet, Sendable {
  let rawValue: Int

  static let control = PortModifierFlags(rawValue: 1 << 0)
  static let option  = PortModifierFlags(rawValue: 1 << 1)
  static let shift   = PortModifierFlags(rawValue: 1 << 2)
  static let command = PortModifierFlags(rawValue: 1 << 3)
}

enum PortShortcutFormatter {
  private static let orderedSymbols: [(PortModifierFlags, String)] = [
    (.control, "⌃"), (.option, "⌥"), (.shift, "⇧"), (.command, "⌘")
  ]

  static func readableString(fromKey key: String, modifiers: PortModifierFlags) -> String {
    var key = key
    var modifiers = modifiers
    if let uScalar = key.first?.unicodeScalars.first,
       CharacterSet.uppercaseLetters.contains(uScalar) {
      modifiers.insert(.shift)
    }
    key = key.uppercased()
    return orderedSymbols.map { modifiers.contains($0.0) ? $0.1 : "" }
      .joined()
      .appending(key)
  }
}
