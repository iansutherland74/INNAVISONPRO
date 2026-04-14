import XCTest
@testable import VisionIINA

final class Wave740Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave740.value(), 740)
    XCTAssertEqual(UtilityWave740.label(), "wave-740")
  }
}
