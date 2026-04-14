import XCTest
@testable import VisionIINA

final class Wave326Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave326.value(), 326)
    XCTAssertEqual(UtilityWave326.label(), "wave-326")
  }
}
