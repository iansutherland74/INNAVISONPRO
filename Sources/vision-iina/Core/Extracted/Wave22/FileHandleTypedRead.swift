import Foundation

extension FileHandle {
  /// Reads exactly one value of type T from the file handle at the current offset.
  /// Returns nil if there are not enough bytes.
  func readValue<T>(as type: T.Type) -> T? {
    let size = MemoryLayout<T>.size
    let data = readData(ofLength: size)
    guard data.count == size else {
      return nil
    }
    return data.withUnsafeBytes { rawBuffer in
      rawBuffer.bindMemory(to: T.self).first
    }
  }
}
