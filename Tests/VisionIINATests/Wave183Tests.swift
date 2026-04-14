import XCTest
@testable import VisionIINA

final class Wave183Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave183.value(), 183)
    XCTAssertEqual(UtilityWave183.label(), "wave-183")
  }
}
