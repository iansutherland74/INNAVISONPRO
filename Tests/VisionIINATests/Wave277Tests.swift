import XCTest
@testable import VisionIINA

final class Wave277Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave277.value(), 277)
    XCTAssertEqual(UtilityWave277.label(), "wave-277")
  }
}
