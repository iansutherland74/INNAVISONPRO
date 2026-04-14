import XCTest
@testable import VisionIINA

final class Wave647Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave647.value(), 647)
    XCTAssertEqual(UtilityWave647.label(), "wave-647")
  }
}
