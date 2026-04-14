import Foundation

enum PlaybackPauseTrigger {
    case appInactive
    case windowMinimized
    case systemSleep
}

enum PlaybackPauseConditionPolicy {
    static func shouldPause(trigger: PlaybackPauseTrigger,
                            preferences: [String: Any],
                            defaultPreferences: [String: Any]) -> Bool {
        switch trigger {
        case .appInactive:
            return resolvedBool(
                key: IINAPreferenceKeyGeneral.pauseWhenInactive,
                preferences: preferences,
                defaultPreferences: defaultPreferences,
                fallback: false
            )
        case .windowMinimized:
            return resolvedBool(
                key: IINAPreferenceKeyGeneral.pauseWhenMinimized,
                preferences: preferences,
                defaultPreferences: defaultPreferences,
                fallback: false
            )
        case .systemSleep:
            return resolvedBool(
                key: IINAPreferenceKeyGeneral.pauseWhenGoesToSleep,
                preferences: preferences,
                defaultPreferences: defaultPreferences,
                fallback: false
            )
        }
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
