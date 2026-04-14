import XCTest
@testable import VisionIINA

final class Wave288Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave288.value(), 288)
    XCTAssertEqual(UtilityWave288.label(), "wave-288")
  }
}
