import XCTest
@testable import VisionIINA

final class Wave427Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave427.value(), 427)
    XCTAssertEqual(UtilityWave427.label(), "wave-427")
  }
}
