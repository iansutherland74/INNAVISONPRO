import XCTest
@testable import VisionIINA

final class Wave280Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave280.value(), 280)
    XCTAssertEqual(UtilityWave280.label(), "wave-280")
  }
}
