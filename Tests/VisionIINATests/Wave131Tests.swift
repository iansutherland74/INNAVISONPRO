import XCTest
@testable import VisionIINA

final class Wave131Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave131.value(), 131)
    XCTAssertEqual(UtilityWave131.label(), "wave-131")
  }
}
