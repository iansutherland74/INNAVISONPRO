import XCTest
@testable import VisionIINA

final class Wave169Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave169.value(), 169)
    XCTAssertEqual(UtilityWave169.label(), "wave-169")
  }
}
