import Foundation

enum KeyMappingPrintableDescription {
  static func make(key: String, action: String, isIINACommand: Bool) -> String {
    "KeyMapping(\"\(key)\"->\"\(action)\" iina=\(isIINACommand))"
  }
}
