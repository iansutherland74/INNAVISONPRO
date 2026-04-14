import XCTest
@testable import VisionIINA

final class Wave601Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave601.value(), 601)
    XCTAssertEqual(UtilityWave601.label(), "wave-601")
  }
}
