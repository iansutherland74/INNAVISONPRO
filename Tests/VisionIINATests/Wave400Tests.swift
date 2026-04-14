import XCTest
@testable import VisionIINA

final class Wave400Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave400.value(), 400)
    XCTAssertEqual(UtilityWave400.label(), "wave-400")
  }
}
