import XCTest
@testable import VisionIINA

final class Wave238Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave238.value(), 238)
    XCTAssertEqual(UtilityWave238.label(), "wave-238")
  }
}
