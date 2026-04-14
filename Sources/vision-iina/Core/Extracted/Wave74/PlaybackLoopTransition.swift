import Foundation

enum PlaybackLoopTransition {
  enum State { case cleared, aSet, bSet }

  static func next(_ state: State) -> State {
    switch state {
    case .cleared: return .aSet
    case .aSet: return .bSet
    case .bSet: return .cleared
    }
  }
}
