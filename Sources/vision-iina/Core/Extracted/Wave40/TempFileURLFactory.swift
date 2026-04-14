import Foundation

enum TempFileURLFactory {
  static func make(_ filename: String) -> URL {
    URL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(filename)
  }
}
