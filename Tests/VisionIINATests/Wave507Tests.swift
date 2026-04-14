import XCTest
@testable import VisionIINA

final class Wave507Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave507.value(), 507)
    XCTAssertEqual(UtilityWave507.label(), "wave-507")
  }
}
