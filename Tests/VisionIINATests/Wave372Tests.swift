import XCTest
@testable import VisionIINA

final class Wave372Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave372.value(), 372)
    XCTAssertEqual(UtilityWave372.label(), "wave-372")
  }
}
