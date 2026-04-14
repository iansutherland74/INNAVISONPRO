import XCTest
@testable import VisionIINA

final class Wave388Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave388.value(), 388)
    XCTAssertEqual(UtilityWave388.label(), "wave-388")
  }
}
