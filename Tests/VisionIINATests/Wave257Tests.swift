import XCTest
@testable import VisionIINA

final class Wave257Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave257.value(), 257)
    XCTAssertEqual(UtilityWave257.label(), "wave-257")
  }
}
