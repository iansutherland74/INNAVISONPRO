// Wave827: extracted from JavascriptPluginSubtitle.swift
// Subtitle item description dict keys returned by provider.description()

enum IINASubtitleDescriptionKey: String, CaseIterable {
    case name  = "name"
    case left  = "left"
    case right = "right"

    static func extract(from dict: [String: String]) -> (name: String, left: String, right: String) {
        return (
            dict[Self.name.rawValue]  ?? "",
            dict[Self.left.rawValue]  ?? "",
            dict[Self.right.rawValue] ?? ""
        )
    }
}
