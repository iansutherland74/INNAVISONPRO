import XCTest
@testable import VisionIINA

final class Wave734Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave734.value(), 734)
    XCTAssertEqual(UtilityWave734.label(), "wave-734")
  }
}
