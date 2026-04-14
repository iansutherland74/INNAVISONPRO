import XCTest
@testable import VisionIINA

final class Wave643Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave643.value(), 643)
    XCTAssertEqual(UtilityWave643.label(), "wave-643")
  }
}
