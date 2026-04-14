import XCTest
@testable import VisionIINA

final class Wave229Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave229.value(), 229)
    XCTAssertEqual(UtilityWave229.label(), "wave-229")
  }
}
