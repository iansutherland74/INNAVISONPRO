import Foundation

enum SubtitleFileSizePolicy {
  static let openSubMinimum = 131072
  static let shooterMinimum = 12288
  static let shooterOffsetSafetyMinimum = 8192

  static func isOpenSubEligible(fileSize: UInt64, minimumFileSize: Int = openSubMinimum) -> Bool {
    fileSize > UInt64(minimumFileSize)
  }

  static func normalizedShooterMinimum(_ minimumFileSize: Int = shooterMinimum) -> Int {
    max(minimumFileSize, shooterOffsetSafetyMinimum)
  }

  static func isShooterEligible(fileSize: UInt64, minimumFileSize: Int = shooterMinimum) -> Bool {
    fileSize >= UInt64(normalizedShooterMinimum(minimumFileSize))
  }
}
