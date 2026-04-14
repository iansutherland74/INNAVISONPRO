import XCTest
@testable import VisionIINA

final class Wave660Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave660.value(), 660)
    XCTAssertEqual(UtilityWave660.label(), "wave-660")
  }
}
