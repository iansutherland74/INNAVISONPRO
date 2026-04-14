import XCTest
@testable import VisionIINA

final class Wave795Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave795.value(), 795)
    XCTAssertEqual(UtilityWave795.label(), "wave-795")
  }
}
