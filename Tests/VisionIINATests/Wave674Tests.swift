import XCTest
@testable import VisionIINA

final class Wave674Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave674.value(), 674)
    XCTAssertEqual(UtilityWave674.label(), "wave-674")
  }
}
