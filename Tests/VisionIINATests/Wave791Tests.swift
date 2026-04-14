import XCTest
@testable import VisionIINA

final class Wave791Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave791.value(), 791)
    XCTAssertEqual(UtilityWave791.label(), "wave-791")
  }
}
