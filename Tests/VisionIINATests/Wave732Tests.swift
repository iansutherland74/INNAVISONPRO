import XCTest
@testable import VisionIINA

final class Wave732Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave732.value(), 732)
    XCTAssertEqual(UtilityWave732.label(), "wave-732")
  }
}
