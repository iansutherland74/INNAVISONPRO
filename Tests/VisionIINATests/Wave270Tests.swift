import XCTest
@testable import VisionIINA

final class Wave270Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave270.value(), 270)
    XCTAssertEqual(UtilityWave270.label(), "wave-270")
  }
}
