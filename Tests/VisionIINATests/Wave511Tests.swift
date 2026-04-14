import XCTest
@testable import VisionIINA

final class Wave511Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave511.value(), 511)
    XCTAssertEqual(UtilityWave511.label(), "wave-511")
  }
}
