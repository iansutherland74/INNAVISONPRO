import XCTest
@testable import VisionIINA

final class Wave267Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave267.value(), 267)
    XCTAssertEqual(UtilityWave267.label(), "wave-267")
  }
}
