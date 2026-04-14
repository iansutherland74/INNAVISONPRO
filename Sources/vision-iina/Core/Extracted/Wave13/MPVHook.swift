import Foundation

struct MPVHook: RawRepresentable, Sendable {
  typealias RawValue = String
  var rawValue: RawValue

  init(_ string: String) { self.rawValue = string }
  init?(rawValue: RawValue) { self.rawValue = rawValue }

  static let onBeforeStartFile = MPVHook("on_before_start_file")
  static let onLoad = MPVHook("on_load")
  static let onLoadFail = MPVHook("on_load_fail")
  static let onPreLoaded = MPVHook("on_preloaded")
  static let onUnLoad = MPVHook("on_unload")
}
