import Foundation

/// visionOS-safe extraction of plugin console log level mapping (JavascriptAPIConsole.swift, Phase 3)
enum IINAPluginLogLevel: String, CaseIterable {
  case debug = "debug"
  case warning = "warning"
  case error = "error"

  static let consoleMethodMap: [String: IINAPluginLogLevel] = [
    "log": .debug,
    "warn": .warning,
    "error": .error
  ]
}
