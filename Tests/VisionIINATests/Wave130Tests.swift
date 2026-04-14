import XCTest
@testable import VisionIINA

final class Wave130Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave130.value(), 130)
    XCTAssertEqual(UtilityWave130.label(), "wave-130")
  }
}
