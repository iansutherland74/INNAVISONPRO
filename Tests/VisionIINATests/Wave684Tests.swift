import XCTest
@testable import VisionIINA

final class Wave684Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave684.value(), 684)
    XCTAssertEqual(UtilityWave684.label(), "wave-684")
  }
}
