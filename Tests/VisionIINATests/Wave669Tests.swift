import XCTest
@testable import VisionIINA

final class Wave669Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave669.value(), 669)
    XCTAssertEqual(UtilityWave669.label(), "wave-669")
  }
}
