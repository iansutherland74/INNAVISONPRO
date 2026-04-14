import XCTest
@testable import VisionIINA

final class Wave207Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave207.value(), 207)
    XCTAssertEqual(UtilityWave207.label(), "wave-207")
  }
}
