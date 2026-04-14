import XCTest
@testable import VisionIINA

final class Wave208Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave208.value(), 208)
    XCTAssertEqual(UtilityWave208.label(), "wave-208")
  }
}
