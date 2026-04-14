import XCTest
@testable import VisionIINA

final class Wave715Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave715.value(), 715)
    XCTAssertEqual(UtilityWave715.label(), "wave-715")
  }
}
