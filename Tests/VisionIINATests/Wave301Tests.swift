import XCTest
@testable import VisionIINA

final class Wave301Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave301.value(), 301)
    XCTAssertEqual(UtilityWave301.label(), "wave-301")
  }
}
