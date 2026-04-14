import XCTest
@testable import VisionIINA

final class Wave189Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave189.value(), 189)
    XCTAssertEqual(UtilityWave189.label(), "wave-189")
  }
}
