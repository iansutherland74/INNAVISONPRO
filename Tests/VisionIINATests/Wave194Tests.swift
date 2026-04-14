import XCTest
@testable import VisionIINA

final class Wave194Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave194.value(), 194)
    XCTAssertEqual(UtilityWave194.label(), "wave-194")
  }
}
