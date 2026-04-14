import XCTest
@testable import VisionIINA

final class Wave134Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave134.value(), 134)
    XCTAssertEqual(UtilityWave134.label(), "wave-134")
  }
}
