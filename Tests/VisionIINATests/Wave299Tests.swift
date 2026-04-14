import XCTest
@testable import VisionIINA

final class Wave299Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave299.value(), 299)
    XCTAssertEqual(UtilityWave299.label(), "wave-299")
  }
}
