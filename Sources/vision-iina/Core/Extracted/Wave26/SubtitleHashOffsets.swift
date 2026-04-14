import Foundation

enum SubtitleHashOffsets {
  /// Offsets used by OpenSub hash calculation.
  static func openSubOffsets(fileSize: UInt64, chunkSize: Int) -> [UInt64] {
    [0, fileSize - UInt64(chunkSize)]
  }

  /// Offsets used by Shooter hash calculation.
  static func shooterOffsets(fileSize: UInt64) -> [UInt64] {
    [
      4096,
      fileSize / 3 * 2,
      fileSize / 3,
      fileSize - 8192,
    ]
  }
}
