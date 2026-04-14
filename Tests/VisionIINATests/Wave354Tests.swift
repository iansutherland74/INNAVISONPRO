import XCTest
@testable import VisionIINA

final class Wave354Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave354.value(), 354)
    XCTAssertEqual(UtilityWave354.label(), "wave-354")
  }
}
