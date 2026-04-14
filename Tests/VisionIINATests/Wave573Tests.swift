import XCTest
@testable import VisionIINA

final class Wave573Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave573.value(), 573)
    XCTAssertEqual(UtilityWave573.label(), "wave-573")
  }
}
