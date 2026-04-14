import XCTest
@testable import VisionIINA

final class Wave687Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave687.value(), 687)
    XCTAssertEqual(UtilityWave687.label(), "wave-687")
  }
}
