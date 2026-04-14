import Foundation

enum UtilityWatchLaterHasher {
  static func mpvWatchLaterID(for filename: String) -> String {
    Data(filename.utf8).md5Hex
  }
}