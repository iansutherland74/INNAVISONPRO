import XCTest
@testable import VisionIINA

final class Wave395Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave395.value(), 395)
    XCTAssertEqual(UtilityWave395.label(), "wave-395")
  }
}
