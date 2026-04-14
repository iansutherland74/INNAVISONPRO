// Wave811: extracted from JavascriptAPIGlobal.swift
// Player instance creation option dict keys used when calling global.createPlayerInstance()

enum IINAPlayerInstanceOptionKey: String, CaseIterable {
    case disableWindowAnimation = "disableWindowAnimation"
    case disableUI              = "disableUI"
    case label                  = "label"
    case enablePlugins          = "enablePlugins"
    case url                    = "url"

    static func isRecognized(_ key: String) -> Bool {
        return allCases.map(\.rawValue).contains(key)
    }
}
