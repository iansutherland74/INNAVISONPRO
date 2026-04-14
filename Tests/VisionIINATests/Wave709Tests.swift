import XCTest
@testable import VisionIINA

final class Wave709Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave709.value(), 709)
    XCTAssertEqual(UtilityWave709.label(), "wave-709")
  }
}
