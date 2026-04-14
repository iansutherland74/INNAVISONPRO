import XCTest
@testable import VisionIINA

final class Wave149Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave149.value(), 149)
    XCTAssertEqual(UtilityWave149.label(), "wave-149")
  }
}
