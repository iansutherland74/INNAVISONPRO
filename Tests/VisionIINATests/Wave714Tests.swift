import XCTest
@testable import VisionIINA

final class Wave714Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave714.value(), 714)
    XCTAssertEqual(UtilityWave714.label(), "wave-714")
  }
}
