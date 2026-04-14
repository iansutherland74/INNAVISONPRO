import XCTest
@testable import VisionIINA

final class Wave582Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave582.value(), 582)
    XCTAssertEqual(UtilityWave582.label(), "wave-582")
  }
}
