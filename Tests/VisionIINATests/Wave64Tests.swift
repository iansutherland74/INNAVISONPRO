import XCTest
@testable import VisionIINA

final class KeyCodeMpvNormalizerTests: XCTestCase {
  func testNormalize() { XCTAssertEqual(KeyCodeMpvNormalizer.normalize("  Shift+K  "), "shift+k") }
}
