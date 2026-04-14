import XCTest
@testable import VisionIINA

final class Wave126Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave126.value(), 126)
    XCTAssertEqual(UtilityWave126.label(), "wave-126")
  }
}
