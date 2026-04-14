import XCTest
@testable import VisionIINA

final class Wave752Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave752.value(), 752)
    XCTAssertEqual(UtilityWave752.label(), "wave-752")
  }
}
