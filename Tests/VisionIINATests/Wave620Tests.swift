import XCTest
@testable import VisionIINA

final class Wave620Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave620.value(), 620)
    XCTAssertEqual(UtilityWave620.label(), "wave-620")
  }
}
