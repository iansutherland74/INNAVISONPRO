import XCTest
@testable import VisionIINA

final class Wave458Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave458.value(), 458)
    XCTAssertEqual(UtilityWave458.label(), "wave-458")
  }
}
