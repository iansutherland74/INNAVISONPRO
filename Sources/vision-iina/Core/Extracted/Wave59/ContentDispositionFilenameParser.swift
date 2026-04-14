import Foundation

enum ContentDispositionFilenameParser {
  static func parseFilename(_ header: String?) -> String? {
    guard let header else { return nil }
    let marker = "filename="
    guard let range = header.range(of: marker) else { return nil }
    let raw = header[range.upperBound...]
    return String(raw).trimmingCharacters(in: CharacterSet(charactersIn: "\" "))
  }
}
