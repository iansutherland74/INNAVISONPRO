import Foundation

/// Phase 0 placeholder where extracted IINA core services can be connected.
final class PlaybackCoreBridge: PlaybackLifecycleObserver {
    private let lifecycleAdapter: PlaybackLifecycleAdapter
    private(set) var latestBootstrapSnapshot: PlaybackSessionBootstrapSnapshot?

    init(lifecycleAdapter: PlaybackLifecycleAdapter = PlaybackLifecycleDefaultAdapter()) {
        self.lifecycleAdapter = lifecycleAdapter
    }

    func initialize() {
        lifecycleAdapter.configure(observer: self)
        latestBootstrapSnapshot = PlaybackSessionBootstrap.build(
            preferences: [:],
            defaultPreferences: [:],
            hasNextItem: false
        )
        lifecycleAdapter.handle(.initialize)
        lifecycleAdapter.handle(.prepared)
    }

    @discardableResult
    func bootstrap(preferences: [String: Any],
                   defaultPreferences: [String: Any],
                   hasNextItem: Bool) -> PlaybackSessionBootstrapSnapshot {
        let snapshot = PlaybackSessionBootstrap.build(
            preferences: preferences,
            defaultPreferences: defaultPreferences,
            hasNextItem: hasNextItem
        )
        latestBootstrapSnapshot = snapshot
        return snapshot
    }

    func playbackLifecycleDidChange(state: PlaybackLifecycleState) {
        // Placeholder for UI-safe state propagation in future phases.
        _ = state
    }
}
