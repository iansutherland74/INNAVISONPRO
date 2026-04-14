import XCTest
@testable import VisionIINA

final class Wave542Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave542.value(), 542)
    XCTAssertEqual(UtilityWave542.label(), "wave-542")
  }
}
