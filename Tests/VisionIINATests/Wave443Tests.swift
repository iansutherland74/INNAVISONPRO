import XCTest
@testable import VisionIINA

final class Wave443Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave443.value(), 443)
    XCTAssertEqual(UtilityWave443.label(), "wave-443")
  }
}
