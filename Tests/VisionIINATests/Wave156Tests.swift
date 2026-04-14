import XCTest
@testable import VisionIINA

final class Wave156Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave156.value(), 156)
    XCTAssertEqual(UtilityWave156.label(), "wave-156")
  }
}
