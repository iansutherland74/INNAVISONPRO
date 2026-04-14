import Foundation

enum SleepPreventionDecision {
  enum Mode: String {
    case allowSleep
    case preventDisplaySleep
    case preventSystemSleepOnly
  }

  static func decide(isPlaying: Bool, allowScreenSaverForAudio: Bool, isAudioOnly: Bool) -> Mode {
    guard isPlaying else { return .allowSleep }
    if allowScreenSaverForAudio && isAudioOnly {
      return .preventSystemSleepOnly
    }
    return .preventDisplaySleep
  }
}
