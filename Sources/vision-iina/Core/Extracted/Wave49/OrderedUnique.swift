import Foundation

enum OrderedUnique {
  static func strings(_ values: [String]) -> [String] {
    var seen = Set<String>()
    var result: [String] = []
    for value in values where !seen.contains(value) {
      seen.insert(value)
      result.append(value)
    }
    return result
  }
}
