import XCTest
@testable import VisionIINA

final class Wave477Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave477.value(), 477)
    XCTAssertEqual(UtilityWave477.label(), "wave-477")
  }
}
