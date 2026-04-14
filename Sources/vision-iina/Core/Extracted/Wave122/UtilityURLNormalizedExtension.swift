import Foundation

enum UtilityURLNormalizedExtension {
  static func lowercasedExtension(of url: URL) -> String {
    UtilityFileTypeSets.normalizedExtension(url.pathExtension)
  }
}