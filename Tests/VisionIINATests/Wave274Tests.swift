import XCTest
@testable import VisionIINA

final class Wave274Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave274.value(), 274)
    XCTAssertEqual(UtilityWave274.label(), "wave-274")
  }
}
