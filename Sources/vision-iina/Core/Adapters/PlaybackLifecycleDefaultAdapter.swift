import Foundation

final class PlaybackLifecycleDefaultAdapter: PlaybackLifecycleAdapter {
    private weak var observer: PlaybackLifecycleObserver?

    private(set) var currentState: PlaybackLifecycleState = .idle {
        didSet {
            observer?.playbackLifecycleDidChange(state: currentState)
        }
    }

    func configure(observer: PlaybackLifecycleObserver?) {
        self.observer = observer
    }

    func handle(_ event: PlaybackLifecycleEvent) {
        let eventName: String
        switch event {
        case .initialize:
            eventName = "initialize"
            currentState = .initializing
        case .prepared:
            eventName = "prepared"
            currentState = .ready
        case .play:
            eventName = "play"
            currentState = .playing
        case .pause:
            eventName = "pause"
            currentState = .paused
        case .stop:
            eventName = "stop"
            currentState = .stopped
        case let .error(message):
            eventName = "error"
            currentState = .failed(message)
        }

        let eventID = EventControllerCore.eventID(category: "playback.lifecycle", name: eventName)
        PortLogger.log("Lifecycle event handled: \(eventID)", level: .verbose)
    }
}
