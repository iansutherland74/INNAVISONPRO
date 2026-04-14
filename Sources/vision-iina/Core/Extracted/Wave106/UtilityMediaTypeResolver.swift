import Foundation

enum UtilityMediaTypeResolver {
  static func mediaType(forExtension rawExtension: String) -> MPVTrack.TrackType? {
    let ext = UtilityFileTypeSets.normalizedExtension(rawExtension)
    if UtilityFileTypeSets.videoExtensions.contains(ext) {
      return .video
    }
    if UtilityFileTypeSets.audioExtensions.contains(ext) {
      return .audio
    }
    if UtilityFileTypeSets.subtitleExtensions.contains(ext) {
      return .sub
    }
    return nil
  }
}