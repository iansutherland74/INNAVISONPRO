import XCTest
@testable import VisionIINA

final class Wave135Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave135.value(), 135)
    XCTAssertEqual(UtilityWave135.label(), "wave-135")
  }
}
