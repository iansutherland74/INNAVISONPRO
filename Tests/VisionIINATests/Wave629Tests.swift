import XCTest
@testable import VisionIINA

final class Wave629Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave629.value(), 629)
    XCTAssertEqual(UtilityWave629.label(), "wave-629")
  }
}
