import Foundation

struct PlaybackOpenBehavior: Equatable {
    let shouldEnterFullScreen: Bool
    let shouldStartPaused: Bool
}

enum PlaybackOpenBehaviorPolicy {
    static func decide(preferences: [String: Any],
                       defaultPreferences: [String: Any]) -> PlaybackOpenBehavior {
        let fullScreenWhenOpen = resolvedBool(
            key: IINAPreferenceKeyGeneral.fullScreenWhenOpen,
            preferences: preferences,
            defaultPreferences: defaultPreferences,
            fallback: false
        )

        let pauseWhenOpen = resolvedBool(
            key: IINAPreferenceKeyGeneral.pauseWhenOpen,
            preferences: preferences,
            defaultPreferences: defaultPreferences,
            fallback: false
        )

        return PlaybackOpenBehavior(
            shouldEnterFullScreen: fullScreenWhenOpen,
            shouldStartPaused: pauseWhenOpen
        )
    }

    private static func resolvedBool(key: String,
                                     preferences: [String: Any],
                                     defaultPreferences: [String: Any],
                                     fallback: Bool) -> Bool {
        if let value = preferences[key] as? Bool {
            return value
        }
        if let value = defaultPreferences[key] as? Bool {
            return value
        }
        return fallback
    }
}
