import Foundation

enum OSDTokenTemplate {
  static func render(_ template: String, tokens: [String: String]) -> String {
    tokens.reduce(template) { partial, pair in
      partial.replacingOccurrences(of: "{{\(pair.key)}}", with: pair.value)
    }
  }
}
