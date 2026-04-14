import XCTest
@testable import VisionIINA

final class Wave775Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave775.value(), 775)
    XCTAssertEqual(UtilityWave775.label(), "wave-775")
  }
}
