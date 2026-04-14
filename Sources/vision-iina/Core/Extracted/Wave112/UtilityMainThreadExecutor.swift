import Foundation

enum UtilityMainThreadExecutor {
  static var isMainThread: Bool {
    Thread.isMainThread
  }
}