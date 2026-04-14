import XCTest
@testable import VisionIINA

final class Wave504Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave504.value(), 504)
    XCTAssertEqual(UtilityWave504.label(), "wave-504")
  }
}
