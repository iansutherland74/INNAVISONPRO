import Foundation

enum UtilityFileTypeSets {
  static let videoExtensions: Set<String> = [
    "mkv", "mp4", "avi", "m4v", "mov", "3gp", "ts", "mts", "m2ts", "wmv", "flv", "f4v", "asf", "webm", "rm", "rmvb", "qt", "dv", "mpg", "mpeg", "mxf", "vob", "gif", "ogv", "ogm"
  ]

  static let audioExtensions: Set<String> = [
    "mp3", "aac", "mka", "dts", "flac", "ogg", "oga", "mogg", "m4a", "ac3", "opus", "wav", "wv", "aiff", "aif", "ape", "tta", "tak"
  ]

  static let subtitleExtensions: Set<String> = [
    "utf", "utf8", "utf-8", "idx", "sub", "srt", "smi", "rt", "ssa", "aqt", "jss", "js", "ass", "mks", "vtt", "sup", "scc", "lrc"
  ]

  static let singleFilePlaylistExtensions: Set<String> = ["cue"]
  static let multipleFilePlaylistExtensions: Set<String> = ["m3u", "m3u8", "pls"]

  static var playableExtensions: Set<String> {
    videoExtensions.union(audioExtensions)
  }

  static func normalizedExtension(_ raw: String) -> String {
    raw.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
  }

  static func isPlayable(_ rawExtension: String) -> Bool {
    playableExtensions.contains(normalizedExtension(rawExtension))
  }
}