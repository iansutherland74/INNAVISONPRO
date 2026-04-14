import Foundation

/// visionOS-safe extraction of IINA app directory and file name constants (AppData.swift, Phase 3)
enum AppDataFolderConstants {
  static let userInputConfFolder = "input_conf"
  static let watchLaterFolder = "watch_later"
  static let pluginsFolder = "plugins"
  static let binariesFolder = "bin"
  static let historyFile = "history.plist"
  static let thumbnailCacheFolder = "thumb_cache"
  static let screenshotCacheFolder = "screenshot_cache"

  static func supportURL(for folder: String) -> URL {
    let appSupport = FileManager.default.urls(for: .applicationSupportDirectory, in: .userDomainMask).first!
    return appSupport.appendingPathComponent("iina").appendingPathComponent(folder)
  }
}
