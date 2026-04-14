// Wave826: extracted from JavascriptPluginMenuItem.swift
// Plugin menu item default state and action-call result semantics

struct IINAMenuItemDefaults {
    static let title:      String  = ""
    static let selected:   Bool    = false
    static let enabled:    Bool    = true
    static let keyBinding: String? = nil
    static let isSeparator: Bool   = false
}

enum IINAMenuItemActionResult: String, CaseIterable {
    case called      = "called"
    case empty       = "empty"
    case notFunction = "notFunction"
}
