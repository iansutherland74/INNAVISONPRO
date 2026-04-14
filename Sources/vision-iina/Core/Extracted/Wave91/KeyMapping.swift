import Foundation

enum KeyMappingCore {
  static func describe(key: String, action: String) -> String {
    KeyMappingPrintableDescription.make(key: key, action: action, isIINACommand: false)
  }
}
