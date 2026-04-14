import XCTest
@testable import VisionIINA

final class Wave234Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave234.value(), 234)
    XCTAssertEqual(UtilityWave234.label(), "wave-234")
  }
}
