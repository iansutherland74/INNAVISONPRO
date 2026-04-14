import XCTest
@testable import VisionIINA

final class Wave287Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave287.value(), 287)
    XCTAssertEqual(UtilityWave287.label(), "wave-287")
  }
}
