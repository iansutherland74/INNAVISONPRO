import XCTest
@testable import VisionIINA

final class Wave750Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave750.value(), 750)
    XCTAssertEqual(UtilityWave750.label(), "wave-750")
  }
}
