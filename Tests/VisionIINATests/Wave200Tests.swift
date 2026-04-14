import XCTest
@testable import VisionIINA

final class Wave200Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave200.value(), 200)
    XCTAssertEqual(UtilityWave200.label(), "wave-200")
  }
}
