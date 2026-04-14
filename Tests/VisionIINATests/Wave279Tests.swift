import XCTest
@testable import VisionIINA

final class Wave279Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave279.value(), 279)
    XCTAssertEqual(UtilityWave279.label(), "wave-279")
  }
}
