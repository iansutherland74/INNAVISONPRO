import Foundation

enum OpenSubSubtitleCore {
  static func quotaMessage(remaining: Int, requests: Int) -> String {
    OpenSubQuotaMessage.make(remaining: remaining, requests: requests)
  }
}
