import XCTest
@testable import VisionIINA

final class Wave670Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave670.value(), 670)
    XCTAssertEqual(UtilityWave670.label(), "wave-670")
  }
}
