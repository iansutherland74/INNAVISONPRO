import XCTest
@testable import VisionIINA

final class Wave644Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave644.value(), 644)
    XCTAssertEqual(UtilityWave644.label(), "wave-644")
  }
}
