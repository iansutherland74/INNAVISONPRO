import XCTest
@testable import VisionIINA

final class Wave366Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave366.value(), 366)
    XCTAssertEqual(UtilityWave366.label(), "wave-366")
  }
}
