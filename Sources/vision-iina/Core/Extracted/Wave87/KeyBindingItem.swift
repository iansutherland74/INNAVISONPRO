import Foundation

struct KeyBindingItemCore: Equatable {
  let key: String
  let action: String

  var confLine: String { "\(key) \(action)" }
}
