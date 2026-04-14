import XCTest
@testable import VisionIINA

final class Wave648Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave648.value(), 648)
    XCTAssertEqual(UtilityWave648.label(), "wave-648")
  }
}
