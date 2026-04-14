import XCTest
@testable import VisionIINA

final class Wave382Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave382.value(), 382)
    XCTAssertEqual(UtilityWave382.label(), "wave-382")
  }
}
