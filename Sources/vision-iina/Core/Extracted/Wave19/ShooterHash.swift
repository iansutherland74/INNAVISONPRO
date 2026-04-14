import Foundation

enum ShooterHashError: Error, Equatable {
  case cannotReadFile
  case fileTooSmall(Int)
}

enum ShooterHash {
  static let defaultMinimumFileSize = 12288
  static let defaultChunkSize = 4096

  /// Calculates Shooter-style file hash using MD5 chunks at four fixed offsets.
  static func hash(
    for url: URL,
    minimumFileSize: Int = defaultMinimumFileSize,
    chunkSize: Int = defaultChunkSize
  ) throws -> String {
    let fileHandle: FileHandle
    do {
      fileHandle = try FileHandle(forReadingFrom: url)
    } catch {
      throw ShooterHashError.cannotReadFile
    }
    defer { fileHandle.closeFile() }

    let fileSize = FileSizeReader.size(of: fileHandle)

    let minimumSize = SubtitleFileSizePolicy.normalizedShooterMinimum(minimumFileSize)
    guard fileSize >= UInt64(minimumSize) else {
      throw ShooterHashError.fileTooSmall(minimumSize)
    }

    guard ChunkOffsetSafety.hasSafeEndOffset(fileSize: fileSize, requiredTailBytes: 8192) else {
      throw ShooterHashError.fileTooSmall(minimumSize)
    }

    let offsets = SubtitleHashOffsets.shooterOffsets(fileSize: fileSize)

    let safeChunkSize = ChunkOffsetSafety.clampedChunkSize(chunkSize, maxFileSize: fileSize)
    let readChunks = FileChunkReader.readChunks(from: fileHandle, offsets: offsets, chunkSize: safeChunkSize)
    let chunks = readChunks.map { data in
      return data.md5Hex
    }

    return SubtitleHashFormatting.shooterCombined(chunks)
  }
}
