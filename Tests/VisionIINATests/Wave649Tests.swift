import XCTest
@testable import VisionIINA

final class Wave649Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave649.value(), 649)
    XCTAssertEqual(UtilityWave649.label(), "wave-649")
  }
}
