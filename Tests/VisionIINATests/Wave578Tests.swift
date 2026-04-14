import XCTest
@testable import VisionIINA

final class Wave578Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave578.value(), 578)
    XCTAssertEqual(UtilityWave578.label(), "wave-578")
  }
}
