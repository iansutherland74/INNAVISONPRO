import XCTest
@testable import VisionIINA

final class Wave496Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave496.value(), 496)
    XCTAssertEqual(UtilityWave496.label(), "wave-496")
  }
}
