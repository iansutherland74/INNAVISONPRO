import XCTest
@testable import VisionIINA

final class Wave540Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave540.value(), 540)
    XCTAssertEqual(UtilityWave540.label(), "wave-540")
  }
}
