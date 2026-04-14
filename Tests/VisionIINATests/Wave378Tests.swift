import XCTest
@testable import VisionIINA

final class Wave378Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave378.value(), 378)
    XCTAssertEqual(UtilityWave378.label(), "wave-378")
  }
}
