import CryptoKit
import Foundation

extension Data {
  var md5Hex: String {
    Insecure.MD5.hash(data: self).map { String(format: "%02x", $0) }.joined()
  }

  /// Adds all full 64-bit words in the data using wrapping addition.
  var checksum64Words: UInt64 {
    withUnsafeBytes { rawBuffer in
      rawBuffer.bindMemory(to: UInt64.self).reduce(0, &+)
    }
  }
}
