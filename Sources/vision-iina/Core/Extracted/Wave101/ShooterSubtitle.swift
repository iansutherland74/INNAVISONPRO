import Foundation

enum ShooterSubtitleCore {
  static func payload(path: String, fileHash: String) -> [String: Any] {
    ShooterRequestPayloadBuilder.make(filehash: fileHash, path: path)
  }
}
