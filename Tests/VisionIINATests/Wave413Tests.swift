import XCTest
@testable import VisionIINA

final class Wave413Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave413.value(), 413)
    XCTAssertEqual(UtilityWave413.label(), "wave-413")
  }
}
