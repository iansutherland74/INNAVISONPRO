import XCTest
@testable import VisionIINA

final class Wave667Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave667.value(), 667)
    XCTAssertEqual(UtilityWave667.label(), "wave-667")
  }
}
