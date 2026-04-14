import XCTest
@testable import VisionIINA

final class Wave309Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave309.value(), 309)
    XCTAssertEqual(UtilityWave309.label(), "wave-309")
  }
}
