// Wave836: extracted from PluginStandaloneWindow.swift
// Default frame dimensions and title suffix for standalone plugin windows

struct IINAStandaloneWindowDefaults {
    static let width:  Double = 600
    static let height: Double = 400

    static let titleSeparator  = " — "
    static let messageHandlerName = "iina"

    static func makeTitle(pluginName: String) -> String {
        return "Window\(titleSeparator)\(pluginName)"
    }
}
