import XCTest
@testable import VisionIINA

final class Wave171Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave171.value(), 171)
    XCTAssertEqual(UtilityWave171.label(), "wave-171")
  }
}
