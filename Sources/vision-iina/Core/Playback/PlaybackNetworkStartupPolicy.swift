import Foundation

struct PlaybackNetworkStartupDecision: Equatable {
    let enableCache: Bool
    let cacheSizeMB: Int
    let bufferSizeKB: Int
    let proxyURL: String?
    let hardwareDecoder: IINAPreferenceHardwareDecoder
}

enum PlaybackNetworkStartupPolicy {
    static func decide(preferences: [String: Any],
                       defaultPreferences: [String: Any]) -> PlaybackNetworkStartupDecision {
        let enableCache = resolvedBool(
            key: IINAPreferenceKeyNetwork.enableCache,
            preferences: preferences,
            defaultPreferences: defaultPreferences,
            fallback: true
        )

        let cacheSizeMB = resolvedInt(
            key: IINAPreferenceKeyNetwork.defaultCacheSize,
            preferences: preferences,
            defaultPreferences: defaultPreferences,
            fallback: 153600
        )

        let bufferSizeKB = resolvedInt(
            key: IINAPreferenceKeyNetwork.cacheBufferSize,
            preferences: preferences,
            defaultPreferences: defaultPreferences,
            fallback: 15360
        )

        let proxyURL = resolvedString(
            key: IINAPreferenceKeyNetwork.httpProxy,
            preferences: preferences,
            defaultPreferences: defaultPreferences
        )

        let hardwareDecoderRaw = resolvedInt(
            key: IINAPreferenceKeyUI.hardwareDecoder,
            preferences: preferences,
            defaultPreferences: defaultPreferences,
            fallback: IINAPreferenceHardwareDecoder.auto.rawValue
        )

        return PlaybackNetworkStartupDecision(
            enableCache: enableCache,
            cacheSizeMB: cacheSizeMB,
            bufferSizeKB: bufferSizeKB,
            proxyURL: proxyURL,
            hardwareDecoder: IINAPreferenceHardwareDecoder(rawValue: hardwareDecoderRaw) ?? .auto
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

    private static func resolvedString(key: String,
                                       preferences: [String: Any],
                                       defaultPreferences: [String: Any]) -> String? {
        if let value = preferences[key] as? String {
            return value
        }
        if let value = defaultPreferences[key] as? String {
            return value
        }
        return nil
    }
}
