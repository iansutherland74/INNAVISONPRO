import XCTest
@testable import VisionIINA

final class Wave167Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave167.value(), 167)
    XCTAssertEqual(UtilityWave167.label(), "wave-167")
  }
}
