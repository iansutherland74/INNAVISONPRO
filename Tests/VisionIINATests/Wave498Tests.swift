import XCTest
@testable import VisionIINA

final class Wave498Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave498.value(), 498)
    XCTAssertEqual(UtilityWave498.label(), "wave-498")
  }
}
