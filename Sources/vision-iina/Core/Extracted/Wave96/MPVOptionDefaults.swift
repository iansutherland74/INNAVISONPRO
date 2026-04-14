import Foundation

enum MPVOptionDefaultsCore {
  static func propertyName(_ option: String?) -> String? {
    guard let option, !option.isEmpty else { return nil }
    return MPVOptionDefaultPropertyName.make(option)
  }
}
