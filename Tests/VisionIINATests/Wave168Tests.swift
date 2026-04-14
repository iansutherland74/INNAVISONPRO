import XCTest
@testable import VisionIINA

final class Wave168Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave168.value(), 168)
    XCTAssertEqual(UtilityWave168.label(), "wave-168")
  }
}
