import XCTest
@testable import VisionIINA

final class Wave369Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave369.value(), 369)
    XCTAssertEqual(UtilityWave369.label(), "wave-369")
  }
}
