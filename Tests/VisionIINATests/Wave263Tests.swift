import XCTest
@testable import VisionIINA

final class Wave263Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave263.value(), 263)
    XCTAssertEqual(UtilityWave263.label(), "wave-263")
  }
}
