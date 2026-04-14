import XCTest
@testable import VisionIINA

final class Wave682Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave682.value(), 682)
    XCTAssertEqual(UtilityWave682.label(), "wave-682")
  }
}
