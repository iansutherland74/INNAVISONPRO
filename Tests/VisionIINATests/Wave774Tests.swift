import XCTest
@testable import VisionIINA

final class Wave774Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave774.value(), 774)
    XCTAssertEqual(UtilityWave774.label(), "wave-774")
  }
}
