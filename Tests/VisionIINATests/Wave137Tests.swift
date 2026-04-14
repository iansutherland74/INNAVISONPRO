import XCTest
@testable import VisionIINA

final class Wave137Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave137.value(), 137)
    XCTAssertEqual(UtilityWave137.label(), "wave-137")
  }
}
