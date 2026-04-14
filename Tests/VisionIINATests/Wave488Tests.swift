import XCTest
@testable import VisionIINA

final class Wave488Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave488.value(), 488)
    XCTAssertEqual(UtilityWave488.label(), "wave-488")
  }
}
