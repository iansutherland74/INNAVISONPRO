import Foundation

enum URLFileAccess {
  static func isLocalFile(_ url: URL) -> Bool {
    url.isFileURL
  }

  static func filePathIfLocal(_ url: URL) -> String? {
    guard url.isFileURL else { return nil }
    return url.path
  }
}
