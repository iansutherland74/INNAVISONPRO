import Foundation

enum FileChunkReader {
  static func readChunks(from fileHandle: FileHandle, offsets: [UInt64], chunkSize: Int) -> [Data] {
    offsets.map { offset in
      fileHandle.seek(toFileOffset: offset)
      return fileHandle.readData(ofLength: chunkSize)
    }
  }
}
