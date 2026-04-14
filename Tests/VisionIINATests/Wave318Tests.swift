import XCTest
@testable import VisionIINA

final class Wave318Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave318.value(), 318)
    XCTAssertEqual(UtilityWave318.label(), "wave-318")
  }
}
