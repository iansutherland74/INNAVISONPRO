// Wave832: extracted from OnlineSubtitle.swift
// Subtitle provider origin classification and built-in provider IDs

enum IINAOnlineSubtitleOrigin: String, CaseIterable {
    case legacy = "legacy"
    case plugin  = "plugin"
}

struct IINABuiltinSubProviderID {
    static let openSub = ":opensubtitles"
    static let shooter  = ":shooter"
    static let assrt    = ":assrt"

    static let all: [String] = [openSub, shooter, assrt]

    static func isBuiltin(_ id: String) -> Bool {
        return all.contains(id)
    }
}
