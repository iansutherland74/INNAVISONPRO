import XCTest
@testable import VisionIINA

final class Wave481Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave481.value(), 481)
    XCTAssertEqual(UtilityWave481.label(), "wave-481")
  }
}
