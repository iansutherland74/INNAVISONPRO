import XCTest
@testable import VisionIINA

final class Wave403Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave403.value(), 403)
    XCTAssertEqual(UtilityWave403.label(), "wave-403")
  }
}
