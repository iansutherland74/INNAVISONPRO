import Foundation

struct PlaybackStartDecision: Equatable {
    let shouldResumeFromLastPosition: Bool
    let startPaused: Bool
}

enum PlaybackStartActionPolicy {
    static func decide(preferences: [String: Any],
                       defaultPreferences: [String: Any]) -> PlaybackStartDecision {
        let shouldResume = resolvedBool(
            key: IINAPreferenceKeyGeneral.resumeLastPosition,
            preferences: preferences,
            defaultPreferences: defaultPreferences,
            fallback: false
        )

        let startPaused = resolvedBool(
            key: IINAPreferenceKeyGeneral.pauseWhenOpen,
            preferences: preferences,
            defaultPreferences: defaultPreferences,
            fallback: false
        )

        return PlaybackStartDecision(
            shouldResumeFromLastPosition: shouldResume,
            startPaused: startPaused
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
