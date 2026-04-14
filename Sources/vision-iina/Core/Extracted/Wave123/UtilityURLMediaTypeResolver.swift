import Foundation

enum UtilityURLMediaTypeResolver {
  static func mediaType(for url: URL) -> MPVTrack.TrackType? {
    UtilityMediaTypeResolver.mediaType(forExtension: UtilityURLNormalizedExtension.lowercasedExtension(of: url))
  }
}