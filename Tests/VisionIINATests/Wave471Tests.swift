import XCTest
@testable import VisionIINA

final class Wave471Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave471.value(), 471)
    XCTAssertEqual(UtilityWave471.label(), "wave-471")
  }
}
