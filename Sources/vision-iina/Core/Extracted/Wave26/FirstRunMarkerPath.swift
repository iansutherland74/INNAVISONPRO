import Foundation

enum FirstRunMarkerPath {
  static func fileName(for rawKey: String) -> String {
    ".\(rawKey)"
  }

  static func markerURL(baseURL: URL, rawKey: String) -> URL {
    baseURL.appendingPathComponent(fileName(for: rawKey), isDirectory: false)
  }
}
