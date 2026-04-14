import Foundation

enum UtilityFileExistencePolicy {
  static func exists(at url: URL, fileManager: FileManager = .default) -> Bool {
    fileManager.fileExists(atPath: url.path)
  }
}