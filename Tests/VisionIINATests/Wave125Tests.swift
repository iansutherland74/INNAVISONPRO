import XCTest
@testable import VisionIINA

final class Wave125Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave125.value(), 125)
    XCTAssertEqual(UtilityWave125.label(), "wave-125")
  }
}
