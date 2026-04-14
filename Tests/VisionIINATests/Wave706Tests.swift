import XCTest
@testable import VisionIINA

final class Wave706Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave706.value(), 706)
    XCTAssertEqual(UtilityWave706.label(), "wave-706")
  }
}
