import XCTest
@testable import VisionIINA

final class Wave666Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave666.value(), 666)
    XCTAssertEqual(UtilityWave666.label(), "wave-666")
  }
}
