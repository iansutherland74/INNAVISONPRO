import XCTest
@testable import VisionIINA

final class Wave611Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave611.value(), 611)
    XCTAssertEqual(UtilityWave611.label(), "wave-611")
  }
}
