import Foundation

enum PlaybackInfoCore {
  static func nextLoopState(_ current: String) -> String {
    let state: PlaybackLoopTransition.State
    switch current {
    case "aSet":
      state = .aSet
    case "bSet":
      state = .bSet
    default:
      state = .cleared
    }
    let next = PlaybackLoopTransition.next(state)
    switch next {
    case .cleared: return "cleared"
    case .aSet: return "aSet"
    case .bSet: return "bSet"
    }
  }
}
