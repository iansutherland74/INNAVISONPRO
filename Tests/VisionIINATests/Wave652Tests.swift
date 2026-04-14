import XCTest
@testable import VisionIINA

final class Wave652Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave652.value(), 652)
    XCTAssertEqual(UtilityWave652.label(), "wave-652")
  }
}
