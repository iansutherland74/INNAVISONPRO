import XCTest
@testable import VisionIINA

final class Wave444Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave444.value(), 444)
    XCTAssertEqual(UtilityWave444.label(), "wave-444")
  }
}
