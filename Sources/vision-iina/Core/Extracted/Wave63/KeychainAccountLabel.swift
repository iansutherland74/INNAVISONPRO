import Foundation

enum KeychainAccountLabel {
  static func make(username: String, service: String) -> String {
    "\(service):\(username)"
  }
}
