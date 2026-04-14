import XCTest
@testable import VisionIINA

final class Wave792Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave792.value(), 792)
    XCTAssertEqual(UtilityWave792.label(), "wave-792")
  }
}
