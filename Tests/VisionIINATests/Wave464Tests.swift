import XCTest
@testable import VisionIINA

final class Wave464Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave464.value(), 464)
    XCTAssertEqual(UtilityWave464.label(), "wave-464")
  }
}
