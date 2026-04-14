import XCTest
@testable import VisionIINA

final class Wave262Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave262.value(), 262)
    XCTAssertEqual(UtilityWave262.label(), "wave-262")
  }
}
