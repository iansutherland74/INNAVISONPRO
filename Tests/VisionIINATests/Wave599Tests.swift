import XCTest
@testable import VisionIINA

final class Wave599Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave599.value(), 599)
    XCTAssertEqual(UtilityWave599.label(), "wave-599")
  }
}
