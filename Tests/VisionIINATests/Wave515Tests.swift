import XCTest
@testable import VisionIINA

final class Wave515Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave515.value(), 515)
    XCTAssertEqual(UtilityWave515.label(), "wave-515")
  }
}
