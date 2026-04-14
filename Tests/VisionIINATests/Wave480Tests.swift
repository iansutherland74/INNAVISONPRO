import XCTest
@testable import VisionIINA

final class Wave480Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave480.value(), 480)
    XCTAssertEqual(UtilityWave480.label(), "wave-480")
  }
}
