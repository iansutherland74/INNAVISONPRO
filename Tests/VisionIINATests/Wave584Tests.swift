import XCTest
@testable import VisionIINA

final class Wave584Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave584.value(), 584)
    XCTAssertEqual(UtilityWave584.label(), "wave-584")
  }
}
