import XCTest
@testable import VisionIINA

final class Wave457Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave457.value(), 457)
    XCTAssertEqual(UtilityWave457.label(), "wave-457")
  }
}
