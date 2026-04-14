import XCTest
@testable import VisionIINA

final class Wave339Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave339.value(), 339)
    XCTAssertEqual(UtilityWave339.label(), "wave-339")
  }
}
