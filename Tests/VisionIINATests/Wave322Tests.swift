import XCTest
@testable import VisionIINA

final class Wave322Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave322.value(), 322)
    XCTAssertEqual(UtilityWave322.label(), "wave-322")
  }
}
