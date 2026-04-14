import XCTest
@testable import VisionIINA

final class Wave632Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave632.value(), 632)
    XCTAssertEqual(UtilityWave632.label(), "wave-632")
  }
}
