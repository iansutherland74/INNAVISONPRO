import XCTest
@testable import VisionIINA

final class Wave244Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave244.value(), 244)
    XCTAssertEqual(UtilityWave244.label(), "wave-244")
  }
}
