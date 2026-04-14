import XCTest
@testable import VisionIINA

final class Wave425Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave425.value(), 425)
    XCTAssertEqual(UtilityWave425.label(), "wave-425")
  }
}
