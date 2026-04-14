import XCTest
@testable import VisionIINA

final class Wave164Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave164.value(), 164)
    XCTAssertEqual(UtilityWave164.label(), "wave-164")
  }
}
