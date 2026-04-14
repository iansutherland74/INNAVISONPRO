import XCTest
@testable import VisionIINA

final class Wave147Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave147.value(), 147)
    XCTAssertEqual(UtilityWave147.label(), "wave-147")
  }
}
