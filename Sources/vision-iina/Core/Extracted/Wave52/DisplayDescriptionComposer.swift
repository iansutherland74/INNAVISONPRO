import Foundation

enum DisplayDescriptionComposer {
  static func compose(id: String, attributes: [String]) -> String {
    guard !attributes.isEmpty else { return "Display \(id)" }
    return "Display \(id) (\(attributes.joined(separator: ", ")) )"
  }
}
