import XCTest
@testable import VisionIINA

final class ISO639CodeNormalizerTests: XCTestCase {
  func testNormalize() {
    XCTAssertEqual(ISO639CodeNormalizer.normalize(" EN "), "en")
    XCTAssertNil(ISO639CodeNormalizer.normalize("   "))
  }
}
