import XCTest
@testable import VisionIINA

final class Wave185Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave185.value(), 185)
    XCTAssertEqual(UtilityWave185.label(), "wave-185")
  }
}
