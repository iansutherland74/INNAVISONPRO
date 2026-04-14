import XCTest
@testable import VisionIINA

final class Wave568Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave568.value(), 568)
    XCTAssertEqual(UtilityWave568.label(), "wave-568")
  }
}
