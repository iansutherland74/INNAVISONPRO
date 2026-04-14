import Foundation

final class FirstRunMarkerStore {
  struct Key: RawRepresentable, Hashable, Sendable {
    typealias RawValue = String
    var rawValue: String

    init(_ value: String) {
      self.rawValue = value
    }

    init(rawValue: String) {
      self.rawValue = rawValue
    }
  }

  private let baseURL: URL
  private let fileManager: FileManager

  init(baseURL: URL, fileManager: FileManager = .default) {
    self.baseURL = baseURL
    self.fileManager = fileManager
  }

  func markerURL(for key: Key) -> URL {
    FirstRunMarkerPolicy.markerURL(baseURL: baseURL, rawKey: key.rawValue)
  }

  func hasMarker(for key: Key) -> Bool {
    fileManager.fileExists(atPath: markerURL(for: key).path)
  }

  /// Returns true on first run for a key and creates marker file; false on subsequent runs.
  @discardableResult
  func isFirstRun(for key: Key) -> Bool {
    let fileURL = markerURL(for: key)

    if hasMarker(for: key) {
      return false
    }

    do {
      try fileManager.createDirectory(at: baseURL, withIntermediateDirectories: true)
    } catch {
      return false
    }

    return fileManager.createFile(atPath: fileURL.path, contents: nil, attributes: nil)
  }

  func unsetFirstRun(for key: Key) {
    try? fileManager.removeItem(at: markerURL(for: key))
  }
}
