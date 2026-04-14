import Foundation

enum UtilitySubtitleScaleMapper {
  static func toDisplayScale(from realScale: Double) -> Double {
    realScale >= 1 ? realScale : -1 / realScale
  }
}