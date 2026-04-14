import XCTest
@testable import VisionIINA

final class Wave296Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave296.value(), 296)
    XCTAssertEqual(UtilityWave296.label(), "wave-296")
  }
}
