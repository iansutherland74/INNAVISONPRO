import XCTest
@testable import VisionIINA

final class Wave452Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave452.value(), 452)
    XCTAssertEqual(UtilityWave452.label(), "wave-452")
  }
}
