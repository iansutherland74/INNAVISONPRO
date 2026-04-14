import Foundation

enum HardwareDecodeCodecSet {
  static func uniqueSorted(_ codecs: [String]) -> [String] {
    Array(Set(codecs)).sorted()
  }
}
