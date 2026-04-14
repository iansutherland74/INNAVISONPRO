import Foundation

enum UtilityFileEnsurer {
  @discardableResult
  static func ensureExists(at url: URL, fileManager: FileManager = .default) -> Bool {
    if fileManager.fileExists(atPath: url.path) {
      return false
    }
    return fileManager.createFile(atPath: url.path, contents: nil, attributes: nil)
  }
}