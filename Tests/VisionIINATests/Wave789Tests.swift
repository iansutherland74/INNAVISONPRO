import XCTest
@testable import VisionIINA

final class Wave789Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave789.value(), 789)
    XCTAssertEqual(UtilityWave789.label(), "wave-789")
  }
}
