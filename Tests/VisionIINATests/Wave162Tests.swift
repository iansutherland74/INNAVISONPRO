import XCTest
@testable import VisionIINA

final class Wave162Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave162.value(), 162)
    XCTAssertEqual(UtilityWave162.label(), "wave-162")
  }
}
