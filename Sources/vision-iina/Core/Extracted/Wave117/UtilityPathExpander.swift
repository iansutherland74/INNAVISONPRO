import Foundation

enum UtilityPathExpander {
  static func expandTilde(in path: String) -> String {
    NSString(string: path).expandingTildeInPath
  }
}