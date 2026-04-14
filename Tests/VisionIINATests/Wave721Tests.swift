import XCTest
@testable import VisionIINA

final class Wave721Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave721.value(), 721)
    XCTAssertEqual(UtilityWave721.label(), "wave-721")
  }
}
