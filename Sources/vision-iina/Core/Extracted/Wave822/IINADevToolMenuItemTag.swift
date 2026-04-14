// Wave822: extracted from JavascriptDevTool.swift
// Dev-tool NSMenuItem tag constants (JS context vs. WKWebView)

struct IINADevToolMenuItemTag {
    static let jsMenuItemInstance = 1
    static let jsMenuItemWebView  = 2

    static func isKnown(_ tag: Int) -> Bool {
        return tag == jsMenuItemInstance || tag == jsMenuItemWebView
    }
}
