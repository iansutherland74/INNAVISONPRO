import Foundation

enum LoggerCore {
  static func subsystem(_ bundleIdentifier: String?) -> String {
    LoggerSubsystemBuilder.make(bundleIdentifier ?? "")
  }
}
