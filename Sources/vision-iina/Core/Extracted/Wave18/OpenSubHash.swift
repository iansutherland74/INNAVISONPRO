import Foundation

enum OpenSubHashError: Error, Equatable {
  case cannotReadFile
  case fileTooSmall(Int)
}

enum OpenSubHash {
  static let defaultMinimumFileSize = 131072
  static let defaultChunkSize = 65536

  /// Calculates an OpenSub-style file hash.
  ///
  /// Returns nil for non-file URLs. For files, this reads chunks from the start and end of the file,
  /// sums 64-bit words using wrapping addition, then adds the file size.
  static func hash(
    for url: URL,
    minimumFileSize: Int = defaultMinimumFileSize,
    chunkSize: Int = defaultChunkSize
  ) throws -> String? {
    guard URLFileAccess.isLocalFile(url) else {
      return nil
    }

    let fileHandle: FileHandle
    do {
      fileHandle = try FileHandle(forReadingFrom: url)
    } catch {
      throw OpenSubHashError.cannotReadFile
    }
    defer { fileHandle.closeFile() }

    let fileSize = FileSizeReader.size(of: fileHandle)

    guard SubtitleFileSizePolicy.isOpenSubEligible(fileSize: fileSize, minimumFileSize: minimumFileSize) else {
      throw OpenSubHashError.fileTooSmall(minimumFileSize)
    }

    let safeChunkSize = ChunkOffsetSafety.clampedChunkSize(chunkSize, maxFileSize: fileSize)
    let offsets = SubtitleHashOffsets.openSubOffsets(fileSize: fileSize, chunkSize: safeChunkSize)

    let chunks = FileChunkReader.readChunks(from: fileHandle, offsets: offsets, chunkSize: safeChunkSize)
    var hash = chunks.map { data -> UInt64 in
      return data.checksum64Words
    }.reduce(0, &+)

    hash = hash &+ fileSize
    return SubtitleHashFormatting.openSubHex(hash)
  }
}
