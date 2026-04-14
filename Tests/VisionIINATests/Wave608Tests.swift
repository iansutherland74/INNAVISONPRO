import XCTest
@testable import VisionIINA

final class Wave608Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave608.value(), 608)
    XCTAssertEqual(UtilityWave608.label(), "wave-608")
  }
}
