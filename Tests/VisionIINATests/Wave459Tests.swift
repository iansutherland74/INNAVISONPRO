import XCTest
@testable import VisionIINA

final class Wave459Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave459.value(), 459)
    XCTAssertEqual(UtilityWave459.label(), "wave-459")
  }
}
