import XCTest
@testable import VisionIINA

final class Wave499Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave499.value(), 499)
    XCTAssertEqual(UtilityWave499.label(), "wave-499")
  }
}
