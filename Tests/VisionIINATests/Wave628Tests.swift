import XCTest
@testable import VisionIINA

final class Wave628Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave628.value(), 628)
    XCTAssertEqual(UtilityWave628.label(), "wave-628")
  }
}
