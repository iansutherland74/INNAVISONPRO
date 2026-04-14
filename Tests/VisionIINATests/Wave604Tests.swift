import XCTest
@testable import VisionIINA

final class Wave604Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave604.value(), 604)
    XCTAssertEqual(UtilityWave604.label(), "wave-604")
  }
}
