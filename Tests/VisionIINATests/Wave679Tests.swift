import XCTest
@testable import VisionIINA

final class Wave679Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave679.value(), 679)
    XCTAssertEqual(UtilityWave679.label(), "wave-679")
  }
}
