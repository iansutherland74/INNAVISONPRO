import XCTest
@testable import VisionIINA

final class Wave665Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave665.value(), 665)
    XCTAssertEqual(UtilityWave665.label(), "wave-665")
  }
}
