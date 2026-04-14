import Foundation

enum KeyCodeHelperCore {
  static func canonical(_ key: String) -> String {
    KeyCodeMpvNormalizer.normalize(key)
  }
}
