import XCTest
@testable import VisionIINA

final class Wave432Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave432.value(), 432)
    XCTAssertEqual(UtilityWave432.label(), "wave-432")
  }
}
