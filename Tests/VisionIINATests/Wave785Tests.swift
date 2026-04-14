import XCTest
@testable import VisionIINA

final class Wave785Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave785.value(), 785)
    XCTAssertEqual(UtilityWave785.label(), "wave-785")
  }
}
