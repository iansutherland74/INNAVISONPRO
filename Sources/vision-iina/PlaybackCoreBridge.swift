import Foundation

/// Phase 0 placeholder where extracted IINA core services can be connected.
final class PlaybackCoreBridge: PlaybackLifecycleObserver {
    private let lifecycleAdapter: PlaybackLifecycleAdapter

    init(lifecycleAdapter: PlaybackLifecycleAdapter = PlaybackLifecycleDefaultAdapter()) {
        self.lifecycleAdapter = lifecycleAdapter
    }

    func initialize() {
        lifecycleAdapter.configure(observer: self)
        lifecycleAdapter.handle(.initialize)
        lifecycleAdapter.handle(.prepared)
    }

    func playbackLifecycleDidChange(state: PlaybackLifecycleState) {
        // Placeholder for UI-safe state propagation in future phases.
        _ = state
    }
}
