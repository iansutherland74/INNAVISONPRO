import XCTest
@testable import VisionIINA

final class Wave410Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave410.value(), 410)
    XCTAssertEqual(UtilityWave410.label(), "wave-410")
  }
}
