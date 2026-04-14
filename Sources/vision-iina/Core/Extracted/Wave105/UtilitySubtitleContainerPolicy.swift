import Foundation

enum UtilitySubtitleContainerPolicy {
  static func canContainSubtitles(_ rawExtension: String) -> Bool {
    let ext = UtilityFileTypeSets.normalizedExtension(rawExtension)
    return UtilityFileTypeSets.subtitleExtensions.contains(ext) || UtilityFileTypeSets.videoExtensions.contains(ext)
  }
}