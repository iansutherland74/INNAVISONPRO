import XCTest
@testable import VisionIINA

final class Wave565Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave565.value(), 565)
    XCTAssertEqual(UtilityWave565.label(), "wave-565")
  }
}
