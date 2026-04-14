import XCTest
@testable import VisionIINA

final class Wave175Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave175.value(), 175)
    XCTAssertEqual(UtilityWave175.label(), "wave-175")
  }
}
