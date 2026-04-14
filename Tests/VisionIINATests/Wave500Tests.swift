import XCTest
@testable import VisionIINA

final class Wave500Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave500.value(), 500)
    XCTAssertEqual(UtilityWave500.label(), "wave-500")
  }
}
