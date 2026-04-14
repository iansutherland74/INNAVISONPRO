import XCTest
@testable import VisionIINA

final class Wave748Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave748.value(), 748)
    XCTAssertEqual(UtilityWave748.label(), "wave-748")
  }
}
