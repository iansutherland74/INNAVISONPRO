import XCTest
@testable import VisionIINA

final class Wave610Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave610.value(), 610)
    XCTAssertEqual(UtilityWave610.label(), "wave-610")
  }
}
