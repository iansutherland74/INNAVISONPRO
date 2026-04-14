import XCTest
@testable import VisionIINA

final class Wave799Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave799.value(), 799)
    XCTAssertEqual(UtilityWave799.label(), "wave-799")
  }
}
