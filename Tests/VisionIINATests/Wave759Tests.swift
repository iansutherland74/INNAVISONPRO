import XCTest
@testable import VisionIINA

final class Wave759Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave759.value(), 759)
    XCTAssertEqual(UtilityWave759.label(), "wave-759")
  }
}
