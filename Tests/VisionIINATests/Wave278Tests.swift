import XCTest
@testable import VisionIINA

final class Wave278Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave278.value(), 278)
    XCTAssertEqual(UtilityWave278.label(), "wave-278")
  }
}
