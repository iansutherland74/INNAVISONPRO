import XCTest
@testable import VisionIINA

final class Wave182Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave182.value(), 182)
    XCTAssertEqual(UtilityWave182.label(), "wave-182")
  }
}
