import XCTest
@testable import VisionIINA

final class Wave509Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave509.value(), 509)
    XCTAssertEqual(UtilityWave509.label(), "wave-509")
  }
}
