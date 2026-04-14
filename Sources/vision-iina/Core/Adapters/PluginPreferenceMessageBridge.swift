import Foundation

struct PluginPreferenceMessageBridge {
    static let resolvedEventName = "plugin.preference.resolved"
    static let dataKey = "data"
    static let preferenceKey = "key"
    static let resolutionKey = "resolution"
    static let valueKey = "value"

    static func makeResolutionEnvelope(
        key: String,
        preferences: [String: Any],
        defaultPreferences: [String: Any]
    ) -> [Any] {
        let (resolution, value) = IINAPluginPreferenceResolution.resolve(
            key: key,
            preferences: preferences,
            defaultPreferences: defaultPreferences
        )

        var payload: [String: Any] = [
            preferenceKey: key,
            resolutionKey: resolution.rawValue,
        ]
        if let value {
            payload[valueKey] = value
        }

        return [
            resolvedEventName,
            [dataKey: payload],
        ]
    }
}
