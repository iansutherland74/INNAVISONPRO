import XCTest
@testable import VisionIINA

final class Wave475Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave475.value(), 475)
    XCTAssertEqual(UtilityWave475.label(), "wave-475")
  }
}
