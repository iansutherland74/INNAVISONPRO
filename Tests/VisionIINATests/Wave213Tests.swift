import XCTest
@testable import VisionIINA

final class Wave213Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave213.value(), 213)
    XCTAssertEqual(UtilityWave213.label(), "wave-213")
  }
}
