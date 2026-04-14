import XCTest
@testable import VisionIINA

final class Wave434Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave434.value(), 434)
    XCTAssertEqual(UtilityWave434.label(), "wave-434")
  }
}
