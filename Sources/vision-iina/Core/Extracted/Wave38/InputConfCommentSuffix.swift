import Foundation

enum InputConfCommentSuffix {
  static func format(_ comment: String?) -> String {
    guard let comment, !comment.isEmpty else { return "" }
    return "   #\(comment)"
  }
}
