import XCTest
@testable import VisionIINA

final class Wave690Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave690.value(), 690)
    XCTAssertEqual(UtilityWave690.label(), "wave-690")
  }
}
