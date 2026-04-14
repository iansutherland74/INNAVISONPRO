import XCTest
@testable import VisionIINA

final class Wave554Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave554.value(), 554)
    XCTAssertEqual(UtilityWave554.label(), "wave-554")
  }
}
