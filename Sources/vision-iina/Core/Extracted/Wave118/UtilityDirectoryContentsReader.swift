import Foundation

enum UtilityDirectoryContentsReader {
  static func readFiles(in folder: URL, fileManager: FileManager = .default) -> [URL] {
    (try? fileManager.contentsOfDirectory(
      at: folder,
      includingPropertiesForKeys: [.creationDateKey],
      options: .skipsSubdirectoryDescendants
    )) ?? []
  }
}