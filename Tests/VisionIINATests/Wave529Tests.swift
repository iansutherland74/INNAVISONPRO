import XCTest
@testable import VisionIINA

final class Wave529Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave529.value(), 529)
    XCTAssertEqual(UtilityWave529.label(), "wave-529")
  }
}
