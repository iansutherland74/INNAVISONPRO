import XCTest
@testable import VisionIINA

final class Wave204Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave204.value(), 204)
    XCTAssertEqual(UtilityWave204.label(), "wave-204")
  }
}
