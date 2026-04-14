import XCTest
@testable import VisionIINA

final class Wave203Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave203.value(), 203)
    XCTAssertEqual(UtilityWave203.label(), "wave-203")
  }
}
