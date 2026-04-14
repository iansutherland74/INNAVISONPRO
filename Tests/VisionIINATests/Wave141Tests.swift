import XCTest
@testable import VisionIINA

final class Wave141Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave141.value(), 141)
    XCTAssertEqual(UtilityWave141.label(), "wave-141")
  }
}
