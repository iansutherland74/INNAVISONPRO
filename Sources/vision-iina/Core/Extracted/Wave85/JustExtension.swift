import Foundation

enum JustExtensionCore {
  static func jsonObject(from data: Data) -> Any? {
    try? JSONSerialization.jsonObject(with: data, options: [])
  }
}
