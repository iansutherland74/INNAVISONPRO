import XCTest
@testable import VisionIINA

final class Wave474Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave474.value(), 474)
    XCTAssertEqual(UtilityWave474.label(), "wave-474")
  }
}
