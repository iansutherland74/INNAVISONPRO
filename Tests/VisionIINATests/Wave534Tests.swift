import XCTest
@testable import VisionIINA

final class Wave534Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave534.value(), 534)
    XCTAssertEqual(UtilityWave534.label(), "wave-534")
  }
}
