import XCTest
@testable import VisionIINA

final class Wave128Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave128.value(), 128)
    XCTAssertEqual(UtilityWave128.label(), "wave-128")
  }
}
