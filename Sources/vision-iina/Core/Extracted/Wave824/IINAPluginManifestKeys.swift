// Wave824: extracted from JavascriptPlugin.swift
// Plugin permission enum and Info.json manifest key constants

enum IINAPluginPermission: String, CaseIterable {
    case networkRequest      = "network-request"
    case showOSD             = "show-osd"
    case showAlert           = "show-alert"
    case displayVideoOverlay = "video-overlay"
    case accessFileSystem    = "file-system"

    var isDangerous: Bool {
        switch self {
        case .networkRequest, .accessFileSystem: return true
        default:                                 return false
        }
    }
}

struct IINAPluginInfoKey {
    static let name              = "name"
    static let author            = "author"
    static let identifier        = "identifier"
    static let version           = "version"
    static let entry             = "entry"
    static let globalEntry       = "globalEntry"
    static let description       = "description"
    static let preferencesPage   = "preferencesPage"
    static let helpPage          = "helpPage"
    static let allowedDomains    = "allowedDomains"
    static let subtitleProviders = "subtitleProviders"
    static let sidebarTab        = "sidebarTab"
    static let permissions       = "permissions"
    static let ghRepo            = "ghRepo"
    static let ghVersion         = "ghVersion"
    static let preferenceDefaults = "preferenceDefaults"

    // Author sub-keys
    struct Author {
        static let name  = "name"
        static let url   = "url"
        static let email = "email"
    }
}
