import XCTest
@testable import VisionIINA

final class Wave626Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave626.value(), 626)
    XCTAssertEqual(UtilityWave626.label(), "wave-626")
  }
}
