import XCTest
@testable import VisionIINA

final class Wave241Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave241.value(), 241)
    XCTAssertEqual(UtilityWave241.label(), "wave-241")
  }
}
