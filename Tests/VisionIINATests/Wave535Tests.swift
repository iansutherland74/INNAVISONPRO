import XCTest
@testable import VisionIINA

final class Wave535Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave535.value(), 535)
    XCTAssertEqual(UtilityWave535.label(), "wave-535")
  }
}
