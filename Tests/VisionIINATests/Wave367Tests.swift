import XCTest
@testable import VisionIINA

final class Wave367Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave367.value(), 367)
    XCTAssertEqual(UtilityWave367.label(), "wave-367")
  }
}
