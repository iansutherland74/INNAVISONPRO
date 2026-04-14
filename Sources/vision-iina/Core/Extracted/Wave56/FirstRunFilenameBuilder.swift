import Foundation

enum FirstRunFilenameBuilder {
  static func make(from key: String) -> String {
    ".\(FirstRunKeySanitizer.sanitized(key))"
  }
}
