import XCTest
@testable import VisionIINA

final class Wave636Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave636.value(), 636)
    XCTAssertEqual(UtilityWave636.label(), "wave-636")
  }
}
