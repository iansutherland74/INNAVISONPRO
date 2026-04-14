import XCTest
@testable import VisionIINA

final class Wave719Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave719.value(), 719)
    XCTAssertEqual(UtilityWave719.label(), "wave-719")
  }
}
