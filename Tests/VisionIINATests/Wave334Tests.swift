import XCTest
@testable import VisionIINA

final class Wave334Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave334.value(), 334)
    XCTAssertEqual(UtilityWave334.label(), "wave-334")
  }
}
