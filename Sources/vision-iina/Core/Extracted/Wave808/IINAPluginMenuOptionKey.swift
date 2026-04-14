import Foundation

/// visionOS-safe extraction of plugin menu option dictionary keys (JavascriptAPIMenu.swift, Phase 3)
enum IINAPluginMenuOptionKey: String, CaseIterable {
  case enabled = "enabled"
  case selected = "selected"
  case keyBinding = "keyBinding"

  static func parse(from dict: [String: Any], default defaultValue: Bool = false, for key: IINAPluginMenuOptionKey) -> Bool {
    return dict[key.rawValue] as? Bool ?? defaultValue
  }
}
