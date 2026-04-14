import XCTest
@testable import VisionIINA

final class Wave615Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave615.value(), 615)
    XCTAssertEqual(UtilityWave615.label(), "wave-615")
  }
}
