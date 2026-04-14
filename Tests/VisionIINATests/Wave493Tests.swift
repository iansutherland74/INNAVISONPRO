import XCTest
@testable import VisionIINA

final class Wave493Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave493.value(), 493)
    XCTAssertEqual(UtilityWave493.label(), "wave-493")
  }
}
