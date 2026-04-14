import XCTest
@testable import VisionIINA

final class Wave713Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave713.value(), 713)
    XCTAssertEqual(UtilityWave713.label(), "wave-713")
  }
}
