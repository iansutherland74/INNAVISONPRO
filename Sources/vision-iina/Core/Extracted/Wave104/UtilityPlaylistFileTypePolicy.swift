import Foundation

enum UtilityPlaylistFileTypePolicy {
  static func isSingleFilePlaylist(_ rawExtension: String) -> Bool {
    UtilityFileTypeSets.singleFilePlaylistExtensions.contains(UtilityFileTypeSets.normalizedExtension(rawExtension))
  }

  static func isMultipleFilePlaylist(_ rawExtension: String) -> Bool {
    UtilityFileTypeSets.multipleFilePlaylistExtensions.contains(UtilityFileTypeSets.normalizedExtension(rawExtension))
  }

  static func isPlaylist(_ rawExtension: String) -> Bool {
    isSingleFilePlaylist(rawExtension) || isMultipleFilePlaylist(rawExtension)
  }
}