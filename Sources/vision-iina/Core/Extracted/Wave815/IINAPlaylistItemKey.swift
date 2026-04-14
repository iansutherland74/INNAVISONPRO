// Wave815: extracted from JavascriptAPIPlaylist.swift
// Playlist item metadata dict keys exposed to the plugin JavaScript API

enum IINAPlaylistItemKey: String, CaseIterable {
    case filename  = "filename"
    case title     = "title"
    case isPlaying = "isPlaying"
    case isCurrent = "isCurrent"

    static func makeItem(filename: String,
                         title: String?,
                         isPlaying: Bool,
                         isCurrent: Bool) -> [String: Any?] {
        return [
            Self.filename.rawValue:  filename,
            Self.title.rawValue:     title,
            Self.isPlaying.rawValue: isPlaying,
            Self.isCurrent.rawValue: isCurrent,
        ]
    }
}
