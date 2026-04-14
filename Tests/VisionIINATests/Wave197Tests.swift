import XCTest
@testable import VisionIINA

final class Wave197Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave197.value(), 197)
    XCTAssertEqual(UtilityWave197.label(), "wave-197")
  }
}
