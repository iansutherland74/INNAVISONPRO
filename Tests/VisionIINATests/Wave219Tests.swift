import XCTest
@testable import VisionIINA

final class Wave219Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave219.value(), 219)
    XCTAssertEqual(UtilityWave219.label(), "wave-219")
  }
}
