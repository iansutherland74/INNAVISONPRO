import Foundation

enum AutoFileMatcherCore {
  static func score(filename: String, query: String) -> Int {
    let f = filename.lowercased()
    let q = query.lowercased()
    if q.isEmpty { return 0 }
    return f.contains(q) ? q.count : 0
  }
}
