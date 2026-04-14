// Wave814: extracted from JavascriptAPIOverlay.swift
// Overlay display mode categorisation and simple-mode HTML structure constants

enum IINAOverlayMode: String, CaseIterable {
    case file   = "file"
    case simple = "simple"
}

struct IINAOverlaySimpleMode {
    static let systemFont      = "-apple-system, BlinkMacSystemFont, 'Helvetica Neue', sans-serif"
    static let defaultFontSize = "13px"
    static let contentDivID    = "content"
    static let styleDivID      = "style"
    static let bodyColor       = "white"
}
