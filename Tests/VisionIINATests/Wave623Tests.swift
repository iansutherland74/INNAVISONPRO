import XCTest
@testable import VisionIINA

final class Wave623Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave623.value(), 623)
    XCTAssertEqual(UtilityWave623.label(), "wave-623")
  }
}
