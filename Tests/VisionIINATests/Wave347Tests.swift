import XCTest
@testable import VisionIINA

final class Wave347Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave347.value(), 347)
    XCTAssertEqual(UtilityWave347.label(), "wave-347")
  }
}
