import XCTest
@testable import VisionIINA

final class Wave152Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave152.value(), 152)
    XCTAssertEqual(UtilityWave152.label(), "wave-152")
  }
}
