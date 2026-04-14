import XCTest
@testable import VisionIINA

final class Wave637Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave637.value(), 637)
    XCTAssertEqual(UtilityWave637.label(), "wave-637")
  }
}
