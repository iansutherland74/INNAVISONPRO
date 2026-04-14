import Foundation

enum UtilityWatchLaterProgressParser {
  static func parseSeconds(from firstLine: String?) -> Double? {
    guard let firstLine, firstLine.hasPrefix("start=") else { return nil }
    guard let value = firstLine.split(separator: "=").last else { return nil }
    return Double(value)
  }
}