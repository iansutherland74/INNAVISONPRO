import XCTest
@testable import VisionIINA

final class Wave192Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave192.value(), 192)
    XCTAssertEqual(UtilityWave192.label(), "wave-192")
  }
}
