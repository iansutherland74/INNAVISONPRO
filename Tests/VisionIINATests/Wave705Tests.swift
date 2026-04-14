import XCTest
@testable import VisionIINA

final class Wave705Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave705.value(), 705)
    XCTAssertEqual(UtilityWave705.label(), "wave-705")
  }
}
