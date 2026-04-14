import Foundation

enum PlaylistMoveArgsBuilder {
  static func make(from: Int, to: Int) -> [String] {
    ["\(from)", "\(to)"]
  }
}
