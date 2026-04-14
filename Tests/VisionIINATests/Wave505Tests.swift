import XCTest
@testable import VisionIINA

final class Wave505Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave505.value(), 505)
    XCTAssertEqual(UtilityWave505.label(), "wave-505")
  }
}
