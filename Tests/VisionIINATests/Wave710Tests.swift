import XCTest
@testable import VisionIINA

final class Wave710Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave710.value(), 710)
    XCTAssertEqual(UtilityWave710.label(), "wave-710")
  }
}
