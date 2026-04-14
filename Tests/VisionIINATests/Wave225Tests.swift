import XCTest
@testable import VisionIINA

final class Wave225Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave225.value(), 225)
    XCTAssertEqual(UtilityWave225.label(), "wave-225")
  }
}
