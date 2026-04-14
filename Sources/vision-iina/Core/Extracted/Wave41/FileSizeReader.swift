import Foundation

enum FileSizeReader {
  static func size(of fileHandle: FileHandle) -> UInt64 {
    fileHandle.seekToEndOfFile()
  }
}
