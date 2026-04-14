import Foundation

struct ShooterRequestFileInfo: Sendable, Equatable {
  let hashValue: String
  let path: String

  var dictionary: [String: Any] {
    [
      "filehash": hashValue,
      "pathinfo": path,
      "format": "json",
    ]
  }
}
