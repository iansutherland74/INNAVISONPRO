import XCTest
@testable import VisionIINA

final class Wave300Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave300.value(), 300)
    XCTAssertEqual(UtilityWave300.label(), "wave-300")
  }
}
