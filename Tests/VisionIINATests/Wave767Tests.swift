import XCTest
@testable import VisionIINA

final class Wave767Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave767.value(), 767)
    XCTAssertEqual(UtilityWave767.label(), "wave-767")
  }
}
