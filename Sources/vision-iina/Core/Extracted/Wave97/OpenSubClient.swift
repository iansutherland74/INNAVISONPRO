import Foundation

enum OpenSubClientCore {
  static func endpoint(path: String) -> String {
    switch path {
    case "/login":
      OpenSubAPIEndpoint.login
    case "/subtitles":
      OpenSubAPIEndpoint.subtitles
    default:
      OpenSubAPIEndpoint.base + path
    }
  }
}
