import Foundation

enum PlaybackLifecycleState: Equatable {
    case idle
    case initializing
    case ready
    case playing
    case paused
    case stopped
    case failed(String)
}

enum PlaybackLifecycleEvent: Equatable {
    case initialize
    case prepared
    case play
    case pause
    case stop
    case error(String)
}

protocol PlaybackLifecycleObserver: AnyObject {
    func playbackLifecycleDidChange(state: PlaybackLifecycleState)
}

protocol PlaybackLifecycleAdapter: AnyObject {
    var currentState: PlaybackLifecycleState { get }

    func configure(observer: PlaybackLifecycleObserver?)
    func handle(_ event: PlaybackLifecycleEvent)
}
