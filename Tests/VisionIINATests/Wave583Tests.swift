import XCTest
@testable import VisionIINA

final class Wave583Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave583.value(), 583)
    XCTAssertEqual(UtilityWave583.label(), "wave-583")
  }
}
