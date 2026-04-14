import XCTest
@testable import VisionIINA

final class Wave231Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave231.value(), 231)
    XCTAssertEqual(UtilityWave231.label(), "wave-231")
  }
}
