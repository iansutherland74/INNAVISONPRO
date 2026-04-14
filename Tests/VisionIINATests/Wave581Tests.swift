import XCTest
@testable import VisionIINA

final class Wave581Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave581.value(), 581)
    XCTAssertEqual(UtilityWave581.label(), "wave-581")
  }
}
