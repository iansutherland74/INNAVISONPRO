import XCTest
@testable import VisionIINA

final class Wave662Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave662.value(), 662)
    XCTAssertEqual(UtilityWave662.label(), "wave-662")
  }
}
