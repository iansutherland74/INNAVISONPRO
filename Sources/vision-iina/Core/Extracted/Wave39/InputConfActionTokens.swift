import Foundation

enum InputConfActionTokens {
  static func tokenize(_ rawAction: String) -> [String] {
    rawAction.components(separatedBy: .whitespaces).filter { !$0.isEmpty }
  }
}
