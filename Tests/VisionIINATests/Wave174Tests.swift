import XCTest
@testable import VisionIINA

final class Wave174Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave174.value(), 174)
    XCTAssertEqual(UtilityWave174.label(), "wave-174")
  }
}
