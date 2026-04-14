import XCTest
@testable import VisionIINA

final class Wave209Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave209.value(), 209)
    XCTAssertEqual(UtilityWave209.label(), "wave-209")
  }
}
