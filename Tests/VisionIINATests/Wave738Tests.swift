import XCTest
@testable import VisionIINA

final class Wave738Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave738.value(), 738)
    XCTAssertEqual(UtilityWave738.label(), "wave-738")
  }
}
