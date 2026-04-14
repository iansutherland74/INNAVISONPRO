import XCTest
@testable import VisionIINA

final class Wave342Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave342.value(), 342)
    XCTAssertEqual(UtilityWave342.label(), "wave-342")
  }
}
