import XCTest
@testable import VisionIINA

final class Wave586Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave586.value(), 586)
    XCTAssertEqual(UtilityWave586.label(), "wave-586")
  }
}
