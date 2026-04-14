import XCTest
@testable import VisionIINA

final class Wave397Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave397.value(), 397)
    XCTAssertEqual(UtilityWave397.label(), "wave-397")
  }
}
