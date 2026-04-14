import XCTest
@testable import VisionIINA

final class Wave678Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave678.value(), 678)
    XCTAssertEqual(UtilityWave678.label(), "wave-678")
  }
}
