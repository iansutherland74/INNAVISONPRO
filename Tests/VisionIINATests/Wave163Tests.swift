import XCTest
@testable import VisionIINA

final class Wave163Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave163.value(), 163)
    XCTAssertEqual(UtilityWave163.label(), "wave-163")
  }
}
