import XCTest
@testable import VisionIINA

final class Wave707Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave707.value(), 707)
    XCTAssertEqual(UtilityWave707.label(), "wave-707")
  }
}
