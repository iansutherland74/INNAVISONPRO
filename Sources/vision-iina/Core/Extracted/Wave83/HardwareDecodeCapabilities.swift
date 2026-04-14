import Foundation

enum HardwareDecodeCapabilitiesCore {
  static func summary(_ supportedCodecs: [String]) -> String {
    HardwareDecodeCodecSet.uniqueSorted(supportedCodecs).joined(separator: ",")
  }
}
