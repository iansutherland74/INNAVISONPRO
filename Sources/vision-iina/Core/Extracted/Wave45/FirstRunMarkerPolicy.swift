import Foundation

enum FirstRunMarkerPolicy {
  static func markerURL(baseURL: URL, rawKey: String) -> URL {
    let safeKey = FirstRunKeySanitizer.sanitized(rawKey)
    return FirstRunMarkerNaming.markerURL(baseURL: baseURL, key: safeKey)
  }
}
