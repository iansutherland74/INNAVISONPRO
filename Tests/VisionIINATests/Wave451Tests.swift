import XCTest
@testable import VisionIINA

final class Wave451Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave451.value(), 451)
    XCTAssertEqual(UtilityWave451.label(), "wave-451")
  }
}
