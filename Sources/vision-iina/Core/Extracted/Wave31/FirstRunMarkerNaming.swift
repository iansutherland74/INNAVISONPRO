import Foundation

enum FirstRunMarkerNaming {
  static func markerFilename(for key: String) -> String {
    ".\(key)"
  }

  static func markerURL(baseURL: URL, key: String) -> URL {
    baseURL.appendingPathComponent(markerFilename(for: key), isDirectory: false)
  }
}
