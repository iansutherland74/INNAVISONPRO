import XCTest
@testable import VisionIINA

final class Wave414Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave414.value(), 414)
    XCTAssertEqual(UtilityWave414.label(), "wave-414")
  }
}
