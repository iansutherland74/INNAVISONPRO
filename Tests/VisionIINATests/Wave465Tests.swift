import XCTest
@testable import VisionIINA

final class Wave465Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave465.value(), 465)
    XCTAssertEqual(UtilityWave465.label(), "wave-465")
  }
}
