import XCTest
@testable import VisionIINA

final class Wave272Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave272.value(), 272)
    XCTAssertEqual(UtilityWave272.label(), "wave-272")
  }
}
