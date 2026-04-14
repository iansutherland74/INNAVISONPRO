import XCTest
@testable import VisionIINA

final class Wave771Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave771.value(), 771)
    XCTAssertEqual(UtilityWave771.label(), "wave-771")
  }
}
