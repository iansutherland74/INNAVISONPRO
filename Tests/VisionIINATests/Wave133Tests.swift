import XCTest
@testable import VisionIINA

final class Wave133Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave133.value(), 133)
    XCTAssertEqual(UtilityWave133.label(), "wave-133")
  }
}
