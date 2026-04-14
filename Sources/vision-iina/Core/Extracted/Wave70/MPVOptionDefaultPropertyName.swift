import Foundation

enum MPVOptionDefaultPropertyName {
  static func make(_ optionName: String) -> String {
    "option-info/\(optionName)/default-value"
  }
}
