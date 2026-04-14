import XCTest
@testable import VisionIINA

final class Wave379Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave379.value(), 379)
    XCTAssertEqual(UtilityWave379.label(), "wave-379")
  }
}
