import XCTest
@testable import VisionIINA

final class Wave153Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave153.value(), 153)
    XCTAssertEqual(UtilityWave153.label(), "wave-153")
  }
}
