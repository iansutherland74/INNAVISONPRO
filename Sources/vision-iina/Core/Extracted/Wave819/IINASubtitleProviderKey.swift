// Wave819: extracted from JavascriptAPISubtitle.swift
// Subtitle provider protocol method names and internal JavaScript namespace constants

enum IINASubtitleProviderMethod: String, CaseIterable {
    case search      = "search"
    case download    = "download"
    case description = "description"
}

struct IINASubtitleConstants {
    static let customImplementation = "custom-implementation"
    static let itemDescField        = "desc"
    static let registryKey          = "__providers"
    static let invokeSearchKey      = "__invokeSearch"
}
