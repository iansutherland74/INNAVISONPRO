import Foundation

/// visionOS-safe extraction of plugin path magic prefix handling (JavascriptAPI.swift, Phase 3)
enum IINAPluginPathPrefix: String, CaseIterable {
  case tmp = "@tmp/"
  case data = "@data/"
  case video = "@video/"
  case audio = "@audio/"
  case sub = "@sub"
  case current = "@current/"

  static func detect(in path: String) -> IINAPluginPathPrefix? {
    return allCases.first { path.hasPrefix($0.rawValue) }
  }
}
