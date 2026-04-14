import Foundation

/// visionOS-safe extraction of AppData playback constants (AppData.swift, Phase 3)
enum AppDataCoreConstants {
  static let syncTimeInterval: Double = 0.1
  static let syncTimePreciseInterval: Double = 0.04
  static let availableSpeedValues: [Double] = [0.03125, 0.0625, 0.125, 0.25, 0.5, 1, 2, 4, 8, 16, 32]
  static let minSpeed: Double = 0.25
  static let maxSpeed: Double = 16.0
  static let mpvMinPlaybackSpeed: Double = 0.01
  static let aspects: [String] = ["4:3", "5:4", "16:9", "16:10", "1:1", "3:2", "2.21:1", "2.35:1", "2.39:1"]
  static let aspectsInPanel: [String] = ["Default", "4:3", "16:9", "16:10", "21:9", "5:4"]
  static let cropsInPanel: [String] = ["None", "4:3", "16:9", "16:10", "21:9", "5:4"]
  static let rotations: [Int] = [0, 90, 180, 270]
  static let seekAmountMap: [Double] = [0, 0.05, 0.1, 0.25, 0.5]
  static let seekAmountMapMouse: [Double] = [0, 0.5, 1, 2, 4]
  static let volumeMap: [Double] = [0, 0.25, 0.5, 0.75, 1]
  static let playbackSpeedMap: [Double] = [0, 0.001, 0.002, 0.005, 0.01]
  static let widthWhenNoVideo = 640
  static let heightWhenNoVideo = 360
}
