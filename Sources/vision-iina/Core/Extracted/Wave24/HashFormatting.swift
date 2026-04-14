import Foundation

enum HashFormatting {
  /// Formats OpenSub hash in the same 16-char lowercase hex layout used upstream.
  static func openSubHex(_ hash: UInt64) -> String {
    String(format: "%016qx", hash)
  }

  /// Formats Shooter hash chunks using semicolon separators.
  static func shooterJoined(_ chunks: [String]) -> String {
    chunks.joined(separator: ";")
  }
}
