import Foundation

enum UtilityWatchLaterFileLocator {
  static func fileURL(baseURL: URL, watchLaterID: String) -> URL {
    baseURL.appendingPathComponent(watchLaterID)
  }
}