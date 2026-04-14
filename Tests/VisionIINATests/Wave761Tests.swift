import XCTest
@testable import VisionIINA

final class Wave761Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave761.value(), 761)
    XCTAssertEqual(UtilityWave761.label(), "wave-761")
  }
}
