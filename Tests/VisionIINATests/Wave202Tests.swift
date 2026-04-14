import XCTest
@testable import VisionIINA

final class Wave202Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave202.value(), 202)
    XCTAssertEqual(UtilityWave202.label(), "wave-202")
  }
}
