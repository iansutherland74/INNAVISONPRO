import Foundation

enum PlaybackEndAction: String, CaseIterable {
    case replayCurrent
    case playNext
    case stopAndKeepOpen
    case stopAndClose
}

enum PlaybackEndActionPolicy {
    static func decide(hasNextItem: Bool,
                       preferences: [String: Any],
                       defaultPreferences: [String: Any]) -> PlaybackEndAction {
        let autoRepeat = resolvedBool(
            key: IINAPreferenceKeyGeneral.autoRepeat,
            preferences: preferences,
            defaultPreferences: defaultPreferences,
            fallback: false
        )

        let keepOpenOnFileEnd = resolvedBool(
            key: IINAPreferenceKeyGeneral.keepOpenOnFileEnd,
            preferences: preferences,
            defaultPreferences: defaultPreferences,
            fallback: false
        )

        if autoRepeat {
            return .replayCurrent
        }
        if hasNextItem {
            return .playNext
        }
        return keepOpenOnFileEnd ? .stopAndKeepOpen : .stopAndClose
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
