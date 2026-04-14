import XCTest
@testable import VisionIINA

final class Wave356Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave356.value(), 356)
    XCTAssertEqual(UtilityWave356.label(), "wave-356")
  }
}
