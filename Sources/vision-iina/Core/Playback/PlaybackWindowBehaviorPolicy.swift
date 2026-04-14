import Foundation

struct PlaybackWindowBehavior: Equatable {
    let openInNewWindow: Bool
    let floatOnTop: Bool
}

enum PlaybackWindowBehaviorPolicy {
    static func decide(preferences: [String: Any],
                       defaultPreferences: [String: Any]) -> PlaybackWindowBehavior {
        let openInNewWindow = resolvedBool(
            key: IINAPreferenceKeyGeneral.alwaysOpenInNewWindow,
            preferences: preferences,
            defaultPreferences: defaultPreferences,
            fallback: false
        )

        let floatOnTop = resolvedBool(
            key: IINAPreferenceKeyGeneral.alwaysFloatOnTop,
            preferences: preferences,
            defaultPreferences: defaultPreferences,
            fallback: false
        )

        return PlaybackWindowBehavior(
            openInNewWindow: openInNewWindow,
            floatOnTop: floatOnTop
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
