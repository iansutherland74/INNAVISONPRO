import XCTest
@testable import VisionIINA

final class Wave350Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave350.value(), 350)
    XCTAssertEqual(UtilityWave350.label(), "wave-350")
  }
}
