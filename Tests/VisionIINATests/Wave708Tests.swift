import XCTest
@testable import VisionIINA

final class Wave708Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave708.value(), 708)
    XCTAssertEqual(UtilityWave708.label(), "wave-708")
  }
}
