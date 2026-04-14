import XCTest
@testable import VisionIINA

final class Wave756Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave756.value(), 756)
    XCTAssertEqual(UtilityWave756.label(), "wave-756")
  }
}
