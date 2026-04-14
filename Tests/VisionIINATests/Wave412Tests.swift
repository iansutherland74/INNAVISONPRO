import XCTest
@testable import VisionIINA

final class Wave412Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave412.value(), 412)
    XCTAssertEqual(UtilityWave412.label(), "wave-412")
  }
}
