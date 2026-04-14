import Foundation

enum EventControllerCore {
  static func eventID(category: String, name: String) -> String {
    "\(category).\(name)".lowercased()
  }
}
