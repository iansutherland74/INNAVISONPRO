import Foundation

enum KeyBindingDataLoaderCore {
  static func nonEmptyLines(_ text: String) -> [String] {
    text.split(whereSeparator: \ .isNewline).map { String($0).trimmingCharacters(in: .whitespaces) }.filter { !$0.isEmpty }
  }
}
