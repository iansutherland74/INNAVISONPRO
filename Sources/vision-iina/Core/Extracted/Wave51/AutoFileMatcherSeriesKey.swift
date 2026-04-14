import Foundation

enum AutoFileMatcherSeriesKey {
  static func make(prefix: String, suffix: String) -> String {
    "\(prefix)|\(suffix)"
  }
}
