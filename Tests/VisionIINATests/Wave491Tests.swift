import XCTest
@testable import VisionIINA

final class Wave491Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave491.value(), 491)
    XCTAssertEqual(UtilityWave491.label(), "wave-491")
  }
}
