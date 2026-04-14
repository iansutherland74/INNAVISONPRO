import Foundation

enum ShooterRequestPayloadBuilder {
  static func make(filehash: String, path: String) -> [String: Any] {
    ["filehash": filehash, "pathinfo": path, "format": "json"]
  }
}
