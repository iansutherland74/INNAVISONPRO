import XCTest
@testable import VisionIINA

final class Wave385Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave385.value(), 385)
    XCTAssertEqual(UtilityWave385.label(), "wave-385")
  }
}
