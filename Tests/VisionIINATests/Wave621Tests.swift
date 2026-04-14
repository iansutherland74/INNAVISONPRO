import XCTest
@testable import VisionIINA

final class Wave621Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave621.value(), 621)
    XCTAssertEqual(UtilityWave621.label(), "wave-621")
  }
}
