import Foundation

enum KeyBindingDataFileIndex {
  static func indexedName(base: String, index: Int) -> String {
    "\(base)-\(index)"
  }
}
