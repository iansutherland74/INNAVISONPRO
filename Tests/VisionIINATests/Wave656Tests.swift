import XCTest
@testable import VisionIINA

final class Wave656Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave656.value(), 656)
    XCTAssertEqual(UtilityWave656.label(), "wave-656")
  }
}
