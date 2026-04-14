import XCTest
@testable import VisionIINA

final class Wave453Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave453.value(), 453)
    XCTAssertEqual(UtilityWave453.label(), "wave-453")
  }
}
