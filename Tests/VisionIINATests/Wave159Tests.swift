import XCTest
@testable import VisionIINA

final class Wave159Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave159.value(), 159)
    XCTAssertEqual(UtilityWave159.label(), "wave-159")
  }
}
