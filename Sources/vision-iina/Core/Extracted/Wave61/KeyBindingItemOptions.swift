import Foundation

enum KeyBindingItemOptions {
  static func chooseIn(_ optionsList: String) -> [String] {
    optionsList.components(separatedBy: "|")
  }
}
