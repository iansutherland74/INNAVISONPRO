import XCTest
@testable import VisionIINA

final class Wave343Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave343.value(), 343)
    XCTAssertEqual(UtilityWave343.label(), "wave-343")
  }
}
