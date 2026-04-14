import XCTest
@testable import VisionIINA

final class Wave680Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave680.value(), 680)
    XCTAssertEqual(UtilityWave680.label(), "wave-680")
  }
}
