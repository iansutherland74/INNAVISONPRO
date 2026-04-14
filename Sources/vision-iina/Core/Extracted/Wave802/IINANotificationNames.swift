import Foundation

/// visionOS-safe extraction of IINA Notification.Name constants (AppData.swift, Phase 3)
extension Notification.Name {
  static let iinaMainWindowChanged = Notification.Name("IINAMainWindowChanged")
  static let iinaPlaylistChanged = Notification.Name("IINAPlaylistChanged")
  static let iinaTracklistChanged = Notification.Name("IINATracklistChanged")
  static let iinaVIDChanged = Notification.Name("iinaVIDChanged")
  static let iinaAIDChanged = Notification.Name("iinaAIDChanged")
  static let iinaSIDChanged = Notification.Name("iinaSIDChanged")
  static let iinaMediaTitleChanged = Notification.Name("IINAMediaTitleChanged")
  static let iinaVFChanged = Notification.Name("IINAVfChanged")
  static let iinaAFChanged = Notification.Name("IINAAfChanged")
  static let iinaFileLoaded = Notification.Name("IINAFileLoaded")
  static let iinaHistoryUpdated = Notification.Name("IINAHistoryUpdated")
  static let iinaPluginChanged = Notification.Name("IINAPluginChanged")
  static let iinaPlayerStopped = Notification.Name("iinaPlayerStopped")
  static let iinaPlayerShutdown = Notification.Name("iinaPlayerShutdown")
  static let iinaHistoryTaskFinished = Notification.Name("iinaHistoryTaskFinished")
}

enum IINAError: Error {
  case unsupportedMPVNodeFormat(UInt32)
}
