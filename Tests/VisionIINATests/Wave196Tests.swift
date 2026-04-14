import XCTest
@testable import VisionIINA

final class Wave196Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave196.value(), 196)
    XCTAssertEqual(UtilityWave196.label(), "wave-196")
  }
}
