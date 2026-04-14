import XCTest
@testable import VisionIINA

final class Wave226Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave226.value(), 226)
    XCTAssertEqual(UtilityWave226.label(), "wave-226")
  }
}
