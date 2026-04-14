import Foundation

enum UtilityLatestScreenshotFinder {
  static func latest(from directoryPath: String, fileManager: FileManager = .default) -> URL? {
    let folder = URL(fileURLWithPath: UtilityPathExpander.expandTilde(in: directoryPath))
    let contents = UtilityDirectoryContentsReader.readFiles(in: folder, fileManager: fileManager)
    return UtilityLatestCreatedURL.latest(in: contents) { url in
      try? url.resourceValues(forKeys: [.creationDateKey]).creationDate
    }
  }
}