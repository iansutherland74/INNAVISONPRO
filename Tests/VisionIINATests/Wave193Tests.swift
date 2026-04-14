import XCTest
@testable import VisionIINA

final class Wave193Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave193.value(), 193)
    XCTAssertEqual(UtilityWave193.label(), "wave-193")
  }
}
