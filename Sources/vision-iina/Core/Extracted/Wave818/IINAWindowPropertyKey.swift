// Wave818: extracted from JavascriptAPIStandaloneWindow.swift
// Standalone window setProperty() dict keys and their categories

enum IINAWindowPropertyKey: String, CaseIterable {
    case title               = "title"
    case resizable           = "resizable"
    case fullSizeContentView = "fullSizeContentView"
    case hideTitleBar        = "hideTitleBar"

    /// True if the property maps directly to an NSWindow.StyleMask flag
    var isStyleMaskKey: Bool {
        switch self {
        case .resizable, .fullSizeContentView: return true
        case .title, .hideTitleBar:            return false
        }
    }
}
