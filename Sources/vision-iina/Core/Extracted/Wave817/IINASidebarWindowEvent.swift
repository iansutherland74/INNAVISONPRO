// Wave817: extracted from JavascriptAPISidebarView.swift
// Sidebar view lifecycle event names and associated error message constants

enum IINASidebarWindowEvent: String, CaseIterable {
    case windowLoaded = "iina.window-loaded"
}

struct IINASidebarAPIError {
    static let loadFileRequiresWindow =
        "sidebar.loadFile called when window is not available. " +
        "Please call it after receiving the \"iina.window-loaded\" event."
    static let showRequiresWindow =
        "sidebar.show called when window is not available. " +
        "Please call it after receiving the \"iina.window-loaded\" event."
    static let hideRequiresWindow =
        "sidebar.hide called when window is not available. " +
        "Please call it after receiving the \"iina.window-loaded\" event."
}
