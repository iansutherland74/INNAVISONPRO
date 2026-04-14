import Foundation

enum UtilityWatchLaterProgressLoader {
  static func loadSeconds(from fileURL: URL) -> Double? {
    guard let reader = StreamReader(path: fileURL.path) else { return nil }
    defer { reader.close() }
    return UtilityWatchLaterProgressParser.parseSeconds(from: reader.nextLine())
  }
}