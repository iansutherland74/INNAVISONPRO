import XCTest
@testable import VisionIINA

final class Wave612Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave612.value(), 612)
    XCTAssertEqual(UtilityWave612.label(), "wave-612")
  }
}
