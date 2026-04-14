import XCTest
@testable import VisionIINA

final class Wave722Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave722.value(), 722)
    XCTAssertEqual(UtilityWave722.label(), "wave-722")
  }
}
