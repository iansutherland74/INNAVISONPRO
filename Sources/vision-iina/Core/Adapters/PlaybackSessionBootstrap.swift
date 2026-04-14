import Foundation

struct PlaybackPausePolicySnapshot: Equatable {
    let onInactive: Bool
    let onMinimized: Bool
    let onSystemSleep: Bool
}

struct PlaybackSessionBootstrapSnapshot: Equatable {
    let start: PlaybackStartDecision
    let open: PlaybackOpenBehavior
    let window: PlaybackWindowBehavior
    let end: PlaybackEndAction
    let pause: PlaybackPausePolicySnapshot
    let screenshot: ScreenshotRoutingDecision
    let network: PlaybackNetworkStartupDecision
}

enum PlaybackSessionBootstrap {
    static func build(preferences: [String: Any],
                      defaultPreferences: [String: Any],
                      hasNextItem: Bool) -> PlaybackSessionBootstrapSnapshot {
        let start = PlaybackStartActionPolicy.decide(
            preferences: preferences,
            defaultPreferences: defaultPreferences
        )

        let open = PlaybackOpenBehaviorPolicy.decide(
            preferences: preferences,
            defaultPreferences: defaultPreferences
        )

        let window = PlaybackWindowBehaviorPolicy.decide(
            preferences: preferences,
            defaultPreferences: defaultPreferences
        )

        let end = PlaybackEndActionPolicy.decide(
            hasNextItem: hasNextItem,
            preferences: preferences,
            defaultPreferences: defaultPreferences
        )

        let pause = PlaybackPausePolicySnapshot(
            onInactive: PlaybackPauseConditionPolicy.shouldPause(
                trigger: .appInactive,
                preferences: preferences,
                defaultPreferences: defaultPreferences
            ),
            onMinimized: PlaybackPauseConditionPolicy.shouldPause(
                trigger: .windowMinimized,
                preferences: preferences,
                defaultPreferences: defaultPreferences
            ),
            onSystemSleep: PlaybackPauseConditionPolicy.shouldPause(
                trigger: .systemSleep,
                preferences: preferences,
                defaultPreferences: defaultPreferences
            )
        )

        let screenshot = ScreenshotRoutingPolicy.decide(
            preferences: preferences,
            defaultPreferences: defaultPreferences
        )

        let network = PlaybackNetworkStartupPolicy.decide(
            preferences: preferences,
            defaultPreferences: defaultPreferences
        )

        return PlaybackSessionBootstrapSnapshot(
            start: start,
            open: open,
            window: window,
            end: end,
            pause: pause,
            screenshot: screenshot,
            network: network
        )
    }
}
