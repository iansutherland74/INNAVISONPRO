import XCTest
@testable import VisionIINA

final class Wave217Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave217.value(), 217)
    XCTAssertEqual(UtilityWave217.label(), "wave-217")
  }
}
