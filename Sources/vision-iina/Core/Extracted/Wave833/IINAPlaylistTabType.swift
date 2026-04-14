// Wave833: extracted from PlaylistViewController.swift
// Playlist view tab types and context-menu edit operation tags

enum IINAPlaylistTabType: Int, CaseIterable {
    case playlist = 0
    case chapters = 1

    init?(name: String) {
        switch name {
        case "playlist": self = .playlist
        case "chapters": self = .chapters
        default: return nil
        }
    }

    var name: String {
        switch self {
        case .playlist: return "playlist"
        case .chapters: return "chapters"
        }
    }
}

struct IINAPlaylistMenuItemTag {
    static let cut    = 601
    static let copy   = 602
    static let paste  = 603
    static let delete = 604
}
