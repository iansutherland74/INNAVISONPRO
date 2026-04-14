import XCTest
@testable import VisionIINA

final class Wave536Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave536.value(), 536)
    XCTAssertEqual(UtilityWave536.label(), "wave-536")
  }
}
