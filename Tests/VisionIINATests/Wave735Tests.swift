import XCTest
@testable import VisionIINA

final class Wave735Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave735.value(), 735)
    XCTAssertEqual(UtilityWave735.label(), "wave-735")
  }
}
