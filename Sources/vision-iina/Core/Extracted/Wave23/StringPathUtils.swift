import Foundation

enum StringPathUtils {
  static func isDirectoryPath(_ path: String) -> Bool {
    var isDir = ObjCBool(false)
    FileManager.default.fileExists(atPath: path, isDirectory: &isDir)
    return isDir.boolValue
  }

  static func lowercasedPathExtension(_ path: String) -> String {
    (path as NSString).pathExtension.lowercased()
  }
}
