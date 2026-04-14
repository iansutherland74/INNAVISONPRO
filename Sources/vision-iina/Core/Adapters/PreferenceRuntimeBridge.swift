import Foundation

struct PreferenceRuntimeSnapshot: Equatable {
    let screenshotFormat: IINAPreferenceScreenshotFormat
    let oscPosition: IINAPreferenceOSCPosition
    let enableOSD: Bool
    let subtitleOverrideLevel: IINAPreferenceSubOverrideLevel
}

struct PreferenceRuntimeBridge {
    static func fromUserDefaults(_ userDefaults: UserDefaults = .standard,
                                 defaults: [String: Any] = [:]) -> PreferenceRuntimeSnapshot {
        let persisted = userDefaults.dictionaryRepresentation()
        return snapshot(persisted: persisted, defaults: defaults)
    }

    static func snapshot(persisted: [String: Any], defaults: [String: Any] = [:]) -> PreferenceRuntimeSnapshot {
        let screenshotRaw = resolvedInt(
            key: IINAPreferenceKeyGeneral.screenshotFormat,
            persisted: persisted,
            defaults: defaults,
            fallback: IINAPreferenceScreenshotFormat.png.rawValue
        )

        let oscRaw = resolvedInt(
            key: IINAPreferenceKeyUI.oscPosition,
            persisted: persisted,
            defaults: defaults,
            fallback: IINAPreferenceOSCPosition.floating.rawValue
        )

        let subtitleOverrideRaw = resolvedInt(
            key: IINAPreferenceKeySubtitle.subOverrideLevel,
            persisted: persisted,
            defaults: defaults,
            fallback: IINAPreferenceSubOverrideLevel.yes.rawValue
        )

        let enableOSD = resolvedBool(
            key: IINAPreferenceKeyUI.enableOSD,
            persisted: persisted,
            defaults: defaults,
            fallback: true
        )

        return PreferenceRuntimeSnapshot(
            screenshotFormat: IINAPreferenceScreenshotFormat(rawValue: screenshotRaw) ?? .png,
            oscPosition: IINAPreferenceOSCPosition(rawValue: oscRaw) ?? .floating,
            enableOSD: enableOSD,
            subtitleOverrideLevel: IINAPreferenceSubOverrideLevel(rawValue: subtitleOverrideRaw) ?? .yes
        )
    }

    private static func resolvedInt(key: String,
                                    persisted: [String: Any],
                                    defaults: [String: Any],
                                    fallback: Int) -> Int {
        if let value = persisted[key] as? Int {
            return value
        }
        if let value = defaults[key] as? Int {
            return value
        }
        return fallback
    }

    private static func resolvedBool(key: String,
                                     persisted: [String: Any],
                                     defaults: [String: Any],
                                     fallback: Bool) -> Bool {
        if let value = persisted[key] as? Bool {
            return value
        }
        if let value = defaults[key] as? Bool {
            return value
        }
        return fallback
    }
}
