import XCTest
@testable import VisionIINA

final class Wave702Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave702.value(), 702)
    XCTAssertEqual(UtilityWave702.label(), "wave-702")
  }
}
