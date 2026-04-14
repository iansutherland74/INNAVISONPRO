import XCTest
@testable import VisionIINA

final class Wave442Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave442.value(), 442)
    XCTAssertEqual(UtilityWave442.label(), "wave-442")
  }
}
