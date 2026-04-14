import Foundation

enum OpenSubQuotaMessage {
  static func make(remaining: Int, requests: Int) -> String {
    "Download #\(requests), remaining quota \(remaining)"
  }
}
