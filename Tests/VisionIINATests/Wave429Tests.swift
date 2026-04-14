import XCTest
@testable import VisionIINA

final class Wave429Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave429.value(), 429)
    XCTAssertEqual(UtilityWave429.label(), "wave-429")
  }
}
