import XCTest
@testable import VisionIINA

final class Wave635Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave635.value(), 635)
    XCTAssertEqual(UtilityWave635.label(), "wave-635")
  }
}
