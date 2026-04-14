// Wave816: extracted from JavascriptAPIPreferences.swift
// Preference key resolution — found in live prefs, default prefs, or undefined

enum IINAPluginPreferenceResolution: String, CaseIterable {
    case found          = "found"
    case defaultFallback = "defaultFallback"
    case undefined      = "undefined"

    static func resolve(key: String,
                        preferences: [String: Any],
                        defaultPreferences: [String: Any]) -> (IINAPluginPreferenceResolution, Any?) {
        if let value = preferences[key] {
            return (.found, value)
        }
        if let value = defaultPreferences[key] {
            return (.defaultFallback, value)
        }
        return (.undefined, nil)
    }
}
