import XCTest
@testable import VisionIINA

final class Wave355Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave355.value(), 355)
    XCTAssertEqual(UtilityWave355.label(), "wave-355")
  }
}
