import XCTest
@testable import VisionIINA

final class Wave776Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave776.value(), 776)
    XCTAssertEqual(UtilityWave776.label(), "wave-776")
  }
}
