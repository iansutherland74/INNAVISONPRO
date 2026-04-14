import Foundation

enum UtilityDirectoryBuilder {
  static func appendingDirectory(baseURL: URL, name: String) -> URL {
    baseURL.appendingPathComponent(name, isDirectory: true)
  }
}