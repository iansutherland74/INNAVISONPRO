import XCTest
@testable import VisionIINA

final class Wave243Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave243.value(), 243)
    XCTAssertEqual(UtilityWave243.label(), "wave-243")
  }
}
