import Foundation

enum UtilityDirectoryEnsurer {
  @discardableResult
  static func ensureExists(at url: URL, fileManager: FileManager = .default) throws -> Bool {
    var isDirectory: ObjCBool = false
    if fileManager.fileExists(atPath: url.path, isDirectory: &isDirectory), isDirectory.boolValue {
      return false
    }
    try fileManager.createDirectory(at: url, withIntermediateDirectories: true, attributes: nil)
    return true
  }
}