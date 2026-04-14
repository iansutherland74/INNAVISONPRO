import XCTest
@testable import VisionIINA

final class Wave728Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave728.value(), 728)
    XCTAssertEqual(UtilityWave728.label(), "wave-728")
  }
}
