import XCTest
@testable import VisionIINA

final class Wave402Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave402.value(), 402)
    XCTAssertEqual(UtilityWave402.label(), "wave-402")
  }
}
