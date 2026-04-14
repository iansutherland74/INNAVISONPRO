import Foundation

enum UtilityLatestCreatedURL {
  static func latest(in urls: [URL], creationDate: (URL) -> Date?) -> URL? {
    urls.compactMap { url in
      creationDate(url).map { (url, $0) }
    }
    .max { $0.1 < $1.1 }?
    .0
  }
}