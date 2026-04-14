import Foundation

enum SubtitleHashFormatting {
  /// OpenSub hash string format used upstream.
  static func openSubHex(_ value: UInt64) -> String {
    HexStringTools.paddedLowerHex(value, width: 16)
  }

  /// Shooter hash concatenation format used upstream.
  static func shooterCombined(_ chunks: [String]) -> String {
    chunks.joined(separator: ";")
  }
}
