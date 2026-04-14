import XCTest
@testable import VisionIINA

final class Wave214Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave214.value(), 214)
    XCTAssertEqual(UtilityWave214.label(), "wave-214")
  }
}
