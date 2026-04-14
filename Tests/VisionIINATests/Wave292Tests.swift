import XCTest
@testable import VisionIINA

final class Wave292Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave292.value(), 292)
    XCTAssertEqual(UtilityWave292.label(), "wave-292")
  }
}
