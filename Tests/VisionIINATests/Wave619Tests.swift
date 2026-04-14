import XCTest
@testable import VisionIINA

final class Wave619Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave619.value(), 619)
    XCTAssertEqual(UtilityWave619.label(), "wave-619")
  }
}
