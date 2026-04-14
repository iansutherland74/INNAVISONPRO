import XCTest
@testable import VisionIINA

final class Wave668Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave668.value(), 668)
    XCTAssertEqual(UtilityWave668.label(), "wave-668")
  }
}
