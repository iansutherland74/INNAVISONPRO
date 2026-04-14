import XCTest
@testable import VisionIINA

final class Wave420Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave420.value(), 420)
    XCTAssertEqual(UtilityWave420.label(), "wave-420")
  }
}
