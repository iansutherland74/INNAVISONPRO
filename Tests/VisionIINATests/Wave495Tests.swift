import XCTest
@testable import VisionIINA

final class Wave495Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave495.value(), 495)
    XCTAssertEqual(UtilityWave495.label(), "wave-495")
  }
}
