import XCTest
@testable import VisionIINA

final class Wave580Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave580.value(), 580)
    XCTAssertEqual(UtilityWave580.label(), "wave-580")
  }
}
