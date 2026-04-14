import Foundation

enum MPVCommandWrappersCore {
  static func playlistMove(from: Int, to: Int) -> [String] {
    PlaylistMoveArgsBuilder.make(from: from, to: to)
  }
}
