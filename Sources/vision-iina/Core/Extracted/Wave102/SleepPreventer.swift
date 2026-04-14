import Foundation

enum SleepPreventerCore {
  static func shouldPreventSleep(idleDisabled: Bool, playbackActive: Bool) -> Bool {
    let mode = SleepPreventionDecision.decide(
      isPlaying: playbackActive,
      allowScreenSaverForAudio: !idleDisabled,
      isAudioOnly: false
    )
    return mode != .allowSleep
  }
}
