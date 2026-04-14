import XCTest
@testable import VisionIINA

final class Wave248Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave248.value(), 248)
    XCTAssertEqual(UtilityWave248.label(), "wave-248")
  }
}
