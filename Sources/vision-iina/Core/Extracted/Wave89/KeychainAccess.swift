import Foundation

enum KeychainAccessCore {
  static func accountLabel(service: String, user: String) -> String {
    KeychainAccountLabel.make(username: user, service: service)
  }
}
