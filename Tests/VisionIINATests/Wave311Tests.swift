import XCTest
@testable import VisionIINA

final class Wave311Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave311.value(), 311)
    XCTAssertEqual(UtilityWave311.label(), "wave-311")
  }
}
