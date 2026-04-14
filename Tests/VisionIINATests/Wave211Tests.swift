import XCTest
@testable import VisionIINA

final class Wave211Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave211.value(), 211)
    XCTAssertEqual(UtilityWave211.label(), "wave-211")
  }
}
