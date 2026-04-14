import Foundation

struct ScreenshotRoutingDecision: Equatable {
    let saveToFile: Bool
    let copyToClipboard: Bool
    let format: IINAPreferenceScreenshotFormat
}

enum ScreenshotRoutingPolicy {
    static func decide(preferences: [String: Any],
                       defaultPreferences: [String: Any]) -> ScreenshotRoutingDecision {
        let saveToFile = resolvedBool(
            key: IINAPreferenceKeyGeneral.screenshotSaveToFile,
            preferences: preferences,
            defaultPreferences: defaultPreferences,
            fallback: true
        )

        let copyToClipboard = resolvedBool(
            key: IINAPreferenceKeyGeneral.screenshotCopyToClipboard,
            preferences: preferences,
            defaultPreferences: defaultPreferences,
            fallback: false
        )

        let formatRaw = resolvedInt(
            key: IINAPreferenceKeyGeneral.screenshotFormat,
            preferences: preferences,
            defaultPreferences: defaultPreferences,
            fallback: IINAPreferenceScreenshotFormat.png.rawValue
        )

        return ScreenshotRoutingDecision(
            saveToFile: saveToFile,
            copyToClipboard: copyToClipboard,
            format: IINAPreferenceScreenshotFormat(rawValue: formatRaw) ?? .png
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

    private static func resolvedInt(key: String,
                                    preferences: [String: Any],
                                    defaultPreferences: [String: Any],
                                    fallback: Int) -> Int {
        if let value = preferences[key] as? Int {
            return value
        }
        if let value = defaultPreferences[key] as? Int {
            return value
        }
        return fallback
    }
}
