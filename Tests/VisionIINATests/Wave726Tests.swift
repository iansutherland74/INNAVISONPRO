import XCTest
@testable import VisionIINA

final class Wave726Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave726.value(), 726)
    XCTAssertEqual(UtilityWave726.label(), "wave-726")
  }
}
