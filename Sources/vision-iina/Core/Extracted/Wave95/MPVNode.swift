import Foundation

enum MPVNodeCore {
  static func describe(formatRawValue: Int32) -> String {
    MPVNodeFormatName.name(for: formatRawValue)
  }
}
