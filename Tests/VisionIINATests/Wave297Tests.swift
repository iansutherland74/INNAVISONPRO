import XCTest
@testable import VisionIINA

final class Wave297Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave297.value(), 297)
    XCTAssertEqual(UtilityWave297.label(), "wave-297")
  }
}
