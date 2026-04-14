import Foundation

enum OSDMessageCore {
  static func render(template: String, value: String) -> String {
    OSDTokenTemplate.render(template, tokens: ["value": value])
  }
}
