import Foundation

enum ChunkOffsetSafety {
  static func hasSafeEndOffset(fileSize: UInt64, requiredTailBytes: UInt64) -> Bool {
    fileSize >= requiredTailBytes
  }

  static func clampedChunkSize(_ chunkSize: Int, maxFileSize: UInt64) -> Int {
    let upperBound = max(1, Int(min(UInt64(Int.max), maxFileSize)))
    return max(1, min(chunkSize, upperBound))
  }
}
