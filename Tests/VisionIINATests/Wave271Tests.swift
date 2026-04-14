import XCTest
@testable import VisionIINA

final class Wave271Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave271.value(), 271)
    XCTAssertEqual(UtilityWave271.label(), "wave-271")
  }
}
